.class public Lcom/xiaomi/account/ui/VerifyPhoneActivity;
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
    .locals 3

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/VerifyPhoneActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/account/ui/s;

    invoke-direct {v0}, Lcom/xiaomi/account/ui/s;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/VerifyPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/s;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/VerifyPhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x1020002

    invoke-static {v1, v2, v0}, Lcom/xiaomi/passport/utils/f;->Df(Landroid/app/FragmentManager;ILandroid/app/Fragment;)V

    return-void
.end method
