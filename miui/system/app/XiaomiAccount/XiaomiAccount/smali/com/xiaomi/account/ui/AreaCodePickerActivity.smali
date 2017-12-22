.class public Lcom/xiaomi/account/ui/AreaCodePickerActivity;
.super Lcom/xiaomi/account/ui/LoginRegBaseActivity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/AreaCodePickerActivity;->setRequestedOrientation(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AreaCodePickerActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AreaCodePickerActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f0c007c

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    :cond_2
    new-instance v0, Lcom/xiaomi/passport/ui/j;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/j;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AreaCodePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/j;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AreaCodePickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x1020002

    invoke-static {v1, v2, v0}, Lcom/xiaomi/passport/utils/f;->Df(Landroid/app/FragmentManager;ILandroid/app/Fragment;)V

    return-void
.end method
