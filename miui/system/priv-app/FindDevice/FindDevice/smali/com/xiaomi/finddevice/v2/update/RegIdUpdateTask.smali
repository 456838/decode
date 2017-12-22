.class public Lcom/xiaomi/finddevice/v2/update/RegIdUpdateTask;
.super Ljava/lang/Object;
.source "RegIdUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/update/RegIdUpdateTask$UploadRegIdIfFindDeviceOpenSubTask;
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
    .line 72
    const-string/jumbo v0, "RegIdUpdateTaskTaskManager"

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/xiaomi/finddevice/v2/update/RegIdUpdateTask$UploadRegIdIfFindDeviceOpenSubTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/update/RegIdUpdateTask$UploadRegIdIfFindDeviceOpenSubTask;-><init>(Lcom/xiaomi/finddevice/v2/update/RegIdUpdateTask$UploadRegIdIfFindDeviceOpenSubTask;)V

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 71
    return-void
.end method

.method public static getRedIdChangeListener()Lcom/xiaomi/finddevice/v2/push/PushRegisterManager$IRegIdChangeListener;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/xiaomi/finddevice/v2/update/RegIdUpdateTask$1;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/update/RegIdUpdateTask$1;-><init>()V

    return-object v0
.end method
