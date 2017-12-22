.class public Lcom/loc/bn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static aqx:Lcom/loc/bn;


# instance fields
.field private aqA:Lcom/loc/O;

.field private aqy:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private aqz:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/loc/O;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bn;->aqz:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/bn;->aqA:Lcom/loc/O;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bn;->aqy:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method static declared-synchronized aDC(Landroid/content/Context;Lcom/loc/O;)Lcom/loc/bn;
    .locals 2

    const-class v1, Lcom/loc/bn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/bn;->aqx:Lcom/loc/bn;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/loc/bn;->aqx:Lcom/loc/bn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/loc/bn;

    invoke-direct {v0, p0, p1}, Lcom/loc/bn;-><init>(Landroid/content/Context;Lcom/loc/O;)V

    sput-object v0, Lcom/loc/bn;->aqx:Lcom/loc/bn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {p2}, Lcom/loc/ac;->axI(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/bn;->aqy:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v1, "amapdynamic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.amap.api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/loc/bX;

    iget-object v1, p0, Lcom/loc/bn;->aqz:Landroid/content/Context;

    invoke-static {}, Lcom/loc/cu;->c()Lcom/loc/cu;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/loc/bX;-><init>(Landroid/content/Context;Lcom/loc/cv;)V

    iget-object v1, p0, Lcom/loc/bn;->aqz:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bn;->aqA:Lcom/loc/O;

    invoke-static {v0, v1, v2}, Lcom/loc/aC;->azF(Lcom/loc/bX;Landroid/content/Context;Lcom/loc/O;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DynamicExceptionHandler"

    const-string/jumbo v2, "uncaughtException"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/loc/bn;->aqy:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
