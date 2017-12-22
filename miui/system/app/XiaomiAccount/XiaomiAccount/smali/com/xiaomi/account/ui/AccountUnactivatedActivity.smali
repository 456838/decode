.class public Lcom/xiaomi/account/ui/AccountUnactivatedActivity;
.super Lcom/xiaomi/account/ui/LoginRegBaseActivity;
.source ""


# instance fields
.field private ab:Z

.field private ac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;-><init>()V

    return-void
.end method

.method private aU(Landroid/app/FragmentManager;)V
    .locals 4

    new-instance v1, Lcom/xiaomi/passport/ui/b;

    invoke-direct {v1}, Lcom/xiaomi/passport/ui/b;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountUnactivatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string/jumbo v2, "extra_show_skip_login"

    iget-boolean v3, p0, Lcom/xiaomi/account/ui/AccountUnactivatedActivity;->bu:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "androidPackageName"

    iget-object v3, p0, Lcom/xiaomi/account/ui/AccountUnactivatedActivity;->ac:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const/16 v2, 0x1003

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string/jumbo v2, "unactivated"

    const v3, 0x1020002

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/AccountUnactivatedActivity;->ab:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/AccountUnactivatedActivity;->dG(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    const v0, 0x7f0d0067

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/AccountUnactivatedActivity;->setTheme(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountUnactivatedActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountUnactivatedActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountUnactivatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_disable_back_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/account/ui/AccountUnactivatedActivity;->ab:Z

    const-string/jumbo v1, "androidPackageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/AccountUnactivatedActivity;->ac:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountUnactivatedActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "unactivated"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/AccountUnactivatedActivity;->aU(Landroid/app/FragmentManager;)V

    :cond_3
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/AccountUnactivatedActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->onResume()V

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/account/utils/p;->op(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
