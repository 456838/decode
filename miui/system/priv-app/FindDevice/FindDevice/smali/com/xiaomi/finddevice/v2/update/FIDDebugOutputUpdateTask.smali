.class public Lcom/xiaomi/finddevice/v2/update/FIDDebugOutputUpdateTask;
.super Ljava/lang/Object;
.source "FIDDebugOutputUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/update/FIDDebugOutputUpdateTask$FIDDebugOutputUpdateSubTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAll()V
    .locals 3

    .prologue
    .line 27
    const-string/jumbo v0, "FIDDebugOutputUpdateTaskTaskManager"

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/xiaomi/finddevice/v2/update/FIDDebugOutputUpdateTask$FIDDebugOutputUpdateSubTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/update/FIDDebugOutputUpdateTask$FIDDebugOutputUpdateSubTask;-><init>(Lcom/xiaomi/finddevice/v2/update/FIDDebugOutputUpdateTask$FIDDebugOutputUpdateSubTask;)V

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 26
    return-void
.end method

.method public static getDeviceCredentialChangeListener()Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/xiaomi/finddevice/v2/update/FIDDebugOutputUpdateTask$1;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/update/FIDDebugOutputUpdateTask$1;-><init>()V

    return-object v0
.end method
