.class Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;
.super Ljava/lang/Object;
.source "QueueTaskManager.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/common/task/QueueTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueTaskInner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;
    }
.end annotation


# instance fields
.field public alarmTask:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

.field public final lock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private final mNeedWakeLock:Z

.field private final mTime:J

.field public state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

.field public final taskRunnable:Ljava/lang/Runnable;

.field public final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JZLjava/lang/Runnable;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "needWakeLock"    # Z
    .param p6, "task"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lmiui/reflect/IllegalArgumentException;

    const-string/jumbo v2, "Empty name. "

    invoke-direct {v1, v2}, Lmiui/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_0
    if-nez p6, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "task == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_1
    iput-object p2, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->mName:Ljava/lang/String;

    .line 41
    iput-wide p3, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->mTime:J

    .line 42
    iput-boolean p5, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->mNeedWakeLock:Z

    .line 44
    iput-object p6, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->taskRunnable:Ljava/lang/Runnable;

    .line 46
    sget-object v1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    iput-object v1, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    .line 48
    iget-boolean v1, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->mNeedWakeLock:Z

    if-eqz v1, :cond_2

    .line 49
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 51
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "QueueTaskInner[%s]"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->mName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 52
    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 57
    .end local v0    # "pm":Landroid/os/PowerManager;
    :goto_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->lock:Ljava/lang/Object;

    .line 36
    return-void

    .line 54
    :cond_2
    iput-object v2, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->wakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRunTime()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->mTime:J

    return-wide v0
.end method

.method public needWakeLock()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->mNeedWakeLock:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "QueueTaskInner{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->mName:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    const/16 v1, 0x27

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    const-string/jumbo v1, ", mTime="

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    iget-wide v2, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->mTime:J

    .line 77
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const-string/jumbo v1, ", mNeedWakeLock="

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    iget-boolean v1, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->mNeedWakeLock:Z

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    const/16 v1, 0x7d

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
