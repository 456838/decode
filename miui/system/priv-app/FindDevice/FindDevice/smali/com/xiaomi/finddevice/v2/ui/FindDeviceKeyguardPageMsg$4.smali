.class Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg$4;
.super Landroid/content/BroadcastReceiver;
.source "FindDeviceKeyguardPageMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->registerAccountChangedReceiver()V
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
    .line 201
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg$4;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg$4;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->-wrap3(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;)V

    .line 203
    return-void
.end method
