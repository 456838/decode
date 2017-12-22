.class Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask$1;
.super Ljava/lang/Object;
.source "CommandService.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/command/command/Command$IExecutionCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask$1;->this$1:Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutionComplete(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask$1;->this$1:Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;->this$0:Lcom/xiaomi/finddevice/v2/command/CommandService;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask$1;->this$1:Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;->-get0(Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/xiaomi/finddevice/v2/command/CommandService;->-wrap1(Lcom/xiaomi/finddevice/v2/command/CommandService;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 144
    return-void
.end method
