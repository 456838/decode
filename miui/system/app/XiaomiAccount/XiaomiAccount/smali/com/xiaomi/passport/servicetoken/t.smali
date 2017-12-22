.class final Lcom/xiaomi/passport/servicetoken/t;
.super Lcom/xiaomi/passport/servicetoken/j;
.source ""


# static fields
.field private static volatile IA:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile IB:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/t;->IA:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/passport/servicetoken/t;->IB:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/j;-><init>()V

    return-void
.end method

.method private MS(Lcom/xiaomi/passport/servicetoken/b;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/b;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/b;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    sget-object v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->HU:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private MT()Lcom/xiaomi/passport/servicetoken/v;
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/servicetoken/v;

    new-instance v1, Lcom/xiaomi/passport/servicetoken/x;

    new-instance v2, Lcom/xiaomi/passport/servicetoken/g;

    invoke-direct {v2}, Lcom/xiaomi/passport/servicetoken/g;-><init>()V

    invoke-direct {v1, v2}, Lcom/xiaomi/passport/servicetoken/x;-><init>(Lcom/xiaomi/passport/servicetoken/g;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/v;-><init>(Lcom/xiaomi/passport/servicetoken/c;)V

    return-object v0
.end method


# virtual methods
.method public MG(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 6

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v0, "weblogin:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/passport/servicetoken/q;->MQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/t;->MT()Lcom/xiaomi/passport/servicetoken/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/v;->MG(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/passport/servicetoken/t;->IA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v3, Lcom/xiaomi/passport/servicetoken/b;

    invoke-direct {v3, v1}, Lcom/xiaomi/passport/servicetoken/b;-><init>(Lcom/xiaomi/accountsdk/a/b;)V

    new-instance v0, Lcom/xiaomi/passport/servicetoken/m;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/servicetoken/m;-><init>(Lcom/xiaomi/passport/servicetoken/t;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/b;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/m;->ajF()Z

    invoke-direct {p0, v3}, Lcom/xiaomi/passport/servicetoken/t;->MS(Lcom/xiaomi/passport/servicetoken/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/xiaomi/passport/servicetoken/b;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/xiaomi/passport/servicetoken/t;->IA:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/t;->MT()Lcom/xiaomi/passport/servicetoken/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/v;->MG(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method

.method public MH(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 2

    sget-object v0, Lcom/xiaomi/passport/servicetoken/t;->IA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/b;-><init>(Lcom/xiaomi/accountsdk/a/b;)V

    new-instance v1, Lcom/xiaomi/passport/servicetoken/s;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/xiaomi/passport/servicetoken/s;-><init>(Lcom/xiaomi/passport/servicetoken/t;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/b;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V

    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/s;->ajF()Z

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/servicetoken/t;->MS(Lcom/xiaomi/passport/servicetoken/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/b;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/passport/servicetoken/t;->IA:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/t;->MT()Lcom/xiaomi/passport/servicetoken/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/v;->MH(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method

.method MR(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/xiaomi/passport/servicetoken/t;->IA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/a/f;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/a/f;-><init>()V

    new-instance v1, Lcom/xiaomi/passport/servicetoken/w;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaomi/passport/servicetoken/w;-><init>(Lcom/xiaomi/passport/servicetoken/t;Landroid/content/Context;Lcom/xiaomi/accountsdk/a/a;)V

    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/w;->ajF()Z

    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ServiceTokenUtilMiui"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :catch_1
    move-exception v0

    const-string/jumbo v1, "ServiceTokenUtilMiui"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method
