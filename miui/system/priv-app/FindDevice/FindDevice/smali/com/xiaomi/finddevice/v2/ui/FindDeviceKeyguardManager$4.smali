.class final Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$4;
.super Landroid/os/Handler;
.source "FindDeviceKeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->performNotifyInMainThread(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$code:I

.field final synthetic val$extra:Landroid/os/Bundle;

.field final synthetic val$guard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/os/Looper;
    .param p2, "val$guard"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
    .param p3, "val$code"    # I
    .param p4, "val$extra"    # Landroid/os/Bundle;

    .prologue
    .line 204
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$4;->val$guard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    iput p3, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$4;->val$code:I

    iput-object p4, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$4;->val$extra:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "unused"    # Landroid/os/Message;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$4;->val$guard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    iget v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$4;->val$code:I

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$4;->val$extra:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->notify(ILandroid/os/Bundle;)V

    .line 206
    return-void
.end method
