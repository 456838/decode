.class Lcom/xiaomi/mistatistic/sdk/a/w;
.super Landroid/os/HandlerThread;
.source ""


# instance fields
.field final synthetic aha:Lcom/xiaomi/mistatistic/sdk/a/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->aha:Lcom/xiaomi/mistatistic/sdk/a/e;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->aha:Lcom/xiaomi/mistatistic/sdk/a/e;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqy(Lcom/xiaomi/mistatistic/sdk/a/e;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->aha:Lcom/xiaomi/mistatistic/sdk/a/e;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqz(Lcom/xiaomi/mistatistic/sdk/a/e;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->aha:Lcom/xiaomi/mistatistic/sdk/a/e;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqz(Lcom/xiaomi/mistatistic/sdk/a/e;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->aha:Lcom/xiaomi/mistatistic/sdk/a/e;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqz(Lcom/xiaomi/mistatistic/sdk/a/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->aha:Lcom/xiaomi/mistatistic/sdk/a/e;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqz(Lcom/xiaomi/mistatistic/sdk/a/e;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->aha:Lcom/xiaomi/mistatistic/sdk/a/e;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqz(Lcom/xiaomi/mistatistic/sdk/a/e;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/a/L;

    :try_start_2
    invoke-interface {v0}, Lcom/xiaomi/mistatistic/sdk/a/L;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "error while executing job."

    invoke-static {v2, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
