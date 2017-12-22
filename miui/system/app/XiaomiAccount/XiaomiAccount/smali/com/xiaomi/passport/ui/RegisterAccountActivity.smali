.class public Lcom/xiaomi/passport/ui/RegisterAccountActivity;
.super Lcom/xiaomi/passport/ui/BaseActivity;
.source ""


# instance fields
.field private oY:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/RegisterAccountActivity;->oY:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/RegisterAccountActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/RegisterAccountActivity;->sP()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/passport/utils/r;->ED(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/RegisterAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_disable_back_key"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/passport/ui/RegisterAccountActivity;->oY:Z

    const-string/jumbo v1, "register_type_index"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/xiaomi/passport/RegisterType;->values()[Lcom/xiaomi/passport/RegisterType;

    move-result-object v1

    aget-object v2, v1, v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/RegisterAccountActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v1, 0x7f0c000b

    new-instance v0, Lcom/xiaomi/passport/v2/ui/g;

    invoke-direct {v0}, Lcom/xiaomi/passport/v2/ui/g;-><init>()V

    sget-object v4, Lcom/xiaomi/passport/RegisterType;->Lv:Lcom/xiaomi/passport/RegisterType;

    if-ne v2, v4, :cond_4

    new-instance v0, Lcom/xiaomi/passport/v2/ui/g;

    invoke-direct {v0}, Lcom/xiaomi/passport/v2/ui/g;-><init>()V

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/RegisterAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/RegisterAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x1020002

    invoke-static {v1, v2, v0}, Lcom/xiaomi/passport/utils/f;->Df(Landroid/app/FragmentManager;ILandroid/app/Fragment;)V

    return-void

    :cond_4
    sget-object v4, Lcom/xiaomi/passport/RegisterType;->Lw:Lcom/xiaomi/passport/RegisterType;

    if-ne v2, v4, :cond_5

    new-instance v0, Lcom/xiaomi/passport/ui/u;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/u;-><init>()V

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/xiaomi/passport/RegisterType;->Lx:Lcom/xiaomi/passport/RegisterType;

    if-ne v2, v4, :cond_6

    const v1, 0x7f0c002c

    new-instance v0, Lcom/xiaomi/passport/ui/u;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/u;-><init>()V

    goto :goto_0

    :cond_6
    sget-object v4, Lcom/xiaomi/passport/RegisterType;->Ly:Lcom/xiaomi/passport/RegisterType;

    if-ne v2, v4, :cond_7

    new-instance v0, Lcom/xiaomi/passport/v2/ui/k;

    invoke-direct {v0}, Lcom/xiaomi/passport/v2/ui/k;-><init>()V

    goto :goto_0

    :cond_7
    sget-object v4, Lcom/xiaomi/passport/RegisterType;->Lz:Lcom/xiaomi/passport/RegisterType;

    if-ne v2, v4, :cond_2

    new-instance v0, Lcom/xiaomi/passport/ui/k;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/k;-><init>()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/RegisterAccountActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/passport/ui/q;->uG()V

    invoke-super {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/RegisterAccountActivity;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    return-void
.end method
