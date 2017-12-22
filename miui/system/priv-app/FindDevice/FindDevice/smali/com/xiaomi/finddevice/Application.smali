.class public Lcom/xiaomi/finddevice/Application;
.super Landroid/app/Application;
.source "Application.java"


# static fields
.field private static sInstance:Lcom/xiaomi/finddevice/Application;

.field private static sReadyLunch:Ljava/util/concurrent/CountDownLatch;


# instance fields
.field private mIsMainProcess:Z

.field private mProcessName:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/xiaomi/finddevice/Application;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/Application;->doInitTasks()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private doInitTasks()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 189
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 190
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->updateActivateInfo(Landroid/content/Context;I)V

    .line 191
    invoke-static {v3}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask;->doAll(Z)V

    .line 192
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->doAll()V

    .line 193
    invoke-static {}, Lcom/xiaomi/finddevice/v2/check/CheckTask;->doCheckLock()V

    .line 194
    invoke-static {}, Lcom/xiaomi/finddevice/v2/check/CheckTask;->doCheckTrack()V

    .line 195
    invoke-static {}, Lcom/xiaomi/finddevice/v2/check/CheckTask;->doCheckVerify()V

    .line 196
    invoke-static {}, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->get()Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->register(Landroid/content/Context;)V

    .line 197
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/FIDDebugOutputUpdateTask;->doAll()V

    .line 198
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/ReportLoginStateTask;->doAll()V

    .line 199
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/track/TrackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->doInitTasks()V

    .line 200
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->reshowAll(Landroid/content/Context;)V

    .line 188
    return-void
.end method

.method private fixStaticConnectivityChangeReceiverForPersistentApp()V
    .locals 3

    .prologue
    .line 243
    new-instance v0, Lcom/xiaomi/finddevice/v2/receiver/ConnectivityChangeReceiver;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/receiver/ConnectivityChangeReceiver;-><init>()V

    .line 244
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/finddevice/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    return-void
.end method

.method private initProcessInfo()V
    .locals 7

    .prologue
    .line 217
    const-string/jumbo v6, "activity"

    invoke-virtual {p0, v6}, Lcom/xiaomi/finddevice/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 218
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 219
    .local v5, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "mainProcessName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 221
    .local v4, "myPid":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 222
    .local v1, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v4, :cond_0

    .line 223
    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 224
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/xiaomi/finddevice/Application;->mIsMainProcess:Z

    .line 228
    :goto_0
    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v6, p0, Lcom/xiaomi/finddevice/Application;->mProcessName:Ljava/lang/String;

    .line 229
    return-void

    .line 226
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/xiaomi/finddevice/Application;->mIsMainProcess:Z

    goto :goto_0

    .line 216
    .end local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    return-void
.end method

.method private notifyIfCrashed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    const-string/jumbo v0, "started"

    .line 148
    const-string/jumbo v1, "com.xiaomi.finddevice.proc_started"

    invoke-static {v1}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->getRebootClearVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "Normal startup. "

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 150
    const-string/jumbo v0, "com.xiaomi.finddevice.proc_started"

    const-string/jumbo v1, "started"

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->setRebootClearVariable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    :goto_0
    return-void

    .line 152
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "Crashed and restarted. "

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 153
    invoke-static {p0}, Lmiui/cloud/finddevice/FindDeviceNotification;->notifyUserCrash(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private publishServices()V
    .locals 3

    .prologue
    .line 205
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 208
    :try_start_0
    const-string/jumbo v1, "miui.sedc"

    .line 209
    new-instance v2, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;

    invoke-direct {v2, p0}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "addService failed. "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private scheduleInitTask()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 166
    move-object v1, p0

    .line 167
    .local v1, "receiverContext":Landroid/content/Context;
    new-instance v0, Lcom/xiaomi/finddevice/Application$2;

    invoke-direct {v0, p0, p0}, Lcom/xiaomi/finddevice/Application$2;-><init>(Lcom/xiaomi/finddevice/Application;Landroid/content/Context;)V

    .line 177
    .local v0, "bootCompletedReceiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "sys.boot_completed"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Boot completed. doInitTasks(). "

    aput-object v3, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 181
    invoke-direct {p0}, Lcom/xiaomi/finddevice/Application;->doInitTasks()V

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    :goto_0
    return-void

    .line 184
    :cond_0
    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Boot not completed. Wait to doInitTasks(). "

    aput-object v3, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setupListeners()V
    .locals 4

    .prologue
    .line 158
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->getActivateStatusListener(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$ActivateStatusListener;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->addListener(Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$ActivateStatusListener;)V

    .line 159
    invoke-static {}, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->get()Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/RegIdUpdateTask;->getRedIdChangeListener()Lcom/xiaomi/finddevice/v2/push/PushRegisterManager$IRegIdChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->addRegIdChangeListener(Lcom/xiaomi/finddevice/v2/push/PushRegisterManager$IRegIdChangeListener;)V

    .line 160
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/DeviceTypeBasedFactory;->getDeviceCredentialManager(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;

    move-result-object v0

    .line 161
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/FIDDebugOutputUpdateTask;->getDeviceCredentialChangeListener()Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;

    move-result-object v1

    .line 162
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 160
    invoke-interface {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;->addOnChangeListener(Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;Landroid/os/Handler;)V

    .line 157
    return-void
.end method

.method private setupLogger()V
    .locals 8

    .prologue
    .line 114
    invoke-static {}, Lmiui/cloud/common/XLogger;->getLogSender()Lmiui/cloud/common/XLogger$LogSender;

    move-result-object v5

    .line 115
    .local v5, "parentLogSender":Lmiui/cloud/common/XLogger$LogSender;
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v0, :cond_0

    .line 116
    new-instance v5, Lcom/xiaomi/finddevice/Application$1;

    .end local v5    # "parentLogSender":Lmiui/cloud/common/XLogger$LogSender;
    invoke-direct {v5, p0}, Lcom/xiaomi/finddevice/Application$1;-><init>(Lcom/xiaomi/finddevice/Application;)V

    .line 124
    .restart local v5    # "parentLogSender":Lmiui/cloud/common/XLogger$LogSender;
    :cond_0
    const/4 v7, 0x0

    .line 125
    .local v7, "logSender":Lmiui/cloud/common/XLogger$LogSender;
    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v0, :cond_1

    .line 127
    invoke-static {v5}, Lcom/xiaomi/finddevice/common/log/EncryptLogSender;->getWithDefaultPublicKey(Lmiui/cloud/common/XLogger$LogSender;)Lcom/xiaomi/finddevice/common/log/EncryptLogSender;

    move-result-object v7

    .line 143
    .local v7, "logSender":Lmiui/cloud/common/XLogger$LogSender;
    :goto_0
    invoke-static {v7}, Lmiui/cloud/common/XLogger;->setLogSender(Lmiui/cloud/common/XLogger$LogSender;)V

    .line 113
    return-void

    .line 129
    .local v7, "logSender":Lmiui/cloud/common/XLogger$LogSender;
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "logFileName":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/Application;->mIsMainProcess:Z

    if-nez v0, :cond_2

    .line 131
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "process-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/finddevice/Application;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 135
    :cond_2
    new-instance v0, Lmiui/cloud/common/SwitchFileLogSender;

    .line 136
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "common/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    const/high16 v3, 0xa00000

    .line 139
    const/4 v4, 0x2

    .line 135
    invoke-direct/range {v0 .. v5}, Lmiui/cloud/common/SwitchFileLogSender;-><init>(Landroid/content/Context;Ljava/lang/String;IILmiui/cloud/common/XLogger$LogSender;)V

    .line 134
    invoke-static {v0}, Lcom/xiaomi/finddevice/common/log/EncryptLogSender;->getWithDefaultPublicKey(Lmiui/cloud/common/XLogger$LogSender;)Lcom/xiaomi/finddevice/common/log/EncryptLogSender;

    move-result-object v7

    .local v7, "logSender":Lmiui/cloud/common/XLogger$LogSender;
    goto :goto_0
.end method

.method public static waitReady()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 254
    sget-object v0, Lcom/xiaomi/finddevice/Application;->sReadyLunch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 253
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 4
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->isOwnerUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Not owner user, do nothing. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "UserId: "

    aput-object v1, v0, v3

    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 63
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/xiaomi/finddevice/Application;->sReadyLunch:Ljava/util/concurrent/CountDownLatch;

    .line 58
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 71
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 73
    sget-object v0, Lcom/xiaomi/finddevice/Application;->sInstance:Lcom/xiaomi/finddevice/Application;

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Application.onCreate() called multiple times"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    sput-object p0, Lcom/xiaomi/finddevice/Application;->sInstance:Lcom/xiaomi/finddevice/Application;

    .line 78
    invoke-direct {p0}, Lcom/xiaomi/finddevice/Application;->initProcessInfo()V

    .line 79
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/Application;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    .line 80
    invoke-direct {p0}, Lcom/xiaomi/finddevice/Application;->fixStaticConnectivityChangeReceiverForPersistentApp()V

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/finddevice/Application;->setupLogger()V

    .line 84
    new-instance v0, Lcom/xiaomi/finddevice/LocationMonitor;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/LocationMonitor;-><init>()V

    invoke-static {v0}, Landroid/location/MiuiLocationManagerProxy;->setInvokeMonitor(Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;)V

    .line 86
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->isOwnerUser()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Not owner user, do nothing. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "UserId: "

    aput-object v1, v0, v3

    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 88
    return-void

    .line 91
    :cond_2
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/Application;->mIsMainProcess:Z

    if-eqz v0, :cond_3

    .line 93
    invoke-direct {p0}, Lcom/xiaomi/finddevice/Application;->notifyIfCrashed()V

    .line 95
    new-instance v0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACJCEProvider;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACJCEProvider;-><init>()V

    invoke-static {v0, v3}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 97
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->attachContext(Landroid/content/Context;)V

    .line 98
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/Request;->init(Landroid/content/Context;)V

    .line 100
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->init(Landroid/content/Context;)V

    .line 102
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->init(Landroid/content/Context;)V

    .line 105
    invoke-direct {p0}, Lcom/xiaomi/finddevice/Application;->setupListeners()V

    .line 106
    invoke-direct {p0}, Lcom/xiaomi/finddevice/Application;->scheduleInitTask()V

    .line 107
    invoke-direct {p0}, Lcom/xiaomi/finddevice/Application;->publishServices()V

    .line 110
    :cond_3
    sget-object v0, Lcom/xiaomi/finddevice/Application;->sReadyLunch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 70
    return-void
.end method
