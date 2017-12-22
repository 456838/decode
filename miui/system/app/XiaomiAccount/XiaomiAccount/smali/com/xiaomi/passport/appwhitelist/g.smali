.class Lcom/xiaomi/passport/appwhitelist/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final KH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final KI:Ljava/lang/Object;

.field private KJ:Lcom/xiaomi/passport/appwhitelist/k;

.field private KK:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/appwhitelist/g;->KH:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/appwhitelist/g;->KI:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/passport/appwhitelist/g;->KK:Z

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/k;

    invoke-direct {v0}, Lcom/xiaomi/passport/appwhitelist/k;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/appwhitelist/g;->KJ:Lcom/xiaomi/passport/appwhitelist/k;

    return-void
.end method

.method private varargs Of([Ljava/lang/Runnable;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/xiaomi/passport/appwhitelist/g;->KH:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private Ol()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/g;->KH:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/g;->KH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method Og(Lcom/xiaomi/passport/appwhitelist/a/d;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v2, p1, Lcom/xiaomi/passport/appwhitelist/a/d;->code:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "ok"

    iget-object v3, p1, Lcom/xiaomi/passport/appwhitelist/a/d;->Kj:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/xiaomi/passport/appwhitelist/a/d;->Kh:Lcom/xiaomi/passport/appwhitelist/a/c;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method Oh()Z
    .locals 6

    sget-object v0, Lcom/xiaomi/passport/appwhitelist/n;->Ld:Lcom/xiaomi/passport/appwhitelist/n;

    invoke-virtual {v0}, Lcom/xiaomi/passport/appwhitelist/n;->Oy()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method Oi(Lcom/xiaomi/passport/appwhitelist/i;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/appwhitelist/n;->Ld:Lcom/xiaomi/passport/appwhitelist/n;

    invoke-virtual {v0}, Lcom/xiaomi/passport/appwhitelist/n;->Ox()Lcom/xiaomi/passport/appwhitelist/a/c;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/xiaomi/passport/appwhitelist/i;->Oe(Lcom/xiaomi/passport/appwhitelist/a/c;)V

    :cond_0
    return-void
.end method

.method varargs Oj(Lcom/xiaomi/passport/appwhitelist/i;[Ljava/lang/Runnable;)V
    .locals 6

    iget-object v1, p0, Lcom/xiaomi/passport/appwhitelist/g;->KI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p2}, Lcom/xiaomi/passport/appwhitelist/g;->Of([Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/xiaomi/passport/appwhitelist/g;->KK:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/appwhitelist/g;->Oh()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/passport/appwhitelist/g;->Ol()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/xiaomi/passport/appwhitelist/g;->KK:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/xiaomi/passport/appwhitelist/g;->Ok()Lcom/xiaomi/passport/appwhitelist/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/appwhitelist/k;->Or()Lcom/xiaomi/passport/appwhitelist/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/appwhitelist/g;->Og(Lcom/xiaomi/passport/appwhitelist/a/d;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/g;->KI:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_2

    :try_start_4
    invoke-interface {p1, v1}, Lcom/xiaomi/passport/appwhitelist/i;->Oe(Lcom/xiaomi/passport/appwhitelist/a/c;)V

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/passport/appwhitelist/g;->Ol()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/passport/appwhitelist/g;->KK:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    :try_start_5
    sget-object v2, Lcom/xiaomi/passport/appwhitelist/n;->Ld:Lcom/xiaomi/passport/appwhitelist/n;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/passport/appwhitelist/n;->OA(J)V

    sget-object v2, Lcom/xiaomi/passport/appwhitelist/n;->Ld:Lcom/xiaomi/passport/appwhitelist/n;

    iget-object v3, v0, Lcom/xiaomi/passport/appwhitelist/a/d;->Kh:Lcom/xiaomi/passport/appwhitelist/a/c;

    invoke-virtual {v2, v3}, Lcom/xiaomi/passport/appwhitelist/n;->Oz(Lcom/xiaomi/passport/appwhitelist/a/c;)V

    iget-object v0, v0, Lcom/xiaomi/passport/appwhitelist/a/d;->Kh:Lcom/xiaomi/passport/appwhitelist/a/c;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    iget-object v1, p0, Lcom/xiaomi/passport/appwhitelist/g;->KI:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_4

    :try_start_6
    invoke-interface {p1, v0}, Lcom/xiaomi/passport/appwhitelist/i;->Oe(Lcom/xiaomi/passport/appwhitelist/a/c;)V

    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/passport/appwhitelist/g;->Ol()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/passport/appwhitelist/g;->KK:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/g;->KI:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_5

    :try_start_7
    invoke-interface {p1, v1}, Lcom/xiaomi/passport/appwhitelist/i;->Oe(Lcom/xiaomi/passport/appwhitelist/a/c;)V

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/passport/appwhitelist/g;->Ol()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/passport/appwhitelist/g;->KK:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    monitor-exit v2

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method Ok()Lcom/xiaomi/passport/appwhitelist/k;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/g;->KJ:Lcom/xiaomi/passport/appwhitelist/k;

    return-object v0
.end method
