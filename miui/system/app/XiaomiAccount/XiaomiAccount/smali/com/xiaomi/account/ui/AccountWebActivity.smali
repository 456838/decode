.class public Lcom/xiaomi/account/ui/AccountWebActivity;
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

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountWebActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/ui/f;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/f;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/f;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountWebActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x1020002

    invoke-static {v1, v2, v0}, Lcom/xiaomi/passport/utils/f;->Df(Landroid/app/FragmentManager;ILandroid/app/Fragment;)V

    return-void
.end method
