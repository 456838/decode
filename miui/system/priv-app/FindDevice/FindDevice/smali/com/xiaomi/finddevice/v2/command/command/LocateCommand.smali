.class public Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;
.super Lcom/xiaomi/finddevice/v2/command/command/Command;
.source "LocateCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;,
        Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;,
        Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$PhoneNetworkReportOption;,
        Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;
    }
.end annotation


# instance fields
.field private mExecutionStopper:Ljava/lang/Runnable;

.field private mLocationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStopLock:Ljava/lang/Object;

.field private mStopped:Z


# direct methods
.method static synthetic -get0(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mLocationListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->endGettingLocation()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->stopGettingLocation(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "skey"    # Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/command/command/Command;-><init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)V

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mLocationListeners:Ljava/util/ArrayList;

    .line 422
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mStopLock:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method private endGettingLocation()V
    .locals 6

    .prologue
    .line 175
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mStopLock:Ljava/lang/Object;

    monitor-enter v3

    .line 177
    const/4 v4, 0x0

    :try_start_0
    iput-object v4, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mExecutionStopper:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 181
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 183
    .local v2, "locationManager":Landroid/location/LocationManager;
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mLocationListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;

    .line 184
    .local v0, "listener":Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 185
    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;->destroy()V

    goto :goto_0

    .line 175
    .end local v0    # "listener":Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    .end local v2    # "locationManager":Landroid/location/LocationManager;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 187
    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    .restart local v2    # "locationManager":Landroid/location/LocationManager;
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 189
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->finishExecution()V

    .line 190
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 192
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->seq:J

    invoke-static {v3, v4, v5}, Lcom/xiaomi/finddevice/v2/SystemControlService;->notifyEndLocating(Landroid/content/Context;J)V

    .line 173
    return-void
.end method

.method private startToGetAndReportLocation()V
    .locals 6

    .prologue
    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 112
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 114
    .local v1, "looper":Landroid/os/Looper;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$1;

    invoke-direct {v3, p0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$1;-><init>(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$2;

    invoke-direct {v3, p0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$2;-><init>(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;)V

    .line 150
    const-wide/32 v4, 0x1d4c0

    .line 144
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mStopLock:Ljava/lang/Object;

    monitor-enter v3

    .line 153
    :try_start_0
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$3;

    invoke-direct {v2, p0, v1}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$3;-><init>(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mExecutionStopper:Ljava/lang/Runnable;

    .line 166
    iget-boolean v2, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mStopped:Z

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mExecutionStopper:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 168
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mExecutionStopper:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 106
    return-void

    .line 152
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private stopGettingLocation(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 200
    .local v0, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 201
    invoke-virtual {p1}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;->destroy()V

    .line 203
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "No listener alive, end. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 206
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->endGettingLocation()V

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method protected onExecute()Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;
    .locals 6

    .prologue
    .line 43
    invoke-super {p0}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onExecute()Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    .line 45
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->seq:J

    invoke-static {v3, v4, v5}, Lcom/xiaomi/finddevice/v2/SystemControlService;->notifyStartLocating(Landroid/content/Context;J)V

    .line 48
    :try_start_0
    invoke-static {}, Lmiui/telephony/CloudTelephonyManager;->getMultiSimCount()I

    move-result v2

    .line 49
    .local v2, "simCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 50
    new-instance v3, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$PhoneNetworkReportOption;

    invoke-direct {v3, v1}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$PhoneNetworkReportOption;-><init>(I)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->reply(Ljava/lang/Object;)Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "i":I
    .end local v2    # "simCount":I
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Report phone network info failed. "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 56
    .end local v0    # "e":Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->startToGetAndReportLocation()V

    .line 58
    sget-object v3, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;->CONTINUE:Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    return-object v3
.end method

.method protected onGetBinaryName()S
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetBinaryReplyContent(Ljava/lang/Object;)[B
    .locals 2
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    move-object v0, p1

    .line 82
    check-cast v0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;

    .line 83
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onGetBinaryReplyContent(Ljava/lang/Object;)[B

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;->getBinaryReplyContent([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected onGetBinaryReplyType(Ljava/lang/Object;)B
    .locals 1
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    .line 93
    check-cast p1, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;

    .end local p1    # "args":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;->getBinaryReplyType()B

    move-result v0

    return v0
.end method

.method protected onGetJSONReplyContent(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;

    .line 77
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onGetJSONReplyContent(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;->getJSONReplyContent(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected onGetStringName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string/jumbo v0, "location"

    return-object v0
.end method

.method protected onGetStringReplyType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    .line 88
    check-cast p1, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;

    .end local p1    # "args":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;->getStringReplyType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onStop()V

    .line 65
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mStopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mStopped:Z

    .line 67
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mExecutionStopper:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mExecutionStopper:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->mExecutionStopper:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 62
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
