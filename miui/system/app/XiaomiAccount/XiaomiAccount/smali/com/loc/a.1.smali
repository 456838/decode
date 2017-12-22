.class public Lcom/loc/a;
.super Lcom/loc/bm;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static ajq:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private ajp:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/loc/O;)V
    .locals 1

    invoke-direct {p0}, Lcom/loc/bm;-><init>()V

    iput-object p1, p0, Lcom/loc/a;->ajp:Landroid/content/Context;

    new-instance v0, Lcom/loc/cb;

    invoke-direct {v0, p1}, Lcom/loc/cb;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/loc/cn;->aFv(Lcom/loc/ca;)V

    invoke-direct {p0}, Lcom/loc/a;->c()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 3

    const-class v1, Lcom/loc/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/a;->ajq:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/loc/bm;->aqv:Lcom/loc/bm;

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lcom/loc/bm;->aqv:Lcom/loc/bm;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit v1

    return-void

    :cond_1
    :try_start_2
    sget-object v0, Lcom/loc/a;->ajq:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sget-object v2, Lcom/loc/bm;->aqv:Lcom/loc/bm;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/loc/bm;->aqv:Lcom/loc/bm;

    iget-object v0, v0, Lcom/loc/bm;->aqw:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/bm;->aqv:Lcom/loc/bm;

    iget-object v0, v0, Lcom/loc/bm;->aqw:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public static declared-synchronized atY(Landroid/content/Context;Lcom/loc/O;)Lcom/loc/a;
    .locals 3

    const-class v1, Lcom/loc/a;

    monitor-enter v1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/loc/O;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v2, "sdk name is invalid"

    invoke-direct {v0, v2}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v2, "sdk info is null"

    invoke-direct {v0, v2}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/loc/O;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_2
    sget-object v0, Lcom/loc/bm;->aqv:Lcom/loc/bm;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/loc/bm;->aqv:Lcom/loc/bm;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/loc/bm;->c:Z

    :goto_0
    sget-object v0, Lcom/loc/bm;->aqv:Lcom/loc/bm;

    sget-object v2, Lcom/loc/bm;->aqv:Lcom/loc/bm;

    iget-boolean v2, v2, Lcom/loc/bm;->c:Z

    invoke-virtual {v0, p0, p1, v2}, Lcom/loc/bm;->aud(Landroid/content/Context;Lcom/loc/O;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    sget-object v0, Lcom/loc/bm;->aqv:Lcom/loc/bm;

    check-cast v0, Lcom/loc/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_3
    :try_start_4
    new-instance v0, Lcom/loc/a;

    invoke-direct {v0, p0, p1}, Lcom/loc/a;-><init>(Landroid/content/Context;Lcom/loc/O;)V

    sput-object v0, Lcom/loc/bm;->aqv:Lcom/loc/bm;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public static atZ(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/loc/bm;->aqv:Lcom/loc/bm;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/loc/bm;->aqv:Lcom/loc/bm;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/loc/bm;->auc(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static aua(Lcom/loc/O;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/loc/bm;->aqv:Lcom/loc/bm;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/loc/bm;->aqv:Lcom/loc/bm;

    invoke-virtual {v0, p0, p1}, Lcom/loc/bm;->aub(Lcom/loc/O;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic aue(Lcom/loc/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/loc/a;->ajp:Landroid/content/Context;

    return-object v0
.end method

.method static declared-synchronized b()Ljava/util/concurrent/ExecutorService;
    .locals 2

    const-class v1, Lcom/loc/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/a;->ajq:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/loc/a;->ajq:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/loc/a;->ajq:Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/loc/a;->ajq:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c()V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/a;->aqw:Ljava/lang/Thread$UncaughtExceptionHandler;

    iget-object v0, p0, Lcom/loc/a;->aqw:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->aqw:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.amap.api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a;->c:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/loc/a;->c:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected aub(Lcom/loc/O;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/a;->ajp:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/loc/aG;->aAi(Landroid/content/Context;Lcom/loc/O;Ljava/lang/String;)V

    return-void
.end method

.method protected auc(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/a;->ajp:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/loc/aG;->aAj(Landroid/content/Context;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected aud(Landroid/content/Context;Lcom/loc/O;Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/loc/a;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/loc/bH;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/loc/bH;-><init>(Lcom/loc/a;Landroid/content/Context;Lcom/loc/O;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1, v1}, Lcom/loc/a;->auc(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/a;->aqw:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/a;->aqw:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
