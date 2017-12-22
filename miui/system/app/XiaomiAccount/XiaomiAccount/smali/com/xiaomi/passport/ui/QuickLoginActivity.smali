.class public Lcom/xiaomi/passport/ui/QuickLoginActivity;
.super Lcom/xiaomi/passport/ui/BaseActivity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/QuickLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/passport/utils/o;->Ej(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    invoke-super {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/QuickLoginActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/QuickLoginActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v0, "quick_login"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/s;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/passport/ui/s;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/s;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/QuickLoginActivity;->getIntent()Landroid/content/Intent;

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

    :cond_1
    return-void
.end method

.method protected sT()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
