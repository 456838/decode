.class public Lcom/xiaomi/account/ui/LoginRegBaseActivity;
.super Lmiui/app/Activity;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/ui/g;


# instance fields
.field protected bu:Z

.field bv:Lcom/xiaomi/passport/ui/a;

.field protected bw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected dG(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->dI(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected dH()Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->dI(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected dI(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/xiaomi/passport/utils/x;->FF(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/passport/utils/o;->Ej(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->finish()V

    return-void
.end method

.method protected dJ(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1, p2, p3}, Lcom/xiaomi/passport/utils/x;->FF(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const-string/jumbo v2, "password_login"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "password_login"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "accountAuthenticatorResponse"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/xiaomi/passport/utils/x;->FF(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/passport/utils/o;->Ej(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v1}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->finish()V

    return-void
.end method

.method protected final dK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->bw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->bw:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public dL()Lcom/xiaomi/passport/ui/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->bv:Lcom/xiaomi/passport/ui/a;

    return-object v0
.end method

.method public dM(Lcom/xiaomi/passport/ui/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->bv:Lcom/xiaomi/passport/ui/a;

    return-void
.end method

.method protected dN(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->bu:Z

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->dK()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/xiaomi/passport/utils/w;->Fy(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method protected dO(Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->bu:Z

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->dK()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/xiaomi/passport/utils/w;->Fs(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->bv:Lcom/xiaomi/passport/ui/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->bv:Lcom/xiaomi/passport/ui/a;

    invoke-interface {v0}, Lcom/xiaomi/passport/ui/a;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lmiui/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_show_skip_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->bu:Z

    const-string/jumbo v1, "androidPackageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->bw:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->bw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->dK()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->bw:Ljava/lang/String;

    const-string/jumbo v1, "androidPackageName"

    iget-object v2, p0, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->bw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->bu:Z

    if-eqz v0, :cond_2

    sget v0, Lmiui/R$style;->Theme_Light_NoTitle:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->setTheme(I)V

    :cond_2
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
