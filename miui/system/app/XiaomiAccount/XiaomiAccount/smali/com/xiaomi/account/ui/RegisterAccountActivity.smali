.class public Lcom/xiaomi/account/ui/RegisterAccountActivity;
.super Lcom/xiaomi/account/ui/LoginRegBaseActivity;
.source ""


# instance fields
.field private bx:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/xiaomi/account/ui/RegisterAccountActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/RegisterAccountActivity;->finish()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/RegisterAccountActivity;->bx:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/RegisterAccountActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/RegisterAccountActivity;->dH()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/RegisterAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v0, "extra_disable_back_key"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/account/ui/RegisterAccountActivity;->bx:Z

    const-string/jumbo v0, "register_type_index"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/xiaomi/passport/RegisterType;->values()[Lcom/xiaomi/passport/RegisterType;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/RegisterAccountActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    const v1, 0x7f0c000b

    sget-object v4, Lcom/xiaomi/passport/RegisterType;->Lw:Lcom/xiaomi/passport/RegisterType;

    if-ne v0, v4, :cond_3

    new-instance v0, Lcom/xiaomi/passport/ui/u;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/u;-><init>()V

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    :cond_2
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/RegisterAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x1020002

    invoke-static {v1, v2, v0}, Lcom/xiaomi/passport/utils/f;->Df(Landroid/app/FragmentManager;ILandroid/app/Fragment;)V

    return-void

    :cond_3
    sget-object v4, Lcom/xiaomi/passport/RegisterType;->Lx:Lcom/xiaomi/passport/RegisterType;

    if-ne v0, v4, :cond_4

    const v1, 0x7f0c002c

    new-instance v0, Lcom/xiaomi/passport/ui/u;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/u;-><init>()V

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/xiaomi/passport/RegisterType;->Ly:Lcom/xiaomi/passport/RegisterType;

    if-ne v0, v4, :cond_5

    new-instance v0, Lcom/xiaomi/passport/v2/ui/k;

    invoke-direct {v0}, Lcom/xiaomi/passport/v2/ui/k;-><init>()V

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/xiaomi/passport/RegisterType;->Lz:Lcom/xiaomi/passport/RegisterType;

    if-ne v0, v4, :cond_6

    new-instance v0, Lcom/xiaomi/passport/ui/k;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/k;-><init>()V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/xiaomi/passport/v2/ui/g;

    invoke-direct {v0}, Lcom/xiaomi/passport/v2/ui/g;-><init>()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/passport/ui/q;->uG()V

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/a/a;->sB()V

    invoke-super {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/account/ui/LoginRegBaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/RegisterAccountActivity;->dH()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-string/jumbo v1, "RegisterAccountActivity"

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/a/a;->sC(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
