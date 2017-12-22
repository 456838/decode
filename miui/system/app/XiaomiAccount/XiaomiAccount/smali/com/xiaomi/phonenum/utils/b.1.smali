.class public Lcom/xiaomi/phonenum/utils/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private acF:Z

.field private acG:Lcom/xiaomi/phonenum/utils/A;

.field private acH:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private alZ()V
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lcom/xiaomi/phonenum/utils/b;->acH:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public alY(Lcom/xiaomi/phonenum/utils/A;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/phonenum/utils/b;->alZ()V

    iget-object v0, p0, Lcom/xiaomi/phonenum/utils/b;->acG:Lcom/xiaomi/phonenum/utils/A;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/xiaomi/phonenum/utils/b;->acG:Lcom/xiaomi/phonenum/utils/A;

    iget-boolean v0, p0, Lcom/xiaomi/phonenum/utils/b;->acF:Z

    if-nez v0, :cond_2

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    if-eqz p1, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/xiaomi/phonenum/utils/A;->ane()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/phonenum/utils/b;->acF:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/phonenum/utils/b;->acF:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/phonenum/utils/b;->acH:Z

    iget-object v0, p0, Lcom/xiaomi/phonenum/utils/b;->acG:Lcom/xiaomi/phonenum/utils/A;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :goto_0
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/xiaomi/phonenum/utils/b;->acH:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return-void

    :cond_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    invoke-interface {v0}, Lcom/xiaomi/phonenum/utils/A;->ane()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/xiaomi/phonenum/utils/b;->acH:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/phonenum/utils/b;->acF:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
