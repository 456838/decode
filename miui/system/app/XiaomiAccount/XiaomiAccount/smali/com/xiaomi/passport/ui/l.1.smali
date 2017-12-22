.class public abstract Lcom/xiaomi/passport/ui/l;
.super Landroid/app/Fragment;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/ui/a;


# instance fields
.field protected pA:Ljava/lang/String;

.field protected pB:Ljava/lang/String;

.field private pC:Z

.field protected px:Z

.field protected py:Ljava/lang/String;

.field protected pz:Lcom/xiaomi/passport/ui/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static uc(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/utils/m;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/utils/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/m;->DR()Lcom/xiaomi/passport/utils/n;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/utils/n;->Ed(Z)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method static ud(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private uf()V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/l;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xG(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    const v1, 0x7f0c0009

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/l;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->xD(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/xiaomi/passport/ui/ak;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/ak;-><init>(Lcom/xiaomi/passport/ui/l;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/passport/ui/C;->xC(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "SkipAlert"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private uh(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/xiaomi/passport/ui/ai;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/ai;-><init>(Lcom/xiaomi/passport/ui/l;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic ui(Lcom/xiaomi/passport/ui/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/l;->uf()V

    return-void
.end method


# virtual methods
.method protected abstract ep()Ljava/lang/String;
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "do_identification_success"

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/l;->tS(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v1, p2, :cond_3

    iget-object v1, p0, Lcom/xiaomi/passport/ui/l;->pz:Lcom/xiaomi/passport/ui/m;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_2

    const-string/jumbo v1, "extra_user_id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz p3, :cond_1

    const-string/jumbo v0, "extra_authtoken"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/passport/ui/l;->pz:Lcom/xiaomi/passport/ui/m;

    iget-boolean v3, p0, Lcom/xiaomi/passport/ui/l;->pC:Z

    invoke-interface {v2, v1, v0, v3}, Lcom/xiaomi/passport/ui/m;->fK(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    const v0, 0x7f0c0085

    const v1, 0x7f0c009c

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/ui/l;->tU(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/l;->ua(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "extra_show_skip_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/passport/ui/l;->px:Z

    const-string/jumbo v1, "androidPackageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/l;->py:Ljava/lang/String;

    const-string/jumbo v1, "service_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/l;->pA:Ljava/lang/String;

    const-string/jumbo v1, "extra_build_region_info"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/l;->pB:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/l;->pA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "passportapi"

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/passport/ui/l;->pA:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/l;->py:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/l;->py:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/xiaomi/passport/ui/l;->py:Ljava/lang/String;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/l;->pA:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/passport/ui/g;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/g;

    invoke-interface {v0}, Lcom/xiaomi/passport/ui/g;->dL()Lcom/xiaomi/passport/ui/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/g;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/ui/g;->dM(Lcom/xiaomi/passport/ui/a;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/a/a;->sB()V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/passport/ui/g;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/g;

    invoke-interface {v0, p0}, Lcom/xiaomi/passport/ui/g;->dM(Lcom/xiaomi/passport/ui/a;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->ep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/a/a;->sC(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/passport/ui/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/BaseActivity;->sS()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Lcom/xiaomi/passport/ui/l;->uc(Landroid/app/Activity;Landroid/view/View;)V

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/l;->px:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f10007d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/passport/ui/l;->uh(Landroid/view/View;Z)V

    const v1, 0x7f10007e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/xiaomi/passport/ui/l;->uh(Landroid/view/View;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->te()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected tP(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/l;->px:Z

    iget-object v1, p0, Lcom/xiaomi/passport/ui/l;->py:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/passport/utils/w;->Fx(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public tQ(Lcom/xiaomi/passport/ui/m;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/l;->pz:Lcom/xiaomi/passport/ui/m;

    return-void
.end method

.method protected tR(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Z)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/l;->pz:Lcom/xiaomi/passport/ui/m;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->VA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vy()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/account/data/u;->Ya(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/u;->Yb()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/l;->pz:Lcom/xiaomi/passport/ui/m;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vq()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, p2}, Lcom/xiaomi/passport/ui/m;->fK(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected tS(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/l;->px:Z

    iget-object v1, p0, Lcom/xiaomi/passport/ui/l;->py:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/passport/utils/w;->Fy(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method protected tT()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected tU(II)V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/l;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xG(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/xiaomi/passport/ui/l;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->xC(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "detail message"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected tV()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->tX()V

    new-instance v0, Lcom/xiaomi/passport/ui/aj;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/aj;-><init>(Lcom/xiaomi/passport/ui/l;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/l;->tW(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected tW(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/l;->pz:Lcom/xiaomi/passport/ui/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/l;->pz:Lcom/xiaomi/passport/ui/m;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/ui/m;->fA(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected tX()V
    .locals 1

    const-string/jumbo v0, "provision_click_skip_login_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/l;->tS(Ljava/lang/String;)V

    return-void
.end method

.method protected tY()V
    .locals 1

    const-string/jumbo v0, "provision_click_confirm_skip_login_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/l;->tS(Ljava/lang/String;)V

    return-void
.end method

.method protected tZ(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v3, 0x1

    const-string/jumbo v0, "need_notification"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/l;->tS(Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/xiaomi/passport/ui/l;->pC:Z

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v5, p0, Lcom/xiaomi/passport/ui/l;->px:Z

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/passport/utils/o;->El(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Parcelable;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/ui/l;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected te()I
    .locals 1

    const v0, 0x7f0c000b

    return v0
.end method

.method public ua(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "accountAuthenticatorResponse"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {p1, v3, v3}, Lcom/xiaomi/passport/utils/x;->FF(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/passport/utils/o;->Ej(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected ub(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/passport/data/a;->yI()Lcom/xiaomi/passport/data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/data/a;->yH(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)Z

    move-result v0

    return v0
.end method

.method protected ue(Landroid/widget/TextView;Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/passport/data/a;->yI()Lcom/xiaomi/passport/data/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/passport/data/a;->yK(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p3}, Lcom/xiaomi/passport/data/a;->yH(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)Z

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/xiaomi/passport/ui/l;->ud(Landroid/widget/TextView;Ljava/lang/String;Z)V

    return-void
.end method

.method protected ug(Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/l;->px:Z

    iget-object v1, p0, Lcom/xiaomi/passport/ui/l;->py:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/xiaomi/passport/utils/w;->Fs(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method
