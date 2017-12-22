.class public Lcom/xiaomi/finddevice/v2/track/task/LocateTask;
.super Ljava/lang/Object;
.source "LocateTask.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;


# static fields
.field private static singleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->buildSingleTaskController()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    move-result-object v0

    .line 21
    sput-object v0, Lcom/xiaomi/finddevice/v2/track/task/LocateTask;->singleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    .locals 2

    .prologue
    .line 28
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/v2/track/task/LocateTask;->build(J)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    return-object v0
.end method

.method public static build(J)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 25
    new-instance v0, Lcom/xiaomi/finddevice/v2/track/task/LocateTask;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/track/task/LocateTask;-><init>()V

    sget-object v1, Lcom/xiaomi/finddevice/v2/track/task/LocateTask;->singleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    const/4 v2, 0x1

    invoke-static {p0, p1, v2, v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run(Landroid/content/Context;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$ProvisionInProcessException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/track/TrackManager;

    move-result-object v3

    .line 40
    .local v3, "trackManager":Lcom/xiaomi/finddevice/v2/track/TrackManager;
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "@ Build locator. "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->buildLocator(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/track/Locator;

    move-result-object v2

    .line 42
    .local v2, "locator":Lcom/xiaomi/finddevice/v2/track/Locator;
    if-nez v2, :cond_0

    .line 43
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "session ends. "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->scheduleNextLocate()Z

    .line 44
    return-void

    .line 47
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "@ Locate. "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :try_start_2
    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/track/Locator;->locate()[Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 56
    .local v1, "locationRecords":[Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "@ Save location records. "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 57
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "records: %s. "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v3, p1, v1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->addRecords(Landroid/content/Context;[Lcom/xiaomi/finddevice/v2/track/LocationRecord;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 59
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "session ends. "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->scheduleNextLocate()Z

    .line 60
    return-void

    .line 51
    .end local v1    # "locationRecords":[Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x2

    :try_start_4
    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "Interrupted"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->scheduleNextLocate()Z

    .line 53
    return-void

    .line 63
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "locationRecords":[Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    :cond_1
    const/4 v4, 0x1

    :try_start_5
    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "@ Succeed. "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 66
    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->scheduleNextLocate()Z

    .line 35
    return-void

    .line 65
    .end local v1    # "locationRecords":[Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    .end local v2    # "locator":Lcom/xiaomi/finddevice/v2/track/Locator;
    :catchall_0
    move-exception v4

    .line 66
    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->scheduleNextLocate()Z

    .line 65
    throw v4
.end method
