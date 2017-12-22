.class Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$2;
.super Landroid/content/BroadcastReceiver;
.source "FindDeviceKeyguard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->listenScreenOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$2;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$2;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->-wrap0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;)V

    .line 264
    return-void
.end method
