.class public Lcom/xiaomi/account/d;
.super Lmiui/external/a;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/external/a;-><init>()V

    return-void
.end method

.method public static qp()Landroid/app/Application;
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/account/e;->acG()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    invoke-super {p0}, Lmiui/external/a;->onCreate()V

    invoke-virtual {p0}, Lcom/xiaomi/account/d;->aFS()Lmiui/external/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/e;->acD(Landroid/app/Application;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/e;->acJ(Z)V

    invoke-static {}, Lcom/xiaomi/account/utils/u;->pq()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/e;->acN(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/e;->acK(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/account/utils/s;

    invoke-direct {v1}, Lcom/xiaomi/account/utils/s;-><init>()V

    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/e;->ahl(Lcom/xiaomi/accountsdk/utils/e;)V

    invoke-static {}, Lmiui/cloud/a;->aHx()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/accountsdk/utils/z;

    invoke-direct {v2, v0, v1}, Lcom/xiaomi/accountsdk/utils/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/utils/z;->aiz()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/e;->acM(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/account/b;

    invoke-direct {v1}, Lcom/xiaomi/account/b;-><init>()V

    invoke-static {}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;->adn()Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;->XH:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;->ado(Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;)V

    invoke-static {v1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/a;->acZ(Lcom/xiaomi/accountsdk/hasheddeviceidlib/b;)V

    new-instance v2, Lcom/xiaomi/account/f;

    invoke-virtual {p0}, Lcom/xiaomi/account/d;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/account/f;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/xiaomi/passport/b;->OW(Lcom/xiaomi/passport/a/c;)V

    invoke-static {v2}, Lcom/xiaomi/passport/b;->OU(Lcom/xiaomi/passport/a/d;)V

    invoke-static {v2}, Lcom/xiaomi/passport/b;->OV(Lcom/xiaomi/passport/a/a;)V

    invoke-static {v1}, Lcom/xiaomi/passport/b;->OS(Lcom/xiaomi/passport/h;)V

    invoke-static {v0}, Lcom/xiaomi/passport/b;->OT(Landroid/content/Context;)V

    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/B;->aiJ()V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/d;->qq()V

    invoke-static {v0}, Lcom/xiaomi/account/g;->rD(Landroid/content/Context;)V

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/xiaomi/accountsdk/account/d;->acs()Lcom/xiaomi/accountsdk/account/d;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/passport/f;

    invoke-direct {v2, v0}, Lcom/xiaomi/passport/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/d;->acA(Lcom/xiaomi/accountsdk/account/a;)V

    :cond_1
    new-instance v1, Lcom/xiaomi/account/utils/b;

    invoke-direct {v1}, Lcom/xiaomi/account/utils/b;-><init>()V

    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/a;->ahb(Lcom/xiaomi/accountsdk/utils/b;)V

    new-instance v1, Lcom/xiaomi/accountsdk/utils/A;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/utils/A;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/r;->ain(Lcom/xiaomi/accountsdk/utils/l;)V

    invoke-static {v0}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jk(Landroid/content/Context;)V

    return-void
.end method

.method protected qq()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/account/d;->qp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/account/push/a;->pI(Landroid/content/Context;)Lcom/xiaomi/account/push/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/push/a;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/account/d;->qp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/xiaomi/account/p;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/p;-><init>(Lcom/xiaomi/account/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v1, Lcom/xiaomi/account/q;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/q;-><init>(Lcom/xiaomi/account/d;)V

    invoke-static {}, Lcom/xiaomi/account/d;->qp()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lmiui/accounts/ExtraAccountManager;->getInstance(Landroid/content/Context;)Lmiui/accounts/ExtraAccountManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lmiui/accounts/ExtraAccountManager;->addOnAccountsUpdatedListener(Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void
.end method
