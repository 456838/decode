.class Lcom/xiaomi/passport/accountmanager/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/accountmanager/g;


# instance fields
.field private zA:Landroid/accounts/AccountManager;

.field private final zB:Lcom/xiaomi/passport/servicetoken/a;

.field private final zz:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/accountmanager/j;->zA:Landroid/accounts/AccountManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/accountmanager/j;->zz:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/passport/appwhitelist/l;->Ot(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/accountmanager/j;->CT(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/g;->aht(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/xiaomi/accountsdk/utils/o;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/o;-><init>(II)V

    invoke-static {v2, v0}, Lcom/xiaomi/accountsdk/utils/o;->ahZ(Lcom/xiaomi/accountsdk/utils/o;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/xiaomi/passport/appwhitelist/j;

    invoke-direct {v2}, Lcom/xiaomi/passport/appwhitelist/j;-><init>()V

    const-string/jumbo v3, "com.xiaomi.account"

    invoke-virtual {v2, v3}, Lcom/xiaomi/passport/appwhitelist/j;->Oq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/h;->Mz()Lcom/xiaomi/passport/servicetoken/h;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/h;->My()Lcom/xiaomi/passport/servicetoken/a;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/j;->zB:Lcom/xiaomi/passport/servicetoken/a;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/h;->Mx()Lcom/xiaomi/passport/servicetoken/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/servicetoken/h;->Mw(Lcom/xiaomi/passport/servicetoken/c;)Lcom/xiaomi/passport/servicetoken/a;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private CT(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private CU(Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p1, :cond_1

    const-string/jumbo v2, "getAuthTokenImplVer2"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public BU(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/j;->zA:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public BV(Landroid/accounts/Account;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/j;->zA:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->clearPassword(Landroid/accounts/Account;)V

    return-void
.end method

.method public BW(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/j;->zA:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public BX(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p3, p5, p6}, Lcom/xiaomi/passport/accountmanager/j;->CU(Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/j;->zz:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/passport/accountmanager/j;->BZ(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/accountmanager/h;->CP(Lcom/xiaomi/passport/servicetoken/b;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/j;->zA:Landroid/accounts/AccountManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public BY(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/j;->zA:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public BZ(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/j;->zB:Lcom/xiaomi/passport/servicetoken/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/a;->Ck(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v0

    return-object v0
.end method

.method public Ca(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/j;->zA:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Cb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/j;->zA:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Cc(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/j;->zB:Lcom/xiaomi/passport/servicetoken/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/a;->Co(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v0

    return-object v0
.end method

.method public Cd(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/j;->zA:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ce(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/j;->zA:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Cf(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/j;->zA:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public Cg(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/j;->zA:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
