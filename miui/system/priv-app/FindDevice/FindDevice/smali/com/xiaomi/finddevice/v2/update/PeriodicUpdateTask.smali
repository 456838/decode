.class public Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask;
.super Ljava/lang/Object;
.source "PeriodicUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$DeviceCredentialUpdateSubTask;,
        Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceCancroMStatusFixTask;,
        Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;,
        Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$StatusUpdateSubTask;,
        Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAll()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask;->doAll(Z)V

    .line 54
    return-void
.end method

.method public static doAll(Z)V
    .locals 4
    .param p0, "forceUpdateAlarm"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 59
    const-string/jumbo v1, "PeriodicUpdateTaskTaskManager"

    invoke-static {v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    .line 60
    .local v0, "tm":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
    new-instance v1, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$DeviceCredentialUpdateSubTask;

    invoke-direct {v1, v3}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$DeviceCredentialUpdateSubTask;-><init>(Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$DeviceCredentialUpdateSubTask;)V

    invoke-static {v2, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 61
    new-instance v1, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$StatusUpdateSubTask;

    invoke-direct {v1, v3}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$StatusUpdateSubTask;-><init>(Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$StatusUpdateSubTask;)V

    invoke-static {v2, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 62
    new-instance v1, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;

    invoke-direct {v1, v3}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;-><init>(Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;)V

    invoke-static {v2, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 63
    new-instance v1, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceCancroMStatusFixTask;

    invoke-direct {v1, v3}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceCancroMStatusFixTask;-><init>(Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceCancroMStatusFixTask;)V

    invoke-static {v2, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 64
    if-eqz p0, :cond_0

    .line 65
    invoke-static {v2}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;->build(Z)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 58
    :cond_0
    return-void
.end method

.method public static doUpdateAlarm()V
    .locals 2

    .prologue
    .line 74
    const-string/jumbo v0, "PeriodicUpdateTaskTaskManager"

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    .line 75
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;->buildWithSingleTaskController(Z)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 69
    return-void
.end method
