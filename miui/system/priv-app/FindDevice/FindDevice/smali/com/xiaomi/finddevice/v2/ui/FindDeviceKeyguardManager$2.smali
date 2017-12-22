.class final Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$2;
.super Landroid/os/Handler;
.source "FindDeviceKeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->performSetDataInMainThread(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Landroid/os/Bundle;

.field final synthetic val$guard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/os/Looper;
    .param p2, "val$guard"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
    .param p3, "val$data"    # Landroid/os/Bundle;

    .prologue
    .line 184
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$2;->val$guard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    iput-object p3, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$2;->val$data:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$2;->val$guard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$2;->val$data:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->setData(Landroid/os/Bundle;)V

    .line 186
    return-void
.end method
