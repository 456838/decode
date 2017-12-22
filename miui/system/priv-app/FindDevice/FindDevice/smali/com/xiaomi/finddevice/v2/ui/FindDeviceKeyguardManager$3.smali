.class final Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$3;
.super Landroid/os/Handler;
.source "FindDeviceKeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->performSetVisibilityInMainThread(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$guard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Z)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/os/Looper;
    .param p2, "val$guard"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
    .param p3, "val$visible"    # Z

    .prologue
    .line 194
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$3;->val$guard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    iput-boolean p3, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$3;->val$visible:Z

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$3;->val$guard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    iget-boolean v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$3;->val$visible:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->setVisible(Z)V

    .line 196
    return-void
.end method
