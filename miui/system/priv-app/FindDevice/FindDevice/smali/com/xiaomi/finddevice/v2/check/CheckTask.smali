.class public Lcom/xiaomi/finddevice/v2/check/CheckTask;
.super Ljava/lang/Object;
.source "CheckTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/check/CheckTask$CheckLockSubTask;,
        Lcom/xiaomi/finddevice/v2/check/CheckTask$CheckTrackSubTask;,
        Lcom/xiaomi/finddevice/v2/check/CheckTask$CheckVerifySubTask;
    }
.end annotation


# static fields
.field private static sLastHandleTelephonyServiceStateChangeTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/xiaomi/finddevice/v2/check/CheckTask;->sLastHandleTelephonyServiceStateChangeTime:J

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doCheckLock()V
    .locals 3

    .prologue
    .line 13
    const-string/jumbo v0, "CheckTaskTaskManager"

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/finddevice/v2/check/CheckTask$CheckLockSubTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/check/CheckTask$CheckLockSubTask;-><init>(Lcom/xiaomi/finddevice/v2/check/CheckTask$CheckLockSubTask;)V

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 12
    return-void
.end method

.method public static doCheckTrack()V
    .locals 3

    .prologue
    .line 37
    const-string/jumbo v0, "CheckTaskTaskManager"

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/finddevice/v2/check/CheckTask$CheckTrackSubTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/check/CheckTask$CheckTrackSubTask;-><init>(Lcom/xiaomi/finddevice/v2/check/CheckTask$CheckTrackSubTask;)V

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 36
    return-void
.end method

.method public static doCheckVerify()V
    .locals 3

    .prologue
    .line 41
    const-string/jumbo v0, "CheckTaskTaskManager"

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/finddevice/v2/check/CheckTask$CheckVerifySubTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/check/CheckTask$CheckVerifySubTask;-><init>(Lcom/xiaomi/finddevice/v2/check/CheckTask$CheckVerifySubTask;)V

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 40
    return-void
.end method

.method public static onTelephonyServiceStateChange()V
    .locals 6

    .prologue
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 22
    .local v0, "now":J
    sget-wide v2, Lcom/xiaomi/finddevice/v2/check/CheckTask;->sLastHandleTelephonyServiceStateChangeTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 23
    sget-wide v2, Lcom/xiaomi/finddevice/v2/check/CheckTask;->sLastHandleTelephonyServiceStateChangeTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 24
    return-void

    .line 27
    :cond_0
    sput-wide v0, Lcom/xiaomi/finddevice/v2/check/CheckTask;->sLastHandleTelephonyServiceStateChangeTime:J

    .line 29
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "handle. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcom/xiaomi/finddevice/v2/check/CheckTask;->doCheckLock()V

    .line 18
    return-void
.end method
