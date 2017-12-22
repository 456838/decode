.class Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg$1;
.super Landroid/os/Handler;
.source "FindDeviceKeyguardPageMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg$1;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg$1;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->-wrap1(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;)V

    .line 55
    return-void
.end method
