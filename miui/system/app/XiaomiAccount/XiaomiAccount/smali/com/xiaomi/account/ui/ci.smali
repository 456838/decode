.class final Lcom/xiaomi/account/ui/ci;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/account/ui/Q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic hH:Lcom/xiaomi/account/ui/SnsWebViewActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/SnsWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ci;->hH:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/ci;->iU([Ljava/lang/String;)Lcom/xiaomi/account/ui/Q;

    move-result-object v0

    return-object v0
.end method

.method protected varargs iU([Ljava/lang/String;)Lcom/xiaomi/account/ui/Q;
    .locals 6

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/ci;->hH:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    const-string/jumbo v4, "passportapi"

    invoke-static {v0, v4}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaomi/account/ui/ci;->hH:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v4}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->he(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/account/data/e;->lU()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/account/utils/q;->oE(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move v1, v2

    :goto_0
    new-instance v2, Lcom/xiaomi/account/ui/Q;

    iget-object v3, p0, Lcom/xiaomi/account/ui/ci;->hH:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-direct {v2, v3, v1, v0}, Lcom/xiaomi/account/ui/Q;-><init>(Lcom/xiaomi/account/ui/SnsWebViewActivity;ILjava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SnsWebViewActivity"

    const-string/jumbo v3, "Exception"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x5

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "SnsWebViewActivity"

    const-string/jumbo v3, "AccessDeniedException"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v2, "SnsWebViewActivity"

    const-string/jumbo v4, "InvalidResponseException"

    invoke-static {v2, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move v1, v3

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v2, "SnsWebViewActivity"

    const-string/jumbo v4, "AuthenticationFailureException"

    invoke-static {v2, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move v1, v3

    goto :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v2, "SnsWebViewActivity"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x2

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_0
.end method

.method protected iV(Lcom/xiaomi/account/ui/Q;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/account/ui/ci;->hH:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hg(Lcom/xiaomi/account/ui/SnsWebViewActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    invoke-virtual {p1}, Lcom/xiaomi/account/ui/Q;->lP()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/ci;->hH:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-virtual {p1}, Lcom/xiaomi/account/ui/Q;->lQ()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/xiaomi/account/ui/Q;->dW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/ci;->hH:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/ci;->hH:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hc(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/ci;->hH:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v2}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->he(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/account/data/e;->lT()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/xiaomi/account/ui/Q;->dW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/ci;->hH:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hd(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/ci;->hH:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    iget-object v1, p0, Lcom/xiaomi/account/ui/ci;->hH:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->he(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/account/data/e;->md()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dU(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/account/ui/ci;->hH:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->setResult(I)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/ci;->hH:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/ui/Q;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/ci;->iV(Lcom/xiaomi/account/ui/Q;)V

    return-void
.end method
