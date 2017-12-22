.class Lcom/xiaomi/account/ui/G;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/account/data/a;",
        ">;"
    }
.end annotation


# instance fields
.field private ct:Ljava/lang/String;

.field final synthetic cu:Lcom/xiaomi/account/ui/F;


# direct methods
.method private constructor <init>(Lcom/xiaomi/account/ui/F;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/ui/F;Lcom/xiaomi/account/ui/G;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/G;-><init>(Lcom/xiaomi/account/ui/F;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/G;->eN([Ljava/lang/Void;)Lcom/xiaomi/account/data/a;

    move-result-object v0

    return-object v0
.end method

.method protected varargs eN([Ljava/lang/Void;)Lcom/xiaomi/account/data/a;
    .locals 13

    const/4 v12, 0x0

    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;

    iget-object v1, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;->add()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/r;->EM(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/xiaomi/account/utils/d;

    invoke-direct {v0}, Lcom/xiaomi/account/utils/d;-><init>()V

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    const/4 v1, 0x2

    if-ge v9, v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lcom/xiaomi/account/utils/d;->nh(Landroid/app/Activity;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaomi/accountsdk/account/data/u;->parse(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/u;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v1, v6, Lcom/xiaomi/accountsdk/account/data/u;->SW:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    const-string/jumbo v1, "fail to get OAuth ServiceToken"

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/F;->eK(Lcom/xiaomi/account/ui/F;Ljava/lang/String;)V

    return-object v12

    :cond_1
    :try_start_0
    iget-object v1, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    invoke-static {v2}, Lcom/xiaomi/account/ui/F;->ez(Lcom/xiaomi/account/ui/F;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    invoke-static {v3}, Lcom/xiaomi/account/ui/F;->eD(Lcom/xiaomi/account/ui/F;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    invoke-static {v5}, Lcom/xiaomi/account/ui/F;->eF(Lcom/xiaomi/account/ui/F;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v6, Lcom/xiaomi/accountsdk/account/data/u;->SW:Ljava/lang/String;

    iget-object v7, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    invoke-static {v7}, Lcom/xiaomi/account/ui/F;->eE(Lcom/xiaomi/account/ui/F;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/account/utils/d;->nk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/account/data/a;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/xiaomi/account/ui/F;->ey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "get oauth scope info error"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/G;->ct:Ljava/lang/String;

    :goto_1
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/xiaomi/account/ui/F;->ey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "get oauth scope info error"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/G;->ct:Ljava/lang/String;

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/xiaomi/account/ui/F;->ey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "get oauth scope info error"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/AccessDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/G;->ct:Ljava/lang/String;

    goto :goto_1

    :catch_3
    move-exception v1

    iget-object v1, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v11}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object v12
.end method

.method protected eO(Lcom/xiaomi/account/data/a;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    iget-object v1, p0, Lcom/xiaomi/account/ui/G;->ct:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/F;->eK(Lcom/xiaomi/account/ui/F;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    invoke-static {v0, p1}, Lcom/xiaomi/account/ui/F;->eH(Lcom/xiaomi/account/ui/F;Lcom/xiaomi/account/data/a;)Lcom/xiaomi/account/data/a;

    iget-object v0, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    invoke-static {v0, p1}, Lcom/xiaomi/account/ui/F;->eM(Lcom/xiaomi/account/ui/F;Lcom/xiaomi/account/data/a;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    invoke-static {v0}, Lcom/xiaomi/account/ui/F;->eI(Lcom/xiaomi/account/ui/F;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/data/a;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/G;->eO(Lcom/xiaomi/account/data/a;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/F;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v0, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    iget-object v1, p0, Lcom/xiaomi/account/ui/G;->cu:Lcom/xiaomi/account/ui/F;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0192

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/F;->eL(Lcom/xiaomi/account/ui/F;Ljava/lang/String;)V

    return-void
.end method
