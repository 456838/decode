.class final Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$1;
.super Landroid/os/Handler;
.source "FindDeviceKeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->performShowDismissInMainThread(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$guard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Landroid/os/Looper;ZLcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/os/Looper;
    .param p2, "val$show"    # Z
    .param p3, "val$guard"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    .prologue
    .line 170
    iput-boolean p2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$1;->val$show:Z

    iput-object p3, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$1;->val$guard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$1;->val$show:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$1;->val$guard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->show()V

    .line 172
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$1;->val$guard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->dismiss()V

    goto :goto_0
.end method
