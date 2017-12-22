.class public Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;
.super Ljava/lang/Object;
.source "PersistentAppTaskBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;,
        Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;,
        Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$ProvisionInProcessException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    .locals 8
    .param p0, "time"    # J
    .param p2, "needWakeLock"    # Z
    .param p3, "runnable"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;
    .param p4, "controller"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    .prologue
    .line 185
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-wide v2, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    return-object v0
.end method

.method public static build(Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "time"    # J
    .param p3, "needWakeLock"    # Z
    .param p4, "runnable"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;
    .param p5, "controller"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    .prologue
    .line 57
    new-instance v5, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$1;

    invoke-direct {v5, p4}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$1;-><init>(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;)V

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v6, p5

    .line 56
    invoke-static/range {v1 .. v6}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->buildPersistentAppTask(Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    return-object v0
.end method

.method public static build(Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "time"    # J
    .param p3, "needWakeLock"    # Z
    .param p4, "runnable"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;
    .param p5, "controller"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    .prologue
    .line 73
    new-instance v5, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$2;

    invoke-direct {v5, p4, p0, p3}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$2;-><init>(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;Ljava/lang/String;Z)V

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v6, p5

    .line 72
    invoke-static/range {v1 .. v6}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->buildPersistentAppTask(Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    return-object v0
.end method

.method public static build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    .locals 7
    .param p0, "needWakeLock"    # Z
    .param p1, "runnable"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;

    .prologue
    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    move v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    return-object v0
.end method

.method public static build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    .locals 7
    .param p0, "needWakeLock"    # Z
    .param p1, "runnable"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;

    .prologue
    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    move v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    return-object v0
.end method

.method public static build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    .locals 7
    .param p0, "needWakeLock"    # Z
    .param p1, "runnable"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;
    .param p2, "controller"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    .prologue
    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    move v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    return-object v0
.end method
