.class final Lokio/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field static auq:Lokio/n;

.field static aur:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static aIu()Lokio/n;
    .locals 6

    const-class v1, Lokio/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lokio/c;->auq:Lokio/n;

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lokio/n;

    invoke-direct {v0}, Lokio/n;-><init>()V

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lokio/c;->auq:Lokio/n;

    iget-object v2, v0, Lokio/n;->auG:Lokio/n;

    sput-object v2, Lokio/c;->auq:Lokio/n;

    const/4 v2, 0x0

    iput-object v2, v0, Lokio/n;->auG:Lokio/n;

    sget-wide v2, Lokio/c;->aur:J

    const-wide/16 v4, 0x800

    sub-long/2addr v2, v4

    sput-wide v2, Lokio/c;->aur:J

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static aIv(Lokio/n;)V
    .locals 8

    const-wide/16 v6, 0x800

    const/4 v0, 0x0

    iget-object v1, p0, Lokio/n;->auG:Lokio/n;

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, p0, Lokio/n;->auH:Lokio/n;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lokio/n;->auE:Z

    if-nez v1, :cond_3

    const-class v1, Lokio/c;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lokio/c;->aur:J

    add-long/2addr v2, v6

    const-wide/32 v4, 0x10000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_4

    monitor-exit v1

    return-void

    :cond_3
    return-void

    :cond_4
    sget-wide v2, Lokio/c;->aur:J

    add-long/2addr v2, v6

    sput-wide v2, Lokio/c;->aur:J

    sget-object v0, Lokio/c;->auq:Lokio/n;

    iput-object v0, p0, Lokio/n;->auG:Lokio/n;

    const/4 v0, 0x0

    iput v0, p0, Lokio/n;->limit:I

    const/4 v0, 0x0

    iput v0, p0, Lokio/n;->pos:I

    sput-object p0, Lokio/c;->auq:Lokio/n;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
