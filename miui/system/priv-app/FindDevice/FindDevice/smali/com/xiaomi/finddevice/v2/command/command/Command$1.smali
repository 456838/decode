.class Lcom/xiaomi/finddevice/v2/command/command/Command$1;
.super Ljava/lang/Object;
.source "Command.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/command/command/Command;->finishExecution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/command/command/Command;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/command/command/Command;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/command/command/Command;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/command/Command$1;->this$0:Lcom/xiaomi/finddevice/v2/command/command/Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/Command$1;->this$0:Lcom/xiaomi/finddevice/v2/command/command/Command;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/command/command/Command;->-get2(Lcom/xiaomi/finddevice/v2/command/command/Command;)Lcom/xiaomi/finddevice/v2/command/command/Command$IExecutionCompleteHandler;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/command/Command$1;->this$0:Lcom/xiaomi/finddevice/v2/command/command/Command;

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/command/command/Command;->-get0(Lcom/xiaomi/finddevice/v2/command/command/Command;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/command/command/Command$1;->this$0:Lcom/xiaomi/finddevice/v2/command/command/Command;

    invoke-static {v2}, Lcom/xiaomi/finddevice/v2/command/command/Command;->-get1(Lcom/xiaomi/finddevice/v2/command/command/Command;)Landroid/os/Bundle;

    move-result-object v2

    .line 152
    invoke-interface {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/command/command/Command$IExecutionCompleteHandler;->onExecutionComplete(ILandroid/os/Bundle;)V

    .line 151
    return-void
.end method
