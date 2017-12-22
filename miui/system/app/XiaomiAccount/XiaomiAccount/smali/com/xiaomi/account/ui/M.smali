.class Lcom/xiaomi/account/ui/M;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private dA:Landroid/os/Bundle;

.field final synthetic dB:Lcom/xiaomi/account/ui/AuthorizeActivity;

.field private dz:Lmiui/app/Activity;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/ui/AuthorizeActivity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/M;->dB:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/account/ui/M;->dz:Lmiui/app/Activity;

    iput-object p2, p0, Lcom/xiaomi/account/ui/M;->dA:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/M;->gx([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected varargs gx([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    new-instance v0, Lcom/xiaomi/account/utils/d;

    invoke-direct {v0}, Lcom/xiaomi/account/utils/d;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/account/ui/M;->dz:Lmiui/app/Activity;

    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/M;->dz:Lmiui/app/Activity;

    iget-object v3, p0, Lcom/xiaomi/account/ui/M;->dA:Landroid/os/Bundle;

    const-string/jumbo v4, "client_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/account/ui/M;->dA:Landroid/os/Bundle;

    const-string/jumbo v5, "redirect_uri"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/xiaomi/account/utils/d;->nj(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/accountsdk/account/data/u;->parse(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/u;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/xiaomi/accountsdk/account/data/u;->SW:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/xiaomi/account/ui/M;->dz:Lmiui/app/Activity;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/u;->SW:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcom/xiaomi/account/utils/d;->nm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected gy(Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/M;->dB:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gu(Lcom/xiaomi/account/ui/AuthorizeActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/M;->dB:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gt(Lcom/xiaomi/account/ui/AuthorizeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/account/ui/M;->dB:Lcom/xiaomi/account/ui/AuthorizeActivity;

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gv(Lcom/xiaomi/account/ui/AuthorizeActivity;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/M;->gy(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/M;->dB:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gq(Lcom/xiaomi/account/ui/AuthorizeActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
