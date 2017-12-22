.class public final Lcom/xiaomi/finddevice/common/task/QueueTaskManager;
.super Ljava/lang/Object;
.source "QueueTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;,
        Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;
    }
.end annotation


# instance fields
.field private mDebugTaskSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mTaskQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/xiaomi/finddevice/common/task/QueueTaskManager;Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;)V
    .locals 0
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;

    .prologue
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->onTimeToQueueTask(Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/xiaomi/finddevice/common/task/QueueTaskManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->runTaskLoop()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mDebugTaskSet:Ljava/util/Set;

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Lmiui/reflect/IllegalArgumentException;

    const-string/jumbo v1, "Empty name. "

    invoke-direct {v0, v1}, Lmiui/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mName:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mTaskQueue:Ljava/util/concurrent/BlockingQueue;

    .line 192
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->beginTaskThread()V

    .line 182
    return-void
.end method

.method private beginTaskThread()V
    .locals 6

    .prologue
    .line 196
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$1;-><init>(Lcom/xiaomi/finddevice/common/task/QueueTaskManager;)V

    .line 201
    const-string/jumbo v2, "QueueTaskManager[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 195
    return-void
.end method

.method public static buildQueueTask(Landroid/content/Context;Ljava/lang/String;JZLjava/lang/Runnable;)Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "needWakeLock"    # Z
    .param p5, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 103
    new-instance v1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;-><init>(Landroid/content/Context;Ljava/lang/String;JZLjava/lang/Runnable;)V

    return-object v1
.end method

.method private debugAddTask(Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;)V
    .locals 1
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mDebugTaskSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->debugDump()V

    .line 321
    return-void
.end method

.method private debugAfterRunTask(Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;)V
    .locals 1
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mDebugTaskSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 345
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->debugDump()V

    .line 339
    return-void
.end method

.method private debugBeforRunTask(Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;)V
    .locals 0
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    .prologue
    .line 337
    return-void
.end method

.method private debugCancelTask(Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;)V
    .locals 1
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mDebugTaskSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 335
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->debugDump()V

    .line 329
    return-void
.end method

.method private debugDump()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 348
    const/4 v2, 0x0

    .line 350
    .local v2, "tasks":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mDebugTaskSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 353
    .local v2, "tasks":[Ljava/lang/Object;
    array-length v1, v2

    .line 354
    .local v1, "taskCount":I
    new-array v3, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string/jumbo v5, "Task count: %s. "

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 356
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v2, v3

    .line 357
    .local v0, "t":Ljava/lang/Object;
    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mName:Ljava/lang/String;

    aput-object v7, v6, v4

    const-string/jumbo v7, "## --- %s --- ##"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v0, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v6}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 356
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 347
    .end local v0    # "t":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private onTimeToQueueTask(Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;)V
    .locals 5
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;

    .prologue
    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 241
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mName:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, "Time to queue the task: %s. "

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 243
    iget-object v1, p1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    sget-object v2, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    if-ne v0, v2, :cond_0

    .line 245
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string/jumbo v2, "Canceled. Not going to queue the task. "

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 246
    return-void

    .line 248
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    sget-object v2, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->SCHEDULED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    if-eq v0, v2, :cond_1

    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Bad state. "

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 252
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->performQueueTask(Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;)V

    .line 254
    sget-object v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->QUEUED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 239
    return-void
.end method

.method private performQueueTask(Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;)V
    .locals 4
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;

    .prologue
    .line 260
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mTaskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method private queueTask(Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;)V
    .locals 3
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;

    .prologue
    .line 205
    iget-object v1, p1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    sget-object v2, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    if-eq v0, v2, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Not a new task. "

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 210
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->performQueueTask(Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;)V

    .line 212
    sget-object v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->QUEUED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 204
    return-void
.end method

.method private runTaskLoop()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 270
    :goto_0
    const/4 v2, 0x0

    .line 272
    .local v2, "t":Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mTaskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "t":Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;
    :goto_1
    move-object v3, v2

    .line 279
    check-cast v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;

    .line 281
    .local v3, "task":Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;
    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mName:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string/jumbo v5, "Going to run task: %s. "

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 283
    iget-object v5, v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 284
    :try_start_1
    iget-object v4, v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    sget-object v6, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    if-ne v4, v6, :cond_0

    .line 285
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mName:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const-string/jumbo v6, "Canceled. Abort run. "

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    goto :goto_0

    .line 273
    .end local v3    # "task":Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;
    .restart local v2    # "t":Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/InterruptedException;
    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "Ops, interrupted. "

    aput-object v5, v4, v8

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 276
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 288
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "t":Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;
    .restart local v3    # "task":Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;
    :cond_0
    :try_start_2
    iget-object v4, v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    sget-object v6, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->QUEUED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    if-eq v4, v6, :cond_1

    .line 289
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Bad state. "

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 291
    :cond_1
    :try_start_3
    sget-object v4, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->RUNNING:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    iput-object v4, v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 294
    invoke-direct {p0, v2}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->debugBeforRunTask(Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;)V

    .line 296
    iget-object v4, v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->taskRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 298
    iget-object v5, v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 299
    :try_start_4
    iget-object v4, v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    sget-object v6, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->RUNNING:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    if-eq v4, v6, :cond_2

    .line 300
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Bad state. "

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 298
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 303
    :cond_2
    :try_start_5
    iget-object v4, v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_3

    .line 304
    iget-object v4, v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 307
    :cond_3
    sget-object v4, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->COMPLETED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    iput-object v4, v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v5

    .line 310
    invoke-direct {p0, v2}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->debugAfterRunTask(Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;)V

    goto/16 :goto_0
.end method

.method private scheduleTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "task"    # Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;

    .prologue
    .line 217
    iget-object v1, p2, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p2, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    sget-object v2, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    if-eq v0, v2, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Not a new task. "

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 222
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->get()Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;

    move-result-object v0

    .line 225
    const-string/jumbo v2, "QueueTaskManager[%s]:QueueTaskInner[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p2}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {p2}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->getRunTime()J

    move-result-wide v4

    .line 227
    invoke-virtual {p2}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->needWakeLock()Z

    move-result v3

    .line 228
    new-instance v6, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$2;

    invoke-direct {v6, p0, p2}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$2;-><init>(Lcom/xiaomi/finddevice/common/task/QueueTaskManager;Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;)V

    .line 224
    invoke-static {v2, v4, v5, v3, v6}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->buildAlarmTask(Ljava/lang/String;JZLjava/lang/Runnable;)Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    move-result-object v2

    .line 222
    invoke-virtual {v0, p1, v2}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->addTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;)Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    move-result-object v0

    iput-object v0, p2, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->alarmTask:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .line 235
    sget-object v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->SCHEDULED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    iput-object v0, p2, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 216
    return-void
.end method


# virtual methods
.method public addTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;)Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    move-object v4, p2

    .line 121
    check-cast v4, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;

    .line 123
    .local v4, "task":Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;
    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mName:Ljava/lang/String;

    aput-object v6, v5, v8

    const-string/jumbo v6, "Add task: %s. "

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 126
    .local v0, "now":J
    invoke-interface {p2}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;->getRunTime()J

    move-result-wide v2

    .line 127
    .local v2, "runTime":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    cmp-long v5, v2, v0

    if-gtz v5, :cond_1

    .line 128
    :cond_0
    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mName:Ljava/lang/String;

    aput-object v6, v5, v8

    const-string/jumbo v6, "Queue it now. "

    aput-object v6, v5, v9

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 129
    invoke-direct {p0, v4}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->queueTask(Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;)V

    .line 135
    :goto_0
    invoke-direct {p0, p2}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->debugAddTask(Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;)V

    .line 137
    return-object v4

    .line 131
    :cond_1
    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mName:Ljava/lang/String;

    aput-object v6, v5, v8

    const-string/jumbo v6, "Queue it later. "

    aput-object v6, v5, v9

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 132
    invoke-direct {p0, p1, v4}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->scheduleTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;)V

    goto :goto_0
.end method

.method public cancelTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;)Z
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p2

    .line 143
    check-cast v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;

    .line 145
    .local v0, "task":Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mName:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string/jumbo v2, "Cancel task: %s. "

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 147
    iget-object v2, v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 148
    :try_start_0
    iget-object v1, v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    sget-object v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    if-ne v1, v3, :cond_0

    .line 149
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Not added. "

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 151
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    sget-object v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    if-ne v1, v3, :cond_1

    .line 152
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Alreay canceled. "

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_1
    iget-object v1, v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    sget-object v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->RUNNING:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    if-ne v1, v3, :cond_2

    .line 155
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string/jumbo v3, "RUNNING. "

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 156
    return v5

    .line 158
    :cond_2
    :try_start_2
    iget-object v1, v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    sget-object v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->COMPLETED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    if-ne v1, v3, :cond_3

    .line 159
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string/jumbo v3, "COMPLETED. "

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 160
    return v5

    .line 163
    :cond_3
    :try_start_3
    iget-object v1, v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    sget-object v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->QUEUED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    if-ne v1, v3, :cond_5

    .line 164
    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->mTaskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_4

    .line 166
    iget-object v1, v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 174
    :cond_4
    :goto_0
    sget-object v1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    iput-object v1, v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 177
    invoke-direct {p0, p2}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->debugCancelTask(Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;)V

    .line 179
    return v4

    .line 168
    :cond_5
    :try_start_4
    iget-object v1, v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->state:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    sget-object v3, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->SCHEDULED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    if-ne v1, v3, :cond_6

    .line 169
    invoke-static {}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->get()Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;

    move-result-object v1

    iget-object v3, v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;->alarmTask:Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    invoke-virtual {v1, p1, v3}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->cancelTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;)Z

    goto :goto_0

    .line 171
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Bad state. "

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
