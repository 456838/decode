.class public Lcom/xiaomi/finddevice/v2/update/UpdateLockMessageTask;
.super Ljava/lang/Object;
.source "UpdateLockMessageTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/update/UpdateLockMessageTask$UpdateLockMessageSubTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAll()V
    .locals 3

    .prologue
    .line 25
    const-string/jumbo v0, "UpdateLockMessageTaskTaskManager"

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/xiaomi/finddevice/v2/update/UpdateLockMessageTask$UpdateLockMessageSubTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/update/UpdateLockMessageTask$UpdateLockMessageSubTask;-><init>(Lcom/xiaomi/finddevice/v2/update/UpdateLockMessageTask$UpdateLockMessageSubTask;)V

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 24
    return-void
.end method
