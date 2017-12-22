.class public Lcom/xiaomi/account/XiaomiAuthService;
.super Landroid/app/Service;
.source ""


# instance fields
.field private nT:Lcom/xiaomi/account/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/xiaomi/account/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/l;-><init>(Lcom/xiaomi/account/XiaomiAuthService;Lcom/xiaomi/account/l;)V

    iput-object v0, p0, Lcom/xiaomi/account/XiaomiAuthService;->nT:Lcom/xiaomi/account/l;

    return-void
.end method

.method private rJ(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/account/m;

    invoke-direct {v0}, Lcom/xiaomi/account/m;-><init>()V

    new-instance v1, Lcom/xiaomi/account/XiaomiOAuthResponse;

    new-instance v2, Lcom/xiaomi/account/A;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/account/A;-><init>(Lcom/xiaomi/account/XiaomiAuthService;Lcom/xiaomi/account/m;)V

    invoke-direct {v1, v2}, Lcom/xiaomi/account/XiaomiOAuthResponse;-><init>(Lcom/xiaomi/account/IXiaomiAuthResponse;)V

    invoke-static {p1, v1}, Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;->gD(Landroid/content/Context;Lcom/xiaomi/account/XiaomiOAuthResponse;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/XiaomiAuthService;->startActivity(Landroid/content/Intent;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/account/m;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v2, v0, Landroid/accounts/OperationCanceledException;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/accounts/OperationCanceledException;

    throw v0

    :cond_0
    throw v1
.end method

.method static rK(Ljava/lang/String;ZZZ)Z
    .locals 1

    if-eqz p3, :cond_0

    const-string/jumbo v0, "3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v0, "3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private static rL(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/B;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/xiaomi/account/B;-><init>(Landroid/content/Context;ILjava/util/HashMap;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic rM(Lcom/xiaomi/account/XiaomiAuthService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/XiaomiAuthService;->rJ(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic rN(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/account/XiaomiAuthService;->rL(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;I)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/XiaomiAuthService;->nT:Lcom/xiaomi/account/l;

    invoke-virtual {v0}, Lcom/xiaomi/account/l;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
