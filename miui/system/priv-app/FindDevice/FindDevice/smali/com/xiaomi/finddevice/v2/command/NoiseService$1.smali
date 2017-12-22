.class Lcom/xiaomi/finddevice/v2/command/NoiseService$1;
.super Landroid/os/Handler;
.source "NoiseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/command/NoiseService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/command/NoiseService;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/command/NoiseService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/command/NoiseService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService$1;->this$0:Lcom/xiaomi/finddevice/v2/command/NoiseService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService$1;->this$0:Lcom/xiaomi/finddevice/v2/command/NoiseService;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->-wrap0(Lcom/xiaomi/finddevice/v2/command/NoiseService;)V

    .line 68
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService$1;->this$0:Lcom/xiaomi/finddevice/v2/command/NoiseService;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->-get0(Lcom/xiaomi/finddevice/v2/command/NoiseService;)Landroid/os/Handler;

    move-result-object v0

    .line 69
    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    .line 68
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 66
    return-void
.end method
