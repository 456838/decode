.class public abstract Lcom/xiaomi/phonenum/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final afa:I

.field protected afb:Lcom/xiaomi/phonenum/utils/a;

.field private afc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/xiaomi/phonenum/bean/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private afd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/xiaomi/phonenum/bean/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/utils/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/phonenum/a;->afc:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/phonenum/a;->afd:Ljava/util/Map;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/a;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Lcom/xiaomi/phonenum/utils/a;->alR()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/phonenum/a;->afa:I

    iput-object p1, p0, Lcom/xiaomi/phonenum/a;->afb:Lcom/xiaomi/phonenum/utils/a;

    return-void
.end method

.method private aov(IZ)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/xiaomi/phonenum/bean/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/phonenum/utils/b;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/utils/b;-><init>()V

    new-instance v1, Lcom/xiaomi/phonenum/h;

    new-instance v2, Lcom/xiaomi/phonenum/i;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/xiaomi/phonenum/i;-><init>(Lcom/xiaomi/phonenum/a;IZLcom/xiaomi/phonenum/utils/b;)V

    invoke-direct {v1, p0, v2, v0}, Lcom/xiaomi/phonenum/h;-><init>(Lcom/xiaomi/phonenum/a;Ljava/util/concurrent/Callable;Lcom/xiaomi/phonenum/utils/b;)V

    iget-object v0, p0, Lcom/xiaomi/phonenum/a;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v1
.end method


# virtual methods
.method public abstract aor(Lcom/xiaomi/phonenum/b;)V
.end method

.method public aos()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/phonenum/a;->afa:I

    return v0
.end method

.method public declared-synchronized aot(I)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/xiaomi/phonenum/bean/a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/a;->afc:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/phonenum/a;->aov(IZ)Ljava/util/concurrent/Future;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a;->afc:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/phonenum/a;->afc:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/phonenum/a;->afc:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/a;->afc:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aou(I)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/xiaomi/phonenum/bean/a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/a;->afd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/a;->afd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/xiaomi/phonenum/a;->aov(IZ)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/phonenum/a;->afd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/phonenum/a;->afd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/a;->afd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method abstract aow(IZLcom/xiaomi/phonenum/utils/b;)Lcom/xiaomi/phonenum/bean/a;
.end method

.method public abstract aox(I)Z
.end method

.method public abstract aoy(I)Z
.end method

.method public abstract aoz()V
.end method
