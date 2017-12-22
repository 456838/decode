.class Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
.super Ljava/lang/Object;
.source "PersistentAppTaskManager.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PersistentAppTaskInner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;
    }
.end annotation


# instance fields
.field public final lock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private final mNeedWakeLock:Z

.field private final mTime:J

.field public queueTask:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

.field public runCondition:Lcom/xiaomi/finddevice/common/task/RunCondition;

.field public state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

.field public final taskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;

.field public final taskRunnable:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "needWakeLock"    # Z
    .param p5, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;
    .param p6, "controller"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lmiui/reflect/IllegalArgumentException;

    const-string/jumbo v1, "Empty name. "

    invoke-direct {v0, v1}, Lmiui/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    if-nez p5, :cond_1

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "task == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->mName:Ljava/lang/String;

    .line 69
    iput-wide p2, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->mTime:J

    .line 70
    iput-boolean p4, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->mNeedWakeLock:Z

    .line 72
    check-cast p6, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;

    .end local p6    # "controller":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;
    iput-object p6, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;

    .line 74
    iput-object p5, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskRunnable:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;

    .line 76
    sget-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    .line 60
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRunTime()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->mTime:J

    return-wide v0
.end method

.method public needWakeLock()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->mNeedWakeLock:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PersistentAppTaskInner{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->mName:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const/16 v1, 0x27

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    const-string/jumbo v1, ", mTime="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    iget-wide v2, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->mTime:J

    invoke-static {v2, v3}, Lcom/xiaomi/finddevice/common/util/TimeUtil;->getDebugTimeStringElapsedRealtime(J)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    const-string/jumbo v1, ", mNeedWakeLock="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    iget-boolean v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->mNeedWakeLock:Z

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    const/16 v1, 0x7d

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
