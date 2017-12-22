.class public Lokio/g;
.super Lokio/e;
.source ""


# static fields
.field private static head:Lokio/g;


# instance fields
.field private inQueue:Z

.field private next:Lokio/g;

.field private timeoutAt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lokio/e;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lokio/g;
    .locals 1

    invoke-static {}, Lokio/g;->awaitTimeout()Lokio/g;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized awaitTimeout()Lokio/g;
    .locals 12

    const-wide/32 v10, 0xf4240

    const/4 v8, 0x0

    const-class v1, Lokio/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lokio/g;->head:Lokio/g;

    iget-object v2, v0, Lokio/g;->next:Lokio/g;

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lokio/g;->remainingNanos(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    const-wide/32 v2, 0xf4240

    div-long v2, v4, v2

    mul-long v6, v2, v10

    sub-long/2addr v4, v6

    const-class v0, Lokio/g;

    long-to-int v4, v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v8

    :cond_0
    :try_start_1
    const-class v0, Lokio/g;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v8

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v0, Lokio/g;->head:Lokio/g;

    iget-object v3, v2, Lokio/g;->next:Lokio/g;

    iput-object v3, v0, Lokio/g;->next:Lokio/g;

    const/4 v0, 0x0

    iput-object v0, v2, Lokio/g;->next:Lokio/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lokio/g;)Z
    .locals 3

    const-class v1, Lokio/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lokio/g;->head:Lokio/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    iget-object v2, v0, Lokio/g;->next:Lokio/g;

    if-eq v2, p0, :cond_1

    iget-object v0, v0, Lokio/g;->next:Lokio/g;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lokio/g;->next:Lokio/g;

    iput-object v2, v0, Lokio/g;->next:Lokio/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lokio/g;->next:Lokio/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private remainingNanos(J)J
    .locals 3

    iget-wide v0, p0, Lokio/g;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lokio/g;JZ)V
    .locals 11

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lokio/g;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lokio/g;->head:Lokio/g;

    if-eqz v0, :cond_2

    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    cmp-long v0, p1, v6

    if-eqz v0, :cond_0

    if-nez p3, :cond_3

    :cond_0
    cmp-long v0, p1, v6

    if-eqz v0, :cond_4

    add-long v6, v4, p1

    iput-wide v6, p0, Lokio/g;->timeoutAt:J

    :goto_1
    invoke-direct {p0, v4, v5}, Lokio/g;->remainingNanos(J)J

    move-result-wide v6

    sget-object v0, Lokio/g;->head:Lokio/g;

    :goto_2
    move-object v2, v0

    iget-object v0, v2, Lokio/g;->next:Lokio/g;

    if-nez v0, :cond_6

    :cond_1
    iget-object v0, v2, Lokio/g;->next:Lokio/g;

    iput-object v0, p0, Lokio/g;->next:Lokio/g;

    iput-object p0, v2, Lokio/g;->next:Lokio/g;

    sget-object v0, Lokio/g;->head:Lokio/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v0, :cond_8

    :goto_3
    monitor-exit v3

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Lokio/g;

    invoke-direct {v0}, Lokio/g;-><init>()V

    sput-object v0, Lokio/g;->head:Lokio/g;

    new-instance v0, Lokio/t;

    invoke-direct {v0}, Lokio/t;-><init>()V

    invoke-virtual {v0}, Lokio/t;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lokio/g;->deadlineNanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, p0, Lokio/g;->timeoutAt:J

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lokio/g;->deadlineNanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lokio/g;->timeoutAt:J

    goto :goto_1

    :cond_6
    iget-object v0, v2, Lokio/g;->next:Lokio/g;

    invoke-direct {v0, v4, v5}, Lokio/g;->remainingNanos(J)J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_1

    iget-object v0, v2, Lokio/g;->next:Lokio/g;

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    const-class v0, Lokio/g;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public final enter()V
    .locals 6

    iget-boolean v0, p0, Lokio/g;->inQueue:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lokio/g;->timeoutNanos()J

    move-result-wide v0

    invoke-virtual {p0}, Lokio/g;->hasDeadline()Z

    move-result v2

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lokio/g;->inQueue:Z

    invoke-static {p0, v0, v1, v2}, Lokio/g;->scheduleTimeout(Lokio/g;JZ)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    invoke-virtual {p0}, Lokio/g;->exit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lokio/g;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method

.method final exit(Z)V
    .locals 1

    invoke-virtual {p0}, Lokio/g;->exit()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokio/g;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final exit()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lokio/g;->inQueue:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lokio/g;->inQueue:Z

    invoke-static {p0}, Lokio/g;->cancelScheduledTimeout(Lokio/g;)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public final sink(Lokio/m;)Lokio/m;
    .locals 1

    new-instance v0, Lokio/b;

    invoke-direct {v0, p0, p1}, Lokio/b;-><init>(Lokio/g;Lokio/m;)V

    return-object v0
.end method

.method public final source(Lokio/w;)Lokio/w;
    .locals 1

    new-instance v0, Lokio/B;

    invoke-direct {v0, p0, p1}, Lokio/B;-><init>(Lokio/g;Lokio/w;)V

    return-object v0
.end method

.method protected timedOut()V
    .locals 0

    return-void
.end method
