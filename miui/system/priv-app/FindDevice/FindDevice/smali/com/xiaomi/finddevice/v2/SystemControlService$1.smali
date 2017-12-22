.class Lcom/xiaomi/finddevice/v2/SystemControlService$1;
.super Landroid/os/Handler;
.source "SystemControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/SystemControlService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/SystemControlService;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/SystemControlService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/SystemControlService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/SystemControlService$1;->this$0:Lcom/xiaomi/finddevice/v2/SystemControlService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 85
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/SystemControlService$1;->this$0:Lcom/xiaomi/finddevice/v2/SystemControlService;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->-wrap0(Lcom/xiaomi/finddevice/v2/SystemControlService;)V

    .line 83
    return-void
.end method
