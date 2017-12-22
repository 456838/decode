.class Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;
.super Ljava/lang/Object;
.source "AlarmTaskManager.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlarmTaskInner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;
    }
.end annotation


# instance fields
.field public final lock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private final mNeedWakeup:Z

.field private final mTime:J

.field public state:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

.field public final taskRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;JZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "needWakeup"    # Z
    .param p5, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty name. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "time < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "task == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->mName:Ljava/lang/String;

    .line 49
    iput-wide p2, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->mTime:J

    .line 50
    iput-boolean p4, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->mNeedWakeup:Z

    .line 52
    iput-object p5, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->taskRunnable:Ljava/lang/Runnable;

    .line 54
    sget-object v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->state:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->lock:Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method public getRunTime()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->mTime:J

    return-wide v0
.end method

.method public needWakeup()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->mNeedWakeup:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AlarmTaskInner{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->mName:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    const/16 v1, 0x27

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    const-string/jumbo v1, ", mTime="

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    iget-wide v2, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->mTime:J

    invoke-static {v2, v3}, Lcom/xiaomi/finddevice/common/util/TimeUtil;->getDebugTimeStringElapsedRealtime(J)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    const-string/jumbo v1, ", mNeedWakeup="

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    iget-boolean v1, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->mNeedWakeup:Z

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const/16 v1, 0x7d

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
