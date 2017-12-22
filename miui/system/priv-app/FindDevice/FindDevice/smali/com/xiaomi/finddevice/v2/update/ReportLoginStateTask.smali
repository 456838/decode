.class public Lcom/xiaomi/finddevice/v2/update/ReportLoginStateTask;
.super Ljava/lang/Object;
.source "ReportLoginStateTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/update/ReportLoginStateTask$ReportLoginStateSubTask;
    }
.end annotation


# static fields
.field private static final singleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->buildSingleTaskController()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    move-result-object v0

    .line 20
    sput-object v0, Lcom/xiaomi/finddevice/v2/update/ReportLoginStateTask;->singleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAll()V
    .locals 4

    .prologue
    .line 24
    const-string/jumbo v0, "ReportLoginStateTaskTaskManager"

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/xiaomi/finddevice/v2/update/ReportLoginStateTask$ReportLoginStateSubTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/update/ReportLoginStateTask$ReportLoginStateSubTask;-><init>(Lcom/xiaomi/finddevice/v2/update/ReportLoginStateTask$ReportLoginStateSubTask;)V

    sget-object v2, Lcom/xiaomi/finddevice/v2/update/ReportLoginStateTask;->singleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 23
    return-void
.end method
