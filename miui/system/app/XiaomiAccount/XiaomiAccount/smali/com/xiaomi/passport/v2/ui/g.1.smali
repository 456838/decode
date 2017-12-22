.class public Lcom/xiaomi/passport/v2/ui/g;
.super Lcom/xiaomi/passport/v2/ui/h;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Dc:Landroid/widget/TextView;

.field private Dd:Landroid/view/View;

.field private De:Lcom/xiaomi/passport/task/i;

.field private Df:Landroid/widget/Button;

.field private Dg:Landroid/widget/TextView;

.field private Dh:Lcom/xiaomi/passport/task/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/h;-><init>()V

    return-void
.end method

.method public static JF(Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/v2/ui/g;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    new-instance v1, Lcom/xiaomi/passport/v2/ui/g;

    invoke-direct {v1}, Lcom/xiaomi/passport/v2/ui/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/v2/ui/g;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p1}, Lcom/xiaomi/passport/v2/ui/g;->tQ(Lcom/xiaomi/passport/ui/m;)V

    return-object v1
.end method

.method private JG(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 7

    new-instance v4, Lcom/xiaomi/passport/v2/ui/ae;

    invoke-direct {v4, p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/ae;-><init>(Lcom/xiaomi/passport/v2/ui/g;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    new-instance v6, Lcom/xiaomi/passport/v2/ui/af;

    invoke-direct {v6, p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/af;-><init>(Lcom/xiaomi/passport/v2/ui/g;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    const v3, 0x7f0c00bf

    const v5, 0x7f0c00be

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/passport/v2/ui/g;->JT(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private JI(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/passport/utils/j;->Dw(Ljava/lang/String;)Lcom/xiaomi/passport/utils/k;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/g;->Dg:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/xiaomi/passport/utils/k;->zW:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/g;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "extra_build_region_info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private JK()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/g;->JR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/g;->JS()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/g;->JH(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic JL(Lcom/xiaomi/passport/v2/ui/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->pB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic JM(Lcom/xiaomi/passport/v2/ui/g;)Lcom/xiaomi/passport/ui/m;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->pz:Lcom/xiaomi/passport/ui/m;

    return-object v0
.end method

.method static synthetic JN(Lcom/xiaomi/passport/v2/ui/g;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/g;->JG(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    return-void
.end method

.method static synthetic JO(Lcom/xiaomi/passport/v2/ui/g;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/v2/ui/g;->tS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic JP(Lcom/xiaomi/passport/v2/ui/g;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/g;->ug(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected Ij()V
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/c;->WL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/g;->JU(Ljava/lang/String;)V

    return-void
.end method

.method protected Il(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/g;->JK()V

    return-void
.end method

.method protected In(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/passport/v2/ui/g;->JJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public JH(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Dh:Lcom/xiaomi/passport/task/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Dh:Lcom/xiaomi/passport/task/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/f;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/task/g;

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaomi/passport/v2/ui/g;->px:Z

    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/g;->py:Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/xiaomi/passport/task/g;-><init>(Landroid/app/Activity;ZZLjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/task/g;->GH(Ljava/lang/String;)Lcom/xiaomi/passport/task/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/passport/task/g;->GF(Ljava/lang/String;)Lcom/xiaomi/passport/task/g;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/g;->pz:Lcom/xiaomi/passport/ui/m;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/g;->GE(Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/task/g;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/g;->pB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/g;->GI(Ljava/lang/String;)Lcom/xiaomi/passport/task/g;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/v2/ui/ac;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/v2/ui/ac;-><init>(Lcom/xiaomi/passport/v2/ui/g;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/g;->GD(Landroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/passport/task/g;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/v2/ui/ad;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/v2/ui/ad;-><init>(Lcom/xiaomi/passport/v2/ui/g;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/g;->GG(Lcom/xiaomi/passport/task/h;)Lcom/xiaomi/passport/task/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/g;->build()Lcom/xiaomi/passport/task/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Dh:Lcom/xiaomi/passport/task/f;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Dh:Lcom/xiaomi/passport/task/f;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/task/f;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public JJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->De:Lcom/xiaomi/passport/task/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->De:Lcom/xiaomi/passport/task/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/i;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/task/j;

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/task/j;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/xiaomi/passport/v2/ui/Z;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/passport/v2/ui/Z;-><init>(Lcom/xiaomi/passport/v2/ui/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/j;->Hg(Lcom/xiaomi/passport/task/k;)Lcom/xiaomi/passport/task/j;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/v2/ui/aa;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/v2/ui/aa;-><init>(Lcom/xiaomi/passport/v2/ui/g;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/j;->Hf(Ljava/lang/Runnable;)Lcom/xiaomi/passport/task/j;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/v2/ui/ab;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/v2/ui/ab;-><init>(Lcom/xiaomi/passport/v2/ui/g;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/j;->Hh(Ljava/lang/Runnable;)Lcom/xiaomi/passport/task/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/j;->build()Lcom/xiaomi/passport/task/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->De:Lcom/xiaomi/passport/task/i;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->De:Lcom/xiaomi/passport/task/i;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/task/i;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "PhoneTicketRegisterFragment"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/passport/v2/ui/h;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    const-string/jumbo v0, "country_iso"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->pB:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->pB:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/ui/g;->JI(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Df:Landroid/widget/Button;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Dc:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "click_check_verify_code_btn"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/v2/ui/g;->ug(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/g;->JK()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Dd:Landroid/view/View;

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.account.action.XIAOMI_ACCOUNT_AREA_CODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "extra_show_skip_login"

    iget-boolean v2, p0, Lcom/xiaomi/passport/v2/ui/g;->px:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "show_country_code"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/g;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/xiaomi/passport/v2/ui/h;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/g;->px:Z

    if-eqz v0, :cond_2

    const v0, 0x7f030039

    :goto_0
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f100090

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Dd:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Dd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100091

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Dg:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->pB:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/ui/g;->JI(Ljava/lang/String;)V

    const v0, 0x7f10004e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Df:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Df:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Df:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f10007f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Dc:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Dc:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/g;->Dc:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/g;->px:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Dc:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object v2

    :cond_2
    const v0, 0x7f030046

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->De:Lcom/xiaomi/passport/task/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->De:Lcom/xiaomi/passport/task/i;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/task/i;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/v2/ui/g;->De:Lcom/xiaomi/passport/task/i;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Dh:Lcom/xiaomi/passport/task/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/g;->Dh:Lcom/xiaomi/passport/task/f;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/task/f;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/v2/ui/g;->Dh:Lcom/xiaomi/passport/task/f;

    :cond_1
    invoke-super {p0}, Lcom/xiaomi/passport/v2/ui/h;->onDestroy()V

    return-void
.end method

.method protected te()I
    .locals 1

    const v0, 0x7f0c000b

    return v0
.end method
