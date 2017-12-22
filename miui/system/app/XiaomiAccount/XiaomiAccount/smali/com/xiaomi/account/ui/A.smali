.class Lcom/xiaomi/account/ui/A;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/account/ui/B;",
        ">;"
    }
.end annotation


# instance fields
.field private bM:Lmiui/app/Activity;

.field private bN:Z

.field final synthetic bO:Lcom/xiaomi/account/ui/SnsAccountActivity;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/ui/SnsAccountActivity;Lmiui/app/Activity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/account/ui/A;->bM:Lmiui/app/Activity;

    iput-boolean p3, p0, Lcom/xiaomi/account/ui/A;->bN:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/A;->eh([Ljava/lang/Void;)Lcom/xiaomi/account/ui/B;

    move-result-object v0

    return-object v0
.end method

.method protected varargs eh([Ljava/lang/Void;)Lcom/xiaomi/account/ui/B;
    .locals 12

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x5

    iget-object v4, p0, Lcom/xiaomi/account/ui/A;->bM:Lmiui/app/Activity;

    invoke-virtual {v4}, Lmiui/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    iget-object v4, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v4}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dV(Lcom/xiaomi/account/ui/SnsAccountActivity;)Landroid/accounts/Account;

    move-result-object v4

    iget-object v7, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v7}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dW(Lcom/xiaomi/account/ui/SnsAccountActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/account/data/e;->lT()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v1, Lcom/xiaomi/account/ui/B;

    iget-object v2, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-direct {v1, v2, v0, v5}, Lcom/xiaomi/account/ui/B;-><init>(Lcom/xiaomi/account/ui/SnsAccountActivity;IZ)V

    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/xiaomi/account/ui/A;->bM:Lmiui/app/Activity;

    const-string/jumbo v7, "passportapi"

    invoke-static {v4, v7}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v7

    if-nez v7, :cond_1

    const-string/jumbo v0, "SnsAccountActivity"

    const-string/jumbo v1, "null passportInfo"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_1
    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dW(Lcom/xiaomi/account/ui/SnsAccountActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/data/e;->lU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/xiaomi/account/utils/q;->oB(Lcom/xiaomi/passport/data/c;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v11, v1

    move v1, v0

    move v0, v11

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v2}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dV(Lcom/xiaomi/account/ui/SnsAccountActivity;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v3}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dW(Lcom/xiaomi/account/ui/SnsAccountActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/account/data/e;->lT()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3, v10}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v2}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dV(Lcom/xiaomi/account/ui/SnsAccountActivity;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v3}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dW(Lcom/xiaomi/account/ui/SnsAccountActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/account/data/e;->lX()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3, v10}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v2}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dV(Lcom/xiaomi/account/ui/SnsAccountActivity;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v3}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dW(Lcom/xiaomi/account/ui/SnsAccountActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/account/data/e;->lY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3, v10}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v2}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dV(Lcom/xiaomi/account/ui/SnsAccountActivity;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v3}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dW(Lcom/xiaomi/account/ui/SnsAccountActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/account/data/e;->lS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3, v10}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "miui.intent.action.ACTION_IMPORT_SINA_WEIBO_CANCELED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/xiaomi/account/ui/SnsAccountActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    new-instance v2, Lcom/xiaomi/account/ui/B;

    iget-object v3, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-direct {v2, v3, v0, v1}, Lcom/xiaomi/account/ui/B;-><init>(Lcom/xiaomi/account/ui/SnsAccountActivity;IZ)V

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SnsAccountActivity"

    const-string/jumbo v4, "InvalidAccessTokenRunnable error"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v3, "SnsAccountActivity"

    const-string/jumbo v4, "InvalidAccessTokenRunnable error"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v8, "SnsAccountActivity"

    const-string/jumbo v9, "InvalidAccessTokenRunnable error"

    invoke-static {v8, v9, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/account/ui/A;->bM:Lmiui/app/Activity;

    invoke-virtual {v7, v0}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v5

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v2, "SnsAccountActivity"

    const-string/jumbo v3, "InvalidAccessTokenRunnable error"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    const-string/jumbo v2, "SnsAccountActivity"

    const-string/jumbo v4, "InvalidAccessTokenRunnable error"

    invoke-static {v2, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    goto/16 :goto_1
.end method

.method protected ei(Lcom/xiaomi/account/ui/B;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->ec(Lcom/xiaomi/account/ui/SnsAccountActivity;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dZ(Lcom/xiaomi/account/ui/SnsAccountActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    if-nez p1, :cond_0

    const-string/jumbo v0, "SnsAccountActivity"

    const-string/jumbo v1, "null result"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/A;->bM:Lmiui/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/A;->bM:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "SnsAccountActivity"

    const-string/jumbo v1, "no attached activity"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/account/ui/B;->lP()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/account/ui/A;->bM:Lmiui/app/Activity;

    invoke-virtual {p1}, Lcom/xiaomi/account/ui/B;->lQ()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-boolean v0, p1, Lcom/xiaomi/account/ui/B;->bP:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/A;->bN:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/account/ui/A;->bM:Lmiui/app/Activity;

    iget-object v1, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dW(Lcom/xiaomi/account/ui/SnsAccountActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/account/data/e;->md()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->gU(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/ui/B;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/A;->ei(Lcom/xiaomi/account/ui/B;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/A;->bO:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->ed(Lcom/xiaomi/account/ui/SnsAccountActivity;)V

    return-void
.end method
