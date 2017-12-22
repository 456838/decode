.class public Lcom/xiaomi/finddevice/common/task/DelayRunCondition;
.super Lcom/xiaomi/finddevice/common/task/RunCondition;
.source "DelayRunCondition.java"


# instance fields
.field private mAlarmTask:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/RunCondition;-><init>()V

    return-void
.end method


# virtual methods
.method public countdown(Landroid/content/Context;JZ)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "delayMillisec"    # J
    .param p4, "needWakeup"    # Z

    .prologue
    .line 8
    invoke-static {}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->get()Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;

    move-result-object v0

    .line 9
    const-string/jumbo v1, "DelayRunCondition"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p2

    .line 12
    new-instance v4, Lcom/xiaomi/finddevice/common/task/DelayRunCondition$1;

    invoke-direct {v4, p0}, Lcom/xiaomi/finddevice/common/task/DelayRunCondition$1;-><init>(Lcom/xiaomi/finddevice/common/task/DelayRunCondition;)V

    .line 8
    invoke-static {v1, v2, v3, p4, v4}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->buildAlarmTask(Ljava/lang/String;JZLjava/lang/Runnable;)Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->addTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;)Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/DelayRunCondition;->mAlarmTask:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .line 7
    return-void
.end method

.method public destroy(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-static {}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->get()Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/DelayRunCondition;->mAlarmTask:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->cancelTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;)Z

    .line 23
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/common/task/RunCondition;->destroy(Landroid/content/Context;)V

    .line 21
    return-void
.end method
