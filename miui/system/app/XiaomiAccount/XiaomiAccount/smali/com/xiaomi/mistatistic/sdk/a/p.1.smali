.class public Lcom/xiaomi/mistatistic/sdk/a/p;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static agT:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/p;->agT:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "next_upload_ts"

    invoke-static {v2, v3, v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/ad;->asw(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private aqN(Ljava/lang/String;JJI)V
    .locals 8

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->b()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v6

    new-instance v7, Lcom/xiaomi/mistatistic/sdk/a/a/a;

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/h;

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/a/h;-><init>(Lcom/xiaomi/mistatistic/sdk/a/p;JJ)V

    invoke-direct {v7, p1, v0, p6}, Lcom/xiaomi/mistatistic/sdk/a/a/a;-><init>(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/a/a/d;I)V

    invoke-virtual {v6, v7}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqw(Lcom/xiaomi/mistatistic/sdk/a/L;)V

    return-void
.end method

.method private aqO(JJ)V
    .locals 7

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v6

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/y;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/a/y;-><init>(Lcom/xiaomi/mistatistic/sdk/a/p;JJ)V

    invoke-virtual {v6, v0}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqw(Lcom/xiaomi/mistatistic/sdk/a/L;)V

    return-void
.end method

.method static synthetic aqP(Lcom/xiaomi/mistatistic/sdk/a/p;Ljava/lang/String;JJI)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/mistatistic/sdk/a/p;->aqN(Ljava/lang/String;JJI)V

    return-void
.end method

.method static synthetic aqQ(Lcom/xiaomi/mistatistic/sdk/a/p;JJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/a/p;->aqO(JJ)V

    return-void
.end method

.method static synthetic aqR(Lcom/xiaomi/mistatistic/sdk/a/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/a/p;->g()V

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/p;->agT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "next_upload_ts"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/xiaomi/mistatistic/sdk/a/ad;->ass(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/p;->agT:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private e()V
    .locals 5

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/a/f;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/A;->a()Lcom/xiaomi/mistatistic/sdk/a/A;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/a/A;->f()J

    move-result-wide v2

    new-instance v4, Lcom/xiaomi/mistatistic/sdk/a/K;

    invoke-direct {v4, p0}, Lcom/xiaomi/mistatistic/sdk/a/K;-><init>(Lcom/xiaomi/mistatistic/sdk/a/p;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/a/a/f;-><init>(JLcom/xiaomi/mistatistic/sdk/a/a/g;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqw(Lcom/xiaomi/mistatistic/sdk/a/L;)V

    return-void
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/S;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/S;-><init>(Lcom/xiaomi/mistatistic/sdk/a/p;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqw(Lcom/xiaomi/mistatistic/sdk/a/L;)V

    return-void
.end method

.method private g()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/e;->atr()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/i;

    const-string/jumbo v2, "mistat_basic"

    const-string/jumbo v3, "foreground_package"

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/data/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/P;->arL(Lcom/xiaomi/mistatistic/sdk/data/f;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/a/p;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 8

    const-wide/16 v6, 0x2710

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/e;->atp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/p;->agT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_3

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "upload is disabled."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/p;->c()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/p;->agT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "upload is not allowed by the server. set Uploading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/p;->agT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/a/p;->f()V

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/a/p;->e()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/A;->a()Lcom/xiaomi/mistatistic/sdk/a/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/A;->d()V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "sUploading %s, trigger uploading job with delay %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/a/p;->agT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/x;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/x;-><init>(Lcom/xiaomi/mistatistic/sdk/a/p;)V

    invoke-virtual {v0, v1, v6, v7}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqx(Lcom/xiaomi/mistatistic/sdk/a/L;J)V

    goto :goto_0
.end method
