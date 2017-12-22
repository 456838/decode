.class public Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardControlReceiver;
.super Landroid/app/Service;
.source "FindDeviceKeyguardControlReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 21
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->ensureRunAsOwnerUser()V

    .line 22
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 20
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x0

    .line 35
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 37
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Receive intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 40
    const-string/jumbo v4, "miui.cloud.finddevice.keyguard.LOCK"

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    invoke-static {}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->getInstance()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    #invoke-virtual {v3, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->lock(Landroid/os/Bundle;)V

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->unlock()V

    .line 60
    :cond_0
    :goto_0
    #invoke-virtual {p0, p3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardControlReceiver;->stopSelf(I)V

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->unlock()V
    .line 62
    const/4 v3, 0x3

    return v3

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 43
    const-string/jumbo v4, "miui.cloud.finddevice.keyguard.UNLOCK"

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    invoke-static {}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->getInstance()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->unlock()V

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 46
    const-string/jumbo v4, "miui.cloud.finddevice.keyguard.SET_BACKOFF"

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    const-string/jumbo v3, "key_backoff"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 49
    .local v0, "backoff":Z
    invoke-static {}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->getInstance()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;

    move-result-object v3

    #invoke-virtual {v3, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->setBackoff(Z)V
    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->unlock()V
    goto :goto_0

    .line 50
    .end local v0    # "backoff":Z
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 51
    const-string/jumbo v4, "miui.cloud.finddevice.keygurad.NOTIFY"

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    const-string/jumbo v3, "key_notify_code"

    .line 52
    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 56
    .local v1, "code":I
    const-string/jumbo v3, "key_notify_extra"

    .line 55
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 57
    .local v2, "extra":Landroid/os/Bundle;
    invoke-static {}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->getInstance()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;

    move-result-object v3

    #invoke-virtual {v3, v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->notify(ILandroid/os/Bundle;)V

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->unlock()V
    goto :goto_0
.end method
