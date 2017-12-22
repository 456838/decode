.class Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask$2;
.super Ljava/lang/Object;
.source "CommandService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;->invokeOnBuildCommandFailedInMainThread(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;
    .param p2, "val$e"    # Ljava/lang/Exception;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask$2;->this$1:Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;

    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask$2;->this$1:Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;->this$0:Lcom/xiaomi/finddevice/v2/command/CommandService;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask$2;->this$1:Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;->-get0(Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask$2;->val$e:Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/command/CommandService;->-wrap0(Lcom/xiaomi/finddevice/v2/command/CommandService;Landroid/content/Intent;Ljava/lang/Exception;)V

    .line 154
    return-void
.end method
