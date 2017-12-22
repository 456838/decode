.class public Lcom/xiaomi/finddevice/v2/FindDeviceAsyncControlService;
.super Landroid/app/IntentService;
.source "FindDeviceAsyncControlService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "FindDeviceAsyncControlService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private handleClose()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 57
    new-array v8, v10, [Ljava/lang/Object;

    const-string/jumbo v9, "called. "

    aput-object v9, v8, v11

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 59
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, p0, v9}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->close(Landroid/content/Context;Z)V
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v0, v8, v11

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    .end local v0    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catch_1
    move-exception v6

    .line 73
    .local v6, "e":Ljava/io/IOException;
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 71
    .local v2, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v11

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    .end local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_3
    move-exception v1

    .line 69
    .local v1, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v1, v8, v11

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    .end local v1    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_4
    move-exception v3

    .line 67
    .local v3, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v3, v8, v11

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_5
    move-exception v4

    .line 65
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v4, v8, v11

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_6
    move-exception v7

    .line 63
    .local v7, "e":Ljava/lang/InterruptedException;
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v7, v8, v11

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catch_7
    move-exception v5

    .line 61
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v5, v8, v11

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleOpen()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 80
    new-array v9, v11, [Ljava/lang/Object;

    const-string/jumbo v10, "called. "

    aput-object v10, v9, v13

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 82
    const/4 v8, 0x0

    .line 85
    .local v8, "success":Z
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, p0, v10}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->open(Landroid/content/Context;Z)V
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    const/4 v8, 0x1

    .line 105
    :goto_0
    if-nez v8, :cond_0

    .line 108
    new-instance v9, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;

    .line 110
    const v10, 0x7f070049

    invoke-virtual {p0, v10}, Lcom/xiaomi/finddevice/v2/FindDeviceAsyncControlService;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 111
    const v11, 0x7f07004a

    invoke-virtual {p0, v11}, Lcom/xiaomi/finddevice/v2/FindDeviceAsyncControlService;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 109
    const/16 v12, 0x30

    .line 108
    invoke-direct {v9, v12, v10, v11, v13}, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 106
    invoke-static {p0, v9}, Lmiui/cloud/finddevice/FindDeviceSysNotification;->show(Landroid/content/Context;Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;)V

    .line 79
    :cond_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    new-array v9, v11, [Ljava/lang/Object;

    aput-object v0, v9, v13

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    .end local v0    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catch_1
    move-exception v6

    .line 100
    .local v6, "e":Ljava/io/IOException;
    new-array v9, v11, [Ljava/lang/Object;

    aput-object v6, v9, v13

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 98
    .local v2, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    new-array v9, v11, [Ljava/lang/Object;

    aput-object v2, v9, v13

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    .end local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_3
    move-exception v1

    .line 96
    .local v1, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v13

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    .end local v1    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_4
    move-exception v3

    .line 94
    .local v3, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    new-array v9, v11, [Ljava/lang/Object;

    aput-object v3, v9, v13

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_5
    move-exception v4

    .line 92
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    new-array v9, v11, [Ljava/lang/Object;

    aput-object v4, v9, v13

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_6
    move-exception v7

    .line 90
    .local v7, "e":Ljava/lang/InterruptedException;
    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v13

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catch_7
    move-exception v5

    .line 88
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    new-array v9, v11, [Ljava/lang/Object;

    aput-object v5, v9, v13

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->ensureRunAsOwnerUser()V

    .line 33
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 31
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 38
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Start processing intent. "

    aput-object v3, v2, v6

    aput-object p1, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 40
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceAsyncControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 42
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceAsyncControlService;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v0, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 43
    .local v1, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 45
    :try_start_0
    const-string/jumbo v2, "com.xiaomi.finddevice.async.open"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceAsyncControlService;->handleOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 52
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Finish processing intent. "

    aput-object v3, v2, v6

    aput-object p1, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 37
    return-void

    .line 47
    :cond_1
    :try_start_1
    const-string/jumbo v2, "com.xiaomi.finddevice.async.close"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceAsyncControlService;->handleClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v2

    .line 51
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 52
    new-array v3, v4, [Ljava/lang/Object;

    const-string/jumbo v4, "Finish processing intent. "

    aput-object v4, v3, v6

    aput-object p1, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 50
    throw v2
.end method
