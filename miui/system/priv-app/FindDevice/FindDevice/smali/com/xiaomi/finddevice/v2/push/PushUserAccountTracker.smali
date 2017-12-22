.class public Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;
.super Ljava/lang/Object;
.source "PushUserAccountTracker.java"


# static fields
.field private static sAppContext:Landroid/content/Context;

.field private static sLastUsedAccount:Ljava/lang/String;

.field private static sMTServiceUnavailableMark:Z

.field private static sNetworkErrorMark:Z

.field private static sStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sTrackThread:Landroid/os/HandlerThread;

.field private static sTrackThreadHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sMTServiceUnavailableMark:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sNetworkErrorMark:Z

    return v0
.end method

.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->initTrack()V

    return-void
.end method

.method static synthetic -wrap1()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->updateUserAccount()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 154
    sput-object v0, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sLastUsedAccount:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initTrack()V
    .locals 6

    .prologue
    .line 55
    sget-object v3, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/finddevice/v2/DeviceTypeBasedFactory;->getDeviceCredentialManager(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;

    move-result-object v0

    .line 58
    .local v0, "deviceCredentialManager":Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;
    new-instance v3, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker$2;

    invoke-direct {v3}, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker$2;-><init>()V

    .line 64
    sget-object v4, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sTrackThreadHandler:Landroid/os/Handler;

    .line 57
    invoke-interface {v0, v3, v4}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;->addOnChangeListener(Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;Landroid/os/Handler;)V

    .line 66
    invoke-static {}, Lcom/xiaomi/finddevice/common/MTService;->get()Lcom/xiaomi/finddevice/common/MTService;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker$3;

    invoke-direct {v4}, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker$3;-><init>()V

    .line 77
    sget-object v5, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sTrackThreadHandler:Landroid/os/Handler;

    .line 66
    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/finddevice/common/MTService;->addOnServiceBecomeAvailableListener(Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;Landroid/os/Handler;)V

    .line 79
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    new-instance v2, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker$4;

    invoke-direct {v2}, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker$4;-><init>()V

    .line 97
    .local v2, "receiver":Landroid/content/BroadcastReceiver;
    sget-object v3, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sAppContext:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sTrackThreadHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 99
    invoke-static {}, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->updateUserAccount()V

    .line 52
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    sget-object v0, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can be started only once. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    const-string/jumbo v1, "appContext must be the application context. "

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "Start to track the user account. "

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 38
    sput-object p0, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sAppContext:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sTrackThread:Landroid/os/HandlerThread;

    .line 40
    sget-object v0, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sTrackThreadHandler:Landroid/os/Handler;

    .line 43
    sget-object v0, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sTrackThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker$1;

    invoke-direct {v1}, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    return-void
.end method

.method private static updateUserAccount()V
    .locals 16

    .prologue
    const/4 v15, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 105
    const/4 v9, 0x0

    .line 108
    .local v9, "newUserAccount":Ljava/lang/String;
    :try_start_0
    sget-object v10, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sAppContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/xiaomi/finddevice/v2/DeviceTypeBasedFactory;->getDeviceCredentialManager(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;

    move-result-object v1

    .line 109
    .local v1, "deviceCredentialManager":Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;
    sget-object v10, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sAppContext:Landroid/content/Context;

    invoke-interface {v1, v10}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    .local v0, "deviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    if-nez v0, :cond_0

    const/4 v9, 0x0

    .line 136
    .end local v9    # "newUserAccount":Ljava/lang/String;
    :goto_0
    sget-object v10, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sLastUsedAccount:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 137
    new-array v10, v14, [Ljava/lang/Object;

    const-string/jumbo v11, "Same account, ignore: "

    aput-object v11, v10, v13

    sget-object v11, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sLastUsedAccount:Ljava/lang/String;

    aput-object v11, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 138
    return-void

    .line 110
    .restart local v9    # "newUserAccount":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/xiaomi/finddevice/v2/IDeviceCredential;->getFId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .local v9, "newUserAccount":Ljava/lang/String;
    goto :goto_0

    .line 130
    .end local v0    # "deviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .end local v1    # "deviceCredentialManager":Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;
    .local v9, "newUserAccount":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    sput-boolean v12, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sMTServiceUnavailableMark:Z

    .line 132
    new-array v10, v14, [Ljava/lang/Object;

    const-string/jumbo v11, "Getting newUserAccount failed. "

    aput-object v11, v10, v13

    aput-object v2, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 133
    return-void

    .line 126
    .end local v2    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catch_1
    move-exception v7

    .line 127
    .local v7, "e":Ljava/io/IOException;
    sput-boolean v12, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sNetworkErrorMark:Z

    .line 128
    new-array v10, v14, [Ljava/lang/Object;

    const-string/jumbo v11, "Getting newUserAccount failed. "

    aput-object v11, v10, v13

    aput-object v7, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 129
    return-void

    .line 123
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 124
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    new-array v10, v14, [Ljava/lang/Object;

    const-string/jumbo v11, "Getting newUserAccount failed. "

    aput-object v11, v10, v13

    aput-object v4, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 125
    return-void

    .line 120
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_3
    move-exception v3

    .line 121
    .local v3, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    new-array v10, v14, [Ljava/lang/Object;

    const-string/jumbo v11, "Getting newUserAccount failed. "

    aput-object v11, v10, v13

    aput-object v3, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 122
    return-void

    .line 117
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_4
    move-exception v5

    .line 118
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    new-array v10, v14, [Ljava/lang/Object;

    const-string/jumbo v11, "Getting newUserAccount failed. "

    aput-object v11, v10, v13

    aput-object v5, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 119
    return-void

    .line 114
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_5
    move-exception v6

    .line 115
    .local v6, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    new-array v10, v14, [Ljava/lang/Object;

    const-string/jumbo v11, "Getting newUserAccount failed. "

    aput-object v11, v10, v13

    aput-object v6, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 116
    return-void

    .line 111
    .end local v6    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_6
    move-exception v8

    .line 112
    .local v8, "e":Ljava/lang/InterruptedException;
    new-array v10, v14, [Ljava/lang/Object;

    const-string/jumbo v11, "Getting newUserAccount failed. "

    aput-object v11, v10, v13

    aput-object v8, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 113
    return-void

    .line 141
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "newUserAccount":Ljava/lang/String;
    .restart local v0    # "deviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .restart local v1    # "deviceCredentialManager":Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;
    :cond_1
    sget-object v10, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sLastUsedAccount:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 142
    sget-object v10, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sAppContext:Landroid/content/Context;

    sget-object v11, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sLastUsedAccount:Ljava/lang/String;

    invoke-static {v10, v11, v15}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsetUserAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-array v10, v14, [Ljava/lang/Object;

    const-string/jumbo v11, "User account unset: "

    aput-object v11, v10, v13

    sget-object v11, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sLastUsedAccount:Ljava/lang/String;

    aput-object v11, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 145
    :cond_2
    sput-object v15, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sLastUsedAccount:Ljava/lang/String;

    .line 147
    sput-object v9, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sLastUsedAccount:Ljava/lang/String;

    .line 148
    sget-object v10, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sLastUsedAccount:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 149
    sget-object v10, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sAppContext:Landroid/content/Context;

    sget-object v11, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sLastUsedAccount:Ljava/lang/String;

    invoke-static {v10, v11, v15}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setUserAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-array v10, v14, [Ljava/lang/Object;

    const-string/jumbo v11, "User account set: "

    aput-object v11, v10, v13

    sget-object v11, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->sLastUsedAccount:Ljava/lang/String;

    aput-object v11, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 103
    :cond_3
    return-void
.end method
