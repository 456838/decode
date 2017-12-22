.class public Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;
.super Ljava/lang/Object;
.source "PhoneInfoUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;,
        Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$FindDeviceActivateStatusListener;,
        Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;
    }
.end annotation


# static fields
.field private static sLastNetworkReadyTime:J

.field private static sNetworkPendingActivation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->isFindDeviceOpen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(IIJ)V
    .locals 0
    .param p0, "simIndex"    # I
    .param p1, "activateMethod"    # I
    .param p2, "failureTime"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->retryActivationWhenNetworkReady(IIJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->sLastNetworkReadyTime:J

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    sput-object v0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->sNetworkPendingActivation:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAll()V
    .locals 4

    .prologue
    .line 56
    const-string/jumbo v1, "PhoneInfoUpdateTaskTaskManager"

    invoke-static {v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    .line 57
    .local v0, "tm":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
    new-instance v1, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;-><init>(II)V

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->asTask()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 58
    new-instance v1, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;-><init>(Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;)V

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;->asTask()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 55
    return-void
.end method

.method public static getActivateStatusListener(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$ActivateStatusListener;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 48
    new-instance v0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$FindDeviceActivateStatusListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$FindDeviceActivateStatusListener;-><init>(Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$FindDeviceActivateStatusListener;)V

    return-object v0
.end method

.method public static invalidateCache()V
    .locals 0

    .prologue
    .line 52
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;->invalidateCache()V

    .line 51
    return-void
.end method

.method private static isFindDeviceOpen(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 485
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpen()Z

    move-result v0

    return v0
.end method

.method public static notifyCloudIdChanged()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "NOTIFICATION called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 63
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->doAll()V

    .line 61
    return-void
.end method

.method public static notifySimIdReady()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "NOTIFICATION called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 67
    const-string/jumbo v0, "PhoneInfoUpdateTaskTaskManager"

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;-><init>(Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;)V

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;->asTask()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 65
    return-void
.end method

.method public static notifySimRemoved()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "NOTIFICATION called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 72
    const-string/jumbo v0, "PhoneInfoUpdateTaskTaskManager"

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;-><init>(Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;)V

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;->asTask()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 70
    return-void
.end method

.method public static onConnectivityChange()V
    .locals 8

    .prologue
    .line 80
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/net/ConnectivityHelper;->isNetworkConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Not connected. "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 82
    return-void

    .line 85
    :cond_0
    sget-object v4, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->sNetworkPendingActivation:Ljava/util/ArrayList;

    monitor-enter v4

    .line 86
    :try_start_0
    const-string/jumbo v3, "PhoneInfoUpdateTaskTaskManager"

    invoke-static {v3}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v2

    .line 87
    .local v2, "tm":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
    sget-object v3, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->sNetworkPendingActivation:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;

    .line 88
    .local v0, "p":Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;
    new-instance v3, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;

    invoke-direct {v3, v0}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;-><init>(Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;)V

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->asTask()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    .end local v0    # "p":Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 90
    .restart local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v3, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->sNetworkPendingActivation:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->sLastNetworkReadyTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 79
    return-void
.end method

.method private static retryActivationWhenNetworkReady(IIJ)V
    .locals 8
    .param p0, "simIndex"    # I
    .param p1, "activateMethod"    # I
    .param p2, "failureTime"    # J

    .prologue
    .line 98
    sget-object v2, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->sNetworkPendingActivation:Ljava/util/ArrayList;

    monitor-enter v2

    .line 99
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Failure time: %s, sLastNetworkReadyTime: %s. "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 100
    invoke-static {p2, p3}, Lcom/xiaomi/finddevice/common/util/TimeUtil;->getDebugTimeSting(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 101
    sget-wide v6, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->sLastNetworkReadyTime:J

    invoke-static {v6, v7}, Lcom/xiaomi/finddevice/common/util/TimeUtil;->getDebugTimeSting(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 99
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 104
    new-instance v0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;-><init>(II)V

    .line 106
    .local v0, "p":Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;
    sget-wide v4, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->sLastNetworkReadyTime:J

    cmp-long v1, p2, v4

    if-gez v1, :cond_0

    sget-wide v4, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->sLastNetworkReadyTime:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 107
    const-string/jumbo v1, "PhoneInfoUpdateTaskTaskManager"

    invoke-static {v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v1

    .line 108
    new-instance v3, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;

    invoke-direct {v3, v0}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;-><init>(Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;)V

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->asTask()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v3

    .line 107
    invoke-virtual {v1, v3}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 96
    return-void

    .line 109
    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->sNetworkPendingActivation:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Add a pending activation: %s. "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 111
    sget-object v1, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->sNetworkPendingActivation:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    .end local v0    # "p":Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 113
    .restart local v0    # "p":Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Already a pending one: %s. "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
