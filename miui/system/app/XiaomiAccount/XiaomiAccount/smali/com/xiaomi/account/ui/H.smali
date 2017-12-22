.class Lcom/xiaomi/account/ui/H;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/accountsdk/account/data/b;",
        ">;"
    }
.end annotation


# instance fields
.field private cv:Ljava/lang/String;

.field final synthetic cw:Lcom/xiaomi/account/ui/F;


# direct methods
.method private constructor <init>(Lcom/xiaomi/account/ui/F;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/H;->cw:Lcom/xiaomi/account/ui/F;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/ui/F;Lcom/xiaomi/account/ui/H;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/H;-><init>(Lcom/xiaomi/account/ui/F;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/H;->eP([Ljava/lang/Void;)Lcom/xiaomi/accountsdk/account/data/b;

    move-result-object v0

    return-object v0
.end method

.method protected varargs eP([Ljava/lang/Void;)Lcom/xiaomi/accountsdk/account/data/b;
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;

    iget-object v1, p0, Lcom/xiaomi/account/ui/H;->cw:Lcom/xiaomi/account/ui/F;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;->add()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/H;->cw:Lcom/xiaomi/account/ui/F;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/account/utils/d;

    invoke-direct {v2}, Lcom/xiaomi/account/utils/d;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/account/ui/H;->cw:Lcom/xiaomi/account/ui/F;

    invoke-virtual {v3}, Lcom/xiaomi/account/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/account/utils/d;->nh(Landroid/app/Activity;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/accountsdk/account/data/u;->parse(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/u;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v3, v5, Lcom/xiaomi/accountsdk/account/data/u;->SW:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/H;->cw:Lcom/xiaomi/account/ui/F;

    const-string/jumbo v1, "fail to get OAuth ServiceToken"

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/F;->eK(Lcom/xiaomi/account/ui/F;Ljava/lang/String;)V

    return-object v7

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/account/ui/H;->cw:Lcom/xiaomi/account/ui/F;

    invoke-static {v3}, Lcom/xiaomi/account/ui/F;->eC(Lcom/xiaomi/account/ui/F;)Lcom/xiaomi/account/data/a;

    move-result-object v3

    iget-object v4, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, v5, Lcom/xiaomi/accountsdk/account/data/u;->SW:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v6, v0}, Lcom/xiaomi/account/utils/d;->nf(Lcom/xiaomi/account/data/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/account/ui/H;->cw:Lcom/xiaomi/account/ui/F;

    invoke-static {v1}, Lcom/xiaomi/account/ui/F;->ez(Lcom/xiaomi/account/ui/F;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/H;->cw:Lcom/xiaomi/account/ui/F;

    invoke-static {v2}, Lcom/xiaomi/account/ui/F;->eD(Lcom/xiaomi/account/ui/F;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/account/ui/H;->cw:Lcom/xiaomi/account/ui/F;

    invoke-static {v3}, Lcom/xiaomi/account/ui/F;->eF(Lcom/xiaomi/account/ui/F;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/account/ui/H;->cw:Lcom/xiaomi/account/ui/F;

    invoke-static {v4}, Lcom/xiaomi/account/ui/F;->eE(Lcom/xiaomi/account/ui/F;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v5, Lcom/xiaomi/accountsdk/account/data/u;->SW:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/account/utils/q;->oz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/b;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedOAuthorizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/xiaomi/account/ui/F;->ey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "confirm oauth error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/H;->cv:Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v7

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/xiaomi/account/ui/F;->ey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "confirm oauth error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/H;->cv:Ljava/lang/String;

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/xiaomi/account/ui/F;->ey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "confirm oauth error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/H;->cv:Ljava/lang/String;

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-static {}, Lcom/xiaomi/account/ui/F;->ey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "confirm oauth error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/AccessDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/H;->cv:Ljava/lang/String;

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-static {}, Lcom/xiaomi/account/ui/F;->ey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "confirm oauth error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedOAuthorizeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/H;->cv:Ljava/lang/String;

    goto :goto_0
.end method

.method protected eQ(Lcom/xiaomi/accountsdk/account/data/b;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/H;->cw:Lcom/xiaomi/account/ui/F;

    iget-object v1, p0, Lcom/xiaomi/account/ui/H;->cv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/F;->eK(Lcom/xiaomi/account/ui/F;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "extra_access_token"

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/b;->Vb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_token_type"

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/b;->Vh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_mac_key"

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/b;->Vf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_mac_algorithm"

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/b;->Ve()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_expires_in"

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/b;->Vd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "extra_scope"

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/b;->Vg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_code"

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/b;->Vc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/H;->cw:Lcom/xiaomi/account/ui/F;

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Lcom/xiaomi/account/ui/F;->eJ(Lcom/xiaomi/account/ui/F;ILandroid/os/Bundle;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/b;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/H;->eQ(Lcom/xiaomi/accountsdk/account/data/b;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/H;->cw:Lcom/xiaomi/account/ui/F;

    iget-object v1, p0, Lcom/xiaomi/account/ui/H;->cw:Lcom/xiaomi/account/ui/F;

    const v2, 0x7f0c0192

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/ui/F;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/F;->eL(Lcom/xiaomi/account/ui/F;Ljava/lang/String;)V

    return-void
.end method
