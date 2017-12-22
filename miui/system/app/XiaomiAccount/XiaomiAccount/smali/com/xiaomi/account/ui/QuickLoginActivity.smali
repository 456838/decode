.class public Lcom/xiaomi/account/ui/QuickLoginActivity;
.super Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d007a

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/QuickLoginActivity;->setTheme(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/QuickLoginActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/QuickLoginActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v0, "quick_login"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/s;

    if-nez v0, :cond_2

    new-instance v0, Lcom/xiaomi/passport/ui/s;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/s;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/QuickLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/ui/s;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "quick_login"

    const v3, 0x1020002

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method
