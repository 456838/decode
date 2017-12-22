.class public final Lcom/xiaomi/accountsdk/utils/G;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ZY:Landroid/accounts/Account;

.field private final ZZ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/G;->ZZ:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/utils/G;->ZY:Landroid/accounts/Account;

    return-void
.end method

.method private aji()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "passportapi"

    invoke-static {}, Lcom/xiaomi/passport/servicetoken/h;->Mz()Lcom/xiaomi/passport/servicetoken/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/h;->My()Lcom/xiaomi/passport/servicetoken/a;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/utils/G;->ZZ:Landroid/content/Context;

    const-string/jumbo v3, "passportapi"

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/passport/servicetoken/a;->Ck(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/b;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HI:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private ajj()Ljava/lang/String;
    .locals 6

    new-instance v5, Lcom/xiaomi/accountsdk/a/f;

    invoke-direct {v5}, Lcom/xiaomi/accountsdk/a/f;-><init>()V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/H;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/utils/G;->ZZ:Landroid/content/Context;

    const-string/jumbo v3, "android.intent.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    const-string/jumbo v4, "com.xiaomi.account"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/accountsdk/utils/H;-><init>(Lcom/xiaomi/accountsdk/utils/G;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/a/a;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/utils/H;->ajF()Z

    :try_start_0
    invoke-virtual {v5}, Lcom/xiaomi/accountsdk/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiCUserIdUtil"

    const-string/jumbo v2, "getCUserId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "MiuiCUserIdUtil"

    const-string/jumbo v2, "getCUserId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic ajk(Lcom/xiaomi/accountsdk/utils/G;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/G;->ZY:Landroid/accounts/Account;

    return-object v0
.end method


# virtual methods
.method public final ajh()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MiuiCUserIdUtil#getCUserId() should NOT be called on main thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/G;->ajj()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/G;->aji()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
