.class public Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;
.super Landroid/app/Service;
.source "FindDeviceNotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyUserCloseFailure(Ljava/lang/String;)V
    .locals 5
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 98
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    return-void
.end method

.method public notifyUserCloseSuccess()V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    const/4 v2, 0x1

    .line 92
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    return-void
.end method

.method public notifyUserCrash()V
    .locals 3
#
#    .prologue
#    .line 104
#    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->getApplicationContext()Landroid/content/Context;
#
#    move-result-object v0
#
#    .line 105
#    const v1, 0x7f07000d
#
#    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->getString(I)Ljava/lang/String;
#
#    move-result-object v1
#
#    .line 106
#    const/4 v2, 0x1
#
#    .line 104
#    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
#
#    move-result-object v0
#
#    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
#
#    .line 103
    return-void
.end method

.method public notifyUserOpenFailure(Ljava/lang/String;)V
#    .locals 5
#    .param p1, "cause"    # Ljava/lang/String;
#
#    .prologue
#    const/4 v4, 0x1
#
#    .line 86
#    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->getApplicationContext()Landroid/content/Context;
#
#    move-result-object v0
#
#    .line 87
#    const v1, 0x7f070004
#
#    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->getString(I)Ljava/lang/String;
#
#    move-result-object v1
#
#    new-array v2, v4, [Ljava/lang/Object;
#
#    const/4 v3, 0x0
#
#    aput-object p1, v2, v3
#
#    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
#
#    move-result-object v1
#
#    .line 86
#    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
#
#    move-result-object v0
#
#    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
#
#    .line 85
#    return-void

    .locals 5

    .prologue
    .line 71
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    .line 73
    const-string/jumbo v3, "com.xiaomi.finddevice"

    .line 74
    const-string/jumbo v4, "com.xiaomi.finddevice.v2.ui.FindDeviceSuccessActivity"

    .line 72
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 75
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/util/AndroidRuntimeException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

.end method

.method public notifyUserOpenSuccess()V
    .locals 5

    .prologue
    .line 71
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    .line 73
    const-string/jumbo v3, "com.xiaomi.finddevice"

    .line 74
    const-string/jumbo v4, "com.xiaomi.finddevice.v2.ui.FindDeviceSuccessActivity"

    .line 72
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 75
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/util/AndroidRuntimeException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public notifyUserStorageCorrupted()V
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    const v1, 0x7f07000e

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    const/4 v2, 0x1

    .line 110
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    return-void
.end method

.method public notifyUserTelephonyFault(Ljava/lang/String;)V
    .locals 5
    .param p1, "detail"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    const v1, 0x7f07000f

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    return-void
.end method

.method public notifyUserTimeCorrectionFailure(Ljava/lang/String;)V
    .locals 5
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 122
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 121
    return-void
.end method

.method public notifyUserTimeCorrectionSuccess()V
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    const/4 v2, 0x1

    .line 116
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 115
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 19
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->ensureRunAsOwnerUser()V

    .line 20
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 18
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string/jumbo v1, "miui.cloud.finddevice.notification.OPEN_SUCCESS"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->notifyUserOpenSuccess()V

    .line 28
    invoke-virtual {p0, p3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->stopSelfResult(I)Z

    .line 62
    :cond_0
    :goto_0
    const/4 v0, 0x3

    return v0

    .line 29
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "miui.cloud.finddevice.notification.OPEN_FAILURE"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    const-string/jumbo v0, "cause"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->notifyUserOpenFailure(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->stopSelfResult(I)Z

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string/jumbo v1, "miui.cloud.finddevice.notification.CLOSE_SUCCESS"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->notifyUserCloseSuccess()V

    .line 36
    invoke-virtual {p0, p3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->stopSelfResult(I)Z

    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string/jumbo v1, "miui.cloud.finddevice.notification.CLOSE_FAILURE"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39
    const-string/jumbo v0, "cause"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->notifyUserCloseFailure(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->stopSelfResult(I)Z

    goto :goto_0

    .line 41
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string/jumbo v1, "miui.cloud.finddevice.notification.CRASH"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->notifyUserCrash()V

    .line 44
    invoke-virtual {p0, p3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->stopSelfResult(I)Z

    goto :goto_0

    .line 45
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string/jumbo v1, "miui.cloud.finddevice.notification.STORAGE_CORRUPTED"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->notifyUserStorageCorrupted()V

    .line 48
    invoke-virtual {p0, p3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->stopSelfResult(I)Z

    goto :goto_0

    .line 49
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "miui.cloud.finddevice.notification.TIME_CORRECTION_SUCCESS"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->notifyUserTimeCorrectionSuccess()V

    .line 52
    invoke-virtual {p0, p3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->stopSelfResult(I)Z

    goto/16 :goto_0

    .line 53
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "miui.cloud.finddevice.notification.TIME_CORRECTION_FAILURE"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 55
    const-string/jumbo v0, "cause"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->notifyUserTimeCorrectionFailure(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->stopSelfResult(I)Z

    goto/16 :goto_0

    .line 57
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "miui.cloud.finddevice.notification.TELEPHONY_FAULT"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string/jumbo v0, "detail"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->notifyUserTelephonyFault(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceNotificationReceiver;->stopSelfResult(I)Z

    goto/16 :goto_0
.end method
