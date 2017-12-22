.class Lcom/xiaomi/account/k;
.super Lcom/xiaomi/account/i;
.source ""


# instance fields
.field private oa:Z

.field private final ob:I

.field private final oc:Ljava/lang/String;

.field private final od:Z

.field private final oe:Z

.field private final of:I

.field private final og:I

.field private oh:J

.field private final oi:Ljava/lang/String;

.field private final oj:Ljava/lang/String;

.field private ok:Ljava/lang/Integer;

.field private final ol:Ljava/lang/String;

.field private final om:Z

.field final synthetic on:Lcom/xiaomi/account/XiaomiAuthService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/XiaomiAuthService;Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/account/IXiaomiAuthResponse;III)V
    .locals 9

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/account/k;-><init>(Lcom/xiaomi/account/XiaomiAuthService;Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/account/IXiaomiAuthResponse;Lcom/xiaomi/account/m;III)V

    iget-object v0, p0, Lcom/xiaomi/account/k;->nU:Landroid/accounts/Account;

    if-nez v0, :cond_0

    invoke-static {p1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/k;->nU:Landroid/accounts/Account;

    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/account/XiaomiAuthService;Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/account/IXiaomiAuthResponse;Lcom/xiaomi/account/m;III)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Lcom/xiaomi/account/IXiaomiAuthResponse;",
            "Lcom/xiaomi/account/m",
            "<",
            "Landroid/os/Bundle;",
            ">;III)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/xiaomi/account/k;->on:Lcom/xiaomi/account/XiaomiAuthService;

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/account/i;-><init>(Lcom/xiaomi/account/XiaomiAuthService;Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/account/IXiaomiAuthResponse;Lcom/xiaomi/account/m;)V

    iput-boolean v3, p0, Lcom/xiaomi/account/k;->oa:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/account/k;->oh:J

    iput p6, p0, Lcom/xiaomi/account/k;->of:I

    iput p7, p0, Lcom/xiaomi/account/k;->og:I

    invoke-direct {p0, p4}, Lcom/xiaomi/account/k;->rW(Lcom/xiaomi/account/IXiaomiAuthResponse;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/account/k;->od:Z

    iput p8, p0, Lcom/xiaomi/account/k;->ob:I

    iget-object v0, p0, Lcom/xiaomi/account/k;->nW:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/k;->nW:Landroid/os/Bundle;

    const-string/jumbo v1, "extra_client_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/k;->oc:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/account/k;->nW:Landroid/os/Bundle;

    const-string/jumbo v1, "extra_redirect_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/k;->oi:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/account/k;->nW:Landroid/os/Bundle;

    const-string/jumbo v1, "extra_scope"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/k;->ol:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/account/k;->nW:Landroid/os/Bundle;

    const-string/jumbo v1, "extra_skip_confirm"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/account/k;->om:Z

    iget-object v0, p0, Lcom/xiaomi/account/k;->nW:Landroid/os/Bundle;

    const-string/jumbo v1, "extra_response_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/k;->oj:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/account/k;->nW:Landroid/os/Bundle;

    const-string/jumbo v1, "extra_native_oauth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/account/k;->oe:Z

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/xiaomi/account/k;->oc:Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaomi/account/k;->oi:Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaomi/account/k;->ol:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/xiaomi/account/k;->om:Z

    iput-object v2, p0, Lcom/xiaomi/account/k;->oj:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/xiaomi/account/k;->oe:Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/xiaomi/account/XiaomiAuthService;Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/account/m;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Lcom/xiaomi/account/m",
            "<",
            "Landroid/os/Bundle;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v7, v6

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/account/k;-><init>(Lcom/xiaomi/account/XiaomiAuthService;Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/account/IXiaomiAuthResponse;Lcom/xiaomi/account/m;III)V

    return-void
.end method

.method private rT()V
    .locals 6

    const/4 v3, 0x1

    const/16 v2, -0x3ea

    const/16 v1, -0x3eb

    iget-object v0, p0, Lcom/xiaomi/account/k;->oc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/k;->oi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "null or empty clientId or redirectUrl"

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/account/k;->rO(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/k;->on:Lcom/xiaomi/account/XiaomiAuthService;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/account/k;->oa:Z

    iget-object v1, p0, Lcom/xiaomi/account/k;->nU:Landroid/accounts/Account;

    if-nez v1, :cond_4

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/xiaomi/account/k;->oe:Z

    if-eqz v1, :cond_2

    const-string/jumbo v0, "not available system account"

    invoke-virtual {p0, v2, v0}, Lcom/xiaomi/account/k;->rO(ILjava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/account/k;->on:Lcom/xiaomi/account/XiaomiAuthService;

    invoke-static {v1, v0}, Lcom/xiaomi/account/XiaomiAuthService;->rM(Lcom/xiaomi/account/XiaomiAuthService;Landroid/content/Context;)V

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/k;->nU:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/xiaomi/account/k;->nU:Landroid/accounts/Account;

    if-nez v0, :cond_3

    const-string/jumbo v0, "login system account failed"

    invoke-virtual {p0, v2, v0}, Lcom/xiaomi/account/k;->rO(ILjava/lang/String;)V

    return-void

    :cond_3
    iput-boolean v3, p0, Lcom/xiaomi/account/k;->oa:Z

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/account/k;->ol:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/xiaomi/account/k;->om:Z

    iget-boolean v2, p0, Lcom/xiaomi/account/k;->oa:Z

    iget-boolean v3, p0, Lcom/xiaomi/account/k;->od:Z

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/account/XiaomiAuthService;->rK(Ljava/lang/String;ZZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/account/k;->rY()Lcom/xiaomi/accountsdk/account/data/b;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "extra_access_token"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/b;->Vb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra_token_type"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/b;->Vh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra_mac_key"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/b;->Vf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra_mac_algorithm"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/b;->Ve()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra_expires_in"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/b;->Vd()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "extra_scope"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/b;->Vg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra_code"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/b;->Vc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/k;->rR(Landroid/os/Bundle;)V

    const-string/jumbo v0, "oauth_quietly"

    iget-object v1, p0, Lcom/xiaomi/account/k;->on:Lcom/xiaomi/account/XiaomiAuthService;

    invoke-virtual {v1}, Lcom/xiaomi/account/XiaomiAuthService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/account/k;->ob:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/account/k;->oh:J

    sub-long/2addr v2, v4

    const/4 v4, -0x1

    invoke-static {v0, v4, v1, v2, v3}, Lcom/xiaomi/account/utils/d;->nn(Ljava/lang/String;ILjava/lang/String;J)V

    return-void

    :cond_5
    const-string/jumbo v0, "cannot get auth info from system"

    const/16 v1, -0x3eb

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/account/k;->rO(ILjava/lang/String;)V

    const-string/jumbo v0, "oauth_quietly"

    iget-object v1, p0, Lcom/xiaomi/account/k;->on:Lcom/xiaomi/account/XiaomiAuthService;

    invoke-virtual {v1}, Lcom/xiaomi/account/XiaomiAuthService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/account/k;->ob:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/account/k;->oh:J

    sub-long/2addr v2, v4

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2, v3}, Lcom/xiaomi/account/utils/d;->nn(Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedOAuthorizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :cond_6
    iget-boolean v0, p0, Lcom/xiaomi/account/k;->oe:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/account/k;->on:Lcom/xiaomi/account/XiaomiAuthService;

    iget-object v1, p0, Lcom/xiaomi/account/k;->oc:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/account/k;->oi:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/account/k;->nW:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/xiaomi/account/k;->om:Z

    iget-object v5, p0, Lcom/xiaomi/account/k;->nX:Lcom/xiaomi/account/c;

    invoke-virtual {v5}, Lcom/xiaomi/account/c;->qo()Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/account/IXiaomiAuthResponse;

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZLcom/xiaomi/account/IXiaomiAuthResponse;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "need authorized by user"

    const/16 v2, -0x3e9

    invoke-virtual {p0, v2, v1, v0}, Lcom/xiaomi/account/k;->rP(ILjava/lang/String;Landroid/content/Intent;)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/account/k;->on:Lcom/xiaomi/account/XiaomiAuthService;

    iget-object v1, p0, Lcom/xiaomi/account/k;->oc:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/account/k;->oi:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/account/k;->nW:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/xiaomi/account/k;->om:Z

    iget-object v5, p0, Lcom/xiaomi/account/k;->nX:Lcom/xiaomi/account/c;

    invoke-virtual {v5}, Lcom/xiaomi/account/c;->qo()Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/account/IXiaomiAuthResponse;

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/account/ui/AuthorizeNativeActivity;->aV(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZLcom/xiaomi/account/IXiaomiAuthResponse;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private rU(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, "NO_RESULT"

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "OK"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "NEED_AUTHORIZE"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "AUTH_FAILED"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "LOGIN_FAILED"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "CANCELLED"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3eb -> :sswitch_2
        -0x3ea -> :sswitch_3
        -0x3e9 -> :sswitch_1
        0x0 -> :sswitch_0
        0x4 -> :sswitch_4
    .end sparse-switch
.end method

.method private rV(Lcom/xiaomi/accountsdk/account/data/u;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaomi/accountsdk/account/data/u;->SW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private rW(Lcom/xiaomi/account/IXiaomiAuthResponse;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v2, -0x1

    iget v1, p0, Lcom/xiaomi/account/k;->of:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/xiaomi/account/k;->og:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rX()V
    .locals 6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "oauth_jar_version"

    const-string/jumbo v2, "%d.%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/xiaomi/account/k;->of:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/xiaomi/account/k;->og:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "oauth_add_account_by_me"

    iget-boolean v2, p0, Lcom/xiaomi/account/k;->oa:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "oauth_scope"

    iget-object v0, p0, Lcom/xiaomi/account/k;->ol:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NotSet"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "oauth_skip_confirm"

    iget-boolean v2, p0, Lcom/xiaomi/account/k;->om:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "oauth_response_type"

    iget-object v0, p0, Lcom/xiaomi/account/k;->oj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NotSet"

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "oauth_result_code"

    iget-object v2, p0, Lcom/xiaomi/account/k;->ok:Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/xiaomi/account/k;->rU(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/account/k;->on:Lcom/xiaomi/account/XiaomiAuthService;

    const-string/jumbo v2, "oauth_get_token_call"

    iget v3, p0, Lcom/xiaomi/account/k;->ob:I

    invoke-static {v0, v2, v1, v3}, Lcom/xiaomi/account/XiaomiAuthService;->rN(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/k;->ol:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/k;->oj:Ljava/lang/String;

    goto :goto_1
.end method

.method private rY()Lcom/xiaomi/accountsdk/account/data/b;
    .locals 9

    new-instance v7, Lcom/xiaomi/account/utils/d;

    invoke-direct {v7}, Lcom/xiaomi/account/utils/d;-><init>()V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/k;->on:Lcom/xiaomi/account/XiaomiAuthService;

    iget-object v1, p0, Lcom/xiaomi/account/k;->nU:Landroid/accounts/Account;

    invoke-virtual {v7, v0, v1}, Lcom/xiaomi/account/utils/d;->ni(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/accountsdk/account/data/u;->parse(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/u;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/xiaomi/account/k;->rV(Lcom/xiaomi/accountsdk/account/data/u;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/k;->nU:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/account/k;->oc:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/account/k;->oi:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/account/k;->ol:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/account/k;->oj:Ljava/lang/String;

    iget-object v5, v5, Lcom/xiaomi/accountsdk/account/data/u;->SW:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/account/utils/q;->oz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/b;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/xiaomi/account/k;->on:Lcom/xiaomi/account/XiaomiAuthService;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/k;->nU:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method


# virtual methods
.method protected rS(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "extra_error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/k;->ok:Ljava/lang/Integer;

    invoke-super {p0, p1}, Lcom/xiaomi/account/i;->rS(Landroid/os/Bundle;)V

    return-void
.end method

.method public run()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/account/k;->rT()V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/xiaomi/account/k;->rX()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/xiaomi/account/k;->rQ(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/xiaomi/account/k;->rX()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/account/k;->rO(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/xiaomi/account/k;->rX()V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/xiaomi/account/k;->rQ(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0}, Lcom/xiaomi/account/k;->rX()V

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/k;->rQ(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-direct {p0}, Lcom/xiaomi/account/k;->rX()V

    goto :goto_0

    :catch_4
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/account/k;->rO(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-direct {p0}, Lcom/xiaomi/account/k;->rX()V

    goto :goto_0

    :catch_5
    move-exception v0

    :try_start_6
    invoke-virtual {p0, v0}, Lcom/xiaomi/account/k;->rQ(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-direct {p0}, Lcom/xiaomi/account/k;->rX()V

    goto :goto_0

    :catch_6
    move-exception v0

    :try_start_7
    invoke-virtual {p0, v0}, Lcom/xiaomi/account/k;->rQ(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-direct {p0}, Lcom/xiaomi/account/k;->rX()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/xiaomi/account/k;->rX()V

    throw v0
.end method
