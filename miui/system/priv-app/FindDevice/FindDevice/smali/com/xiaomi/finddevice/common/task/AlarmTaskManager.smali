.class public Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;
.super Ljava/lang/Object;
.source "AlarmTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;,
        Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskComparator;,
        Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;


# instance fields
.field private mNonWakeupAlarmTask:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

.field private mNonWakeupTaskQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeupAlarmTask:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

.field private mWakeupTaskQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;-><init>()V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->sInstance:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x10

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskComparator;

    invoke-direct {v1, v3}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskComparator;-><init>(Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskComparator;)V

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mNonWakeupTaskQueue:Ljava/util/PriorityQueue;

    .line 118
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskComparator;

    invoke-direct {v1, v3}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskComparator;-><init>(Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskComparator;)V

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mWakeupTaskQueue:Ljava/util/PriorityQueue;

    .line 116
    return-void
.end method

.method public static buildAlarmTask(Ljava/lang/String;JZLjava/lang/Runnable;)Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "time"    # J
    .param p3, "needWakeup"    # Z
    .param p4, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    new-instance v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;-><init>(Ljava/lang/String;JZLjava/lang/Runnable;)V

    return-object v0
.end method

.method private static cancelAlarm(Landroid/content/Context;I)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "requestCode"    # I

    .prologue
    .line 370
    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 371
    .local v0, "alertManager":Landroid/app/AlarmManager;
    invoke-static {p0, p1}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->getAlarmPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 369
    return-void
.end method

.method private static cancelNonWakeupAlarm(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 345
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Cancel non-wakeup alarm. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 346
    const/16 v0, 0x111a

    invoke-static {p0, v0}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->cancelAlarm(Landroid/content/Context;I)V

    .line 344
    return-void
.end method

.method private cancelScheduleTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "task"    # Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .prologue
    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    invoke-interface {p2}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;->needWakeup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mWakeupTaskQueue:Ljava/util/PriorityQueue;

    .line 231
    .local v0, "q":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;>;"
    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 233
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->updateAlarmLocked(Landroid/content/Context;)V

    .line 235
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->dumpSelfLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 225
    return-void

    .line 229
    .end local v0    # "q":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;>;"
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mNonWakeupTaskQueue:Ljava/util/PriorityQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "q":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;>;"
    goto :goto_0

    .line 226
    .end local v0    # "q":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static cancelWakeupAlarm(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 356
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Cancel wakeup alarm. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 357
    const/16 v0, 0x111b

    invoke-static {p0, v0}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->cancelAlarm(Landroid/content/Context;I)V

    .line 355
    return-void
.end method

.method private static dumpQueue(Ljava/util/PriorityQueue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "q":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 316
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .line 317
    .local v0, "t":Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;
    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "##--- %s ---##"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 315
    .end local v0    # "t":Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;
    :cond_0
    return-void
.end method

.method private dumpSelfLocked()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 296
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mNonWakeupTaskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    .line 297
    .local v0, "nonWakeupCount":I
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mWakeupTaskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    .line 298
    .local v1, "wakeupCount":I
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Non-wakeup tasks: %s, wakeup tasks: %s, total: %s. "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 299
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    add-int v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 298
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 301
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "mNonWakeupAlarmTask: %s, mWakeupAlarmTask: %s. "

    new-array v4, v8, [Ljava/lang/Object;

    .line 302
    iget-object v5, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mNonWakeupAlarmTask:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mWakeupAlarmTask:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    aput-object v5, v4, v7

    .line 301
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 305
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "@@@ non-wakeup tasks begin. @@@"

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 306
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mNonWakeupTaskQueue:Ljava/util/PriorityQueue;

    invoke-static {v2}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->dumpQueue(Ljava/util/PriorityQueue;)V

    .line 307
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "@@@ non-wakeup tasks end. @@@"

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 309
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "@@@ wakeup tasks begin. @@@"

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 310
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mWakeupTaskQueue:Ljava/util/PriorityQueue;

    invoke-static {v2}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->dumpQueue(Ljava/util/PriorityQueue;)V

    .line 311
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "@@@ wakeup tasks end. @@@"

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 295
    return-void
.end method

.method public static get()Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->sInstance:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;

    return-object v0
.end method

.method private static getAlarmPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "requestCode"    # I

    .prologue
    .line 375
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/xiaomi/finddevice/v2/receiver/AlarmReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "REQUEST_CODE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 378
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private static pollTimeToRunTasks(JLjava/util/PriorityQueue;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p2, "taskQueue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;>;"
    .local p3, "timeToRunTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;>;"
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .line 327
    .local v0, "earliestTask":Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;
    :goto_0
    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;->getRunTime()J

    move-result-wide v2

    cmp-long v1, v2, p0

    if-gtz v1, :cond_0

    .line 329
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "earliestTask":Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;
    check-cast v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .restart local v0    # "earliestTask":Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;
    goto :goto_0

    .line 324
    :cond_0
    return-void
.end method

.method private runTask(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "taskToRun":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 240
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .local v0, "t":Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;
    move-object v2, v0

    .line 242
    check-cast v2, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;

    .line 244
    .local v2, "task":Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;
    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "Going to run task: %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 246
    iget-object v4, v2, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 247
    :try_start_0
    iget-object v3, v2, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->state:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    sget-object v5, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    if-ne v3, v5, :cond_0

    .line 248
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "Canceled. Abort run. "

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v4

    goto :goto_0

    .line 251
    :cond_0
    :try_start_1
    iget-object v3, v2, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->state:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    sget-object v5, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;->ADDED:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    if-eq v3, v5, :cond_1

    .line 252
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Bad state. "

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 254
    :cond_1
    :try_start_2
    sget-object v3, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;->RUNNING:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    iput-object v3, v2, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->state:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 257
    iget-object v3, v2, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->taskRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 259
    iget-object v4, v2, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 260
    :try_start_3
    iget-object v3, v2, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->state:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    sget-object v5, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;->RUNNING:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    if-eq v3, v5, :cond_2

    .line 261
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Bad state. "

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 259
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 263
    :cond_2
    :try_start_4
    sget-object v3, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;->COMPLETED:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    iput-object v3, v2, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->state:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 239
    .end local v0    # "t":Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;
    .end local v2    # "task":Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;
    :cond_3
    return-void
.end method

.method private scheduleTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "task"    # Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .prologue
    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    invoke-interface {p2}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;->needWakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mWakeupTaskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 217
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->updateAlarmLocked(Landroid/content/Context;)V

    .line 219
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->dumpSelfLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 209
    return-void

    .line 214
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mNonWakeupTaskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static setAlarm(Landroid/content/Context;JIZ)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "requestCode"    # I
    .param p4, "wakeup"    # Z

    .prologue
    .line 362
    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 364
    .local v0, "alertManager":Landroid/app/AlarmManager;
    if-eqz p4, :cond_0

    const/4 v1, 0x2

    .line 366
    :goto_0
    invoke-static {p0, p3}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->getAlarmPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 363
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 361
    return-void

    .line 364
    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private static setNonWakeupAlarm(Landroid/content/Context;J)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 339
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "Set non-wakeup alarm to %s. "

    new-array v2, v2, [Ljava/lang/Object;

    .line 340
    invoke-static {p1, p2}, Lcom/xiaomi/finddevice/common/util/TimeUtil;->getDebugTimeStringElapsedRealtime(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 339
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 341
    const/16 v0, 0x111a

    invoke-static {p0, p1, p2, v0, v4}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->setAlarm(Landroid/content/Context;JIZ)V

    .line 338
    return-void
.end method

.method private static setWakeupAlarm(Landroid/content/Context;J)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 350
    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v1, "Set wakeup alarm to %s. "

    new-array v2, v4, [Ljava/lang/Object;

    .line 351
    invoke-static {p1, p2}, Lcom/xiaomi/finddevice/common/util/TimeUtil;->getDebugTimeStringElapsedRealtime(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 350
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 352
    const/16 v0, 0x111b

    invoke-static {p0, p1, p2, v0, v4}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->setAlarm(Landroid/content/Context;JIZ)V

    .line 349
    return-void
.end method

.method private updateAlarmLocked(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 269
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mNonWakeupTaskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .line 270
    .local v0, "nonWakeupAlarmTask":Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mWakeupTaskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .line 272
    .local v1, "wakeupAlarmTask":Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 273
    invoke-interface {v0}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;->getRunTime()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;->getRunTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 278
    .end local v0    # "nonWakeupAlarmTask":Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mNonWakeupAlarmTask:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    if-eq v2, v0, :cond_2

    .line 279
    invoke-static {p1}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->cancelNonWakeupAlarm(Landroid/content/Context;)V

    .line 280
    if-eqz v0, :cond_1

    .line 281
    invoke-interface {v0}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;->getRunTime()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->setNonWakeupAlarm(Landroid/content/Context;J)V

    .line 283
    :cond_1
    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mNonWakeupAlarmTask:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .line 286
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mWakeupAlarmTask:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    if-eq v2, v1, :cond_4

    .line 287
    invoke-static {p1}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->cancelWakeupAlarm(Landroid/content/Context;)V

    .line 288
    if-eqz v1, :cond_3

    .line 289
    invoke-interface {v1}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;->getRunTime()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->setWakeupAlarm(Landroid/content/Context;J)V

    .line 291
    :cond_3
    iput-object v1, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mWakeupAlarmTask:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .line 268
    :cond_4
    return-void
.end method


# virtual methods
.method public addTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;)Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p2

    .line 124
    check-cast v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;

    .line 126
    .local v0, "task":Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Add task: %s. "

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 128
    iget-object v2, v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 129
    :try_start_0
    iget-object v1, v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->state:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    sget-object v3, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    if-eq v1, v3, :cond_0

    .line 130
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Not a new task. "

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 133
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->scheduleTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;)V

    .line 135
    sget-object v1, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;->ADDED:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    iput-object v1, v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->state:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 138
    return-object v0
.end method

.method public cancelTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;)Z
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p2

    .line 144
    check-cast v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;

    .line 146
    .local v0, "task":Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "cancelTask: %s. "

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 148
    iget-object v2, v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 149
    :try_start_0
    iget-object v1, v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->state:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    sget-object v3, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    if-ne v1, v3, :cond_0

    .line 150
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Task not added. "

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 152
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->state:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    sget-object v3, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    if-ne v1, v3, :cond_1

    .line 153
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Task already canceled. "

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_1
    iget-object v1, v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->state:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    sget-object v3, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;->RUNNING:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    if-ne v1, v3, :cond_2

    .line 156
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "RUNNING. "

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 157
    return v5

    .line 159
    :cond_2
    :try_start_2
    iget-object v1, v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->state:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    sget-object v3, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;->COMPLETED:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    if-ne v1, v3, :cond_3

    .line 160
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "COMPLETED. "

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 161
    return v5

    .line 163
    :cond_3
    :try_start_3
    iget-object v1, v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->state:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    sget-object v3, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;->ADDED:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    if-eq v1, v3, :cond_4

    .line 164
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Bad state. "

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->cancelScheduleTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;)V

    .line 169
    sget-object v1, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;

    iput-object v1, v0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner;->state:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskInner$STATE;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 172
    return v4
.end method

.method public onAlarm(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 180
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v3, "taskToRun":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;>;"
    monitor-enter p0

    .line 184
    :try_start_0
    const-string/jumbo v4, "REQUEST_CODE"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 185
    .local v2, "requestCode":I
    const/16 v4, 0x111a

    if-ne v2, v4, :cond_0

    .line 186
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "non-wakeup alarm"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 193
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 195
    .local v0, "now":J
    iget-object v4, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mNonWakeupTaskQueue:Ljava/util/PriorityQueue;

    invoke-static {v0, v1, v4, v3}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->pollTimeToRunTasks(JLjava/util/PriorityQueue;Ljava/util/ArrayList;)V

    .line 196
    iget-object v4, p0, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->mWakeupTaskQueue:Ljava/util/PriorityQueue;

    invoke-static {v0, v1, v4, v3}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->pollTimeToRunTasks(JLjava/util/PriorityQueue;Ljava/util/ArrayList;)V

    .line 198
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->updateAlarmLocked(Landroid/content/Context;)V

    .line 200
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->dumpSelfLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 203
    invoke-direct {p0, v3}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->runTask(Ljava/util/ArrayList;)V

    .line 178
    return-void

    .line 187
    .end local v0    # "now":J
    :cond_0
    const/16 v4, 0x111b

    if-ne v2, v4, :cond_1

    .line 188
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "wakeup alarm. "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    .end local v2    # "requestCode":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 190
    .restart local v2    # "requestCode":I
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Unrecognized request code. "

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
