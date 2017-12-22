.class public Lcom/xiaomi/account/ui/BindSafeEmailActivity;
.super Lmiui/app/Activity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x1020002

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/BindSafeEmailActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/BindSafeEmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_has_unactivated_email"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/BindSafeEmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "unactivated_email_address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/account/ui/S;->hv(Ljava/lang/String;)Lcom/xiaomi/account/ui/S;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/BindSafeEmailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v3, v0}, Lcom/xiaomi/passport/utils/f;->Df(Landroid/app/FragmentManager;ILandroid/app/Fragment;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/account/ui/u;

    invoke-direct {v0}, Lcom/xiaomi/account/ui/u;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/BindSafeEmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/u;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/BindSafeEmailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v3, v0}, Lcom/xiaomi/passport/utils/f;->Df(Landroid/app/FragmentManager;ILandroid/app/Fragment;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "BindSafeEmailActivity"

    const-string/jumbo v1, "no xiaomi account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/BindSafeEmailActivity;->finish()V

    :cond_0
    return-void
.end method
