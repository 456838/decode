.class public Lcom/xiaomi/passport/ui/k;
.super Lcom/xiaomi/passport/ui/l;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaomi/passport/ui/i;


# instance fields
.field private pn:Lcom/xiaomi/passport/ui/h;

.field private po:Landroid/widget/Button;

.field private pp:Landroid/widget/TextView;

.field private pq:Landroid/view/View;

.field private pr:Lcom/xiaomi/passport/ui/PassportGroupEditText;

.field private ps:Lcom/xiaomi/passport/ui/PassportGroupEditText;

.field private pt:Lcom/xiaomi/passport/task/i;

.field private pu:Z

.field private pv:Landroid/widget/ImageView;

.field private pw:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/l;-><init>()V

    return-void
.end method

.method private tC(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/ui/h;)V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pt:Lcom/xiaomi/passport/task/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pt:Lcom/xiaomi/passport/task/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/i;->cancel(Z)Z

    :cond_0
    invoke-virtual {p3}, Lcom/xiaomi/passport/ui/h;->tl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/xiaomi/passport/ui/h;->tm()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/xiaomi/passport/ui/h;->tk()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/xiaomi/passport/ui/h;->ti()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/xiaomi/passport/task/j;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/task/j;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/xiaomi/passport/ui/aa;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/aa;-><init>(Lcom/xiaomi/passport/ui/k;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/j;->Hf(Ljava/lang/Runnable;)Lcom/xiaomi/passport/task/j;

    move-result-object v6

    new-instance v0, Lcom/xiaomi/passport/ui/ab;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/ui/ab;-><init>(Lcom/xiaomi/passport/ui/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/xiaomi/passport/task/j;->Hg(Lcom/xiaomi/passport/task/k;)Lcom/xiaomi/passport/task/j;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/ac;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/ac;-><init>(Lcom/xiaomi/passport/ui/k;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/j;->Hh(Ljava/lang/Runnable;)Lcom/xiaomi/passport/task/j;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/ad;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/ad;-><init>(Lcom/xiaomi/passport/ui/k;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/j;->Hi(Ljava/lang/Runnable;)Lcom/xiaomi/passport/task/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/j;->build()Lcom/xiaomi/passport/task/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/k;->pt:Lcom/xiaomi/passport/task/i;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pt:Lcom/xiaomi/passport/task/i;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/task/i;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private tD(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pr:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v1, 0x7f0c005e

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/k;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/passport/ui/k;->tI(Landroid/widget/EditText;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pr:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v1, 0x7f0c005f

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/k;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/passport/ui/k;->tI(Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->ps:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v1, 0x7f0c0060

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/k;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/passport/ui/k;->tI(Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/xiaomi/passport/utils/r;->EK(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->ps:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v1, 0x7f0c0061

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/k;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/passport/ui/k;->tI(Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private tE()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "extra_find_pwd_on_pc"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private tI(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/Z;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/passport/ui/Z;-><init>(Lcom/xiaomi/passport/ui/k;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private tJ()V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0034

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xG(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c000a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    const v1, 0x7f0c0018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->xD(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/xiaomi/passport/ui/ah;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/ah;-><init>(Lcom/xiaomi/passport/ui/k;)V

    const v2, 0x7f0c0041

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/passport/ui/C;->xC(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "FindPassword"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private tK()V
    .locals 4

    new-instance v0, Lcom/xiaomi/passport/widget/f;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/widget/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0086

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/widget/f;->setTitle(I)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    const v2, 0x7f0c0046

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/widget/f;->zv(I)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/f;->zB(Landroid/view/View;)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/f;->zt()Lcom/xiaomi/passport/widget/e;

    move-result-object v0

    const v2, 0x7f1000a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/passport/ui/ae;

    invoke-direct {v3, p0}, Lcom/xiaomi/passport/ui/ae;-><init>(Lcom/xiaomi/passport/ui/k;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f1000a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/passport/ui/af;

    invoke-direct {v3, p0}, Lcom/xiaomi/passport/ui/af;-><init>(Lcom/xiaomi/passport/ui/k;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f10009d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/passport/ui/ag;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/passport/ui/ag;-><init>(Lcom/xiaomi/passport/ui/k;Lcom/xiaomi/passport/widget/e;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->show()V

    return-void
.end method

.method private tL()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->ps:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/k;->pv:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/xiaomi/passport/ui/k;->pu:Z

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/passport/utils/r;->EJ(Lcom/xiaomi/passport/ui/PassportGroupEditText;Landroid/widget/ImageView;ZLandroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic tM(Lcom/xiaomi/passport/ui/k;)Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/k;->tE()Z

    move-result v0

    return v0
.end method

.method static synthetic tN(Lcom/xiaomi/passport/ui/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/k;->tJ()V

    return-void
.end method

.method static synthetic tO(Lcom/xiaomi/passport/ui/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/k;->tK()V

    return-void
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "InputRegisterEmailFragm"

    return-object v0
.end method

.method public iX(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->tH()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/l;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/passport/ui/h;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/passport/ui/h;-><init>(Landroid/app/Activity;Lcom/xiaomi/passport/ui/i;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/k;->pn:Lcom/xiaomi/passport/ui/h;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/j;->Dv(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/passport/ui/l;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    const-string/jumbo v0, "country_iso"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/k;->pB:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_build_region_info"

    iget-object v2, p0, Lcom/xiaomi/passport/ui/k;->pB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pB:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/passport/utils/j;->Dw(Ljava/lang/String;)Lcom/xiaomi/passport/utils/k;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/k;->pw:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/xiaomi/passport/utils/k;->zW:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/k;->pv:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/xiaomi/passport/ui/k;->pu:Z

    if-eqz v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/k;->pu:Z

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/k;->tL()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/passport/ui/k;->po:Landroid/widget/Button;

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/passport/ui/k;->pp:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    :cond_3
    const-string/jumbo v0, "click_email_reg_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/k;->tP(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->tH()V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/passport/ui/k;->pq:Landroid/view/View;

    if-ne p1, v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.xiaomi.account.action.XIAOMI_ACCOUNT_AREA_CODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "extra_show_skip_login"

    iget-boolean v3, p0, Lcom/xiaomi/passport/ui/k;->px:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "show_country_code"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/passport/ui/k;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/k;->px:Z

    if-eqz v0, :cond_3

    const v0, 0x7f03002d

    :goto_0
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f100068

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/k;->pr:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pr:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->requestFocus()Z

    const v0, 0x7f100082

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/k;->ps:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/k;->px:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pr:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    sget-object v3, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sA:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xS(Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->ps:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    sget-object v3, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sB:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xS(Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;)V

    :cond_0
    const v0, 0x7f100084

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/k;->pv:Landroid/widget/ImageView;

    const v0, 0x7f100090

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/k;->pq:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pq:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100091

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/k;->pw:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/xiaomi/passport/utils/j;->Dw(Ljava/lang/String;)Lcom/xiaomi/passport/utils/k;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaomi/passport/ui/k;->pw:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/xiaomi/passport/utils/k;->zW:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100069

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/k;->po:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->po:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->po:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f10007f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/k;->pp:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pp:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/xiaomi/passport/ui/k;->pp:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/k;->px:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pp:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iput-boolean v1, p0, Lcom/xiaomi/passport/ui/k;->pu:Z

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/k;->tL()V

    return-object v2

    :cond_3
    const v0, 0x7f03001f

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pB:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pt:Lcom/xiaomi/passport/task/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pt:Lcom/xiaomi/passport/task/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/i;->cancel(Z)Z

    iput-object v2, p0, Lcom/xiaomi/passport/ui/k;->pt:Lcom/xiaomi/passport/task/i;

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/passport/ui/l;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/xiaomi/passport/ui/l;->onResume()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pr:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/k;->pr:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/r;->EI(Landroid/content/Context;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pr:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/k;->ps:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/r;->EI(Landroid/content/Context;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->ps:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->requestFocus()Z

    goto :goto_0
.end method

.method public tF()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pn:Lcom/xiaomi/passport/ui/h;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/h;->dismiss()V

    return-void
.end method

.method public tG()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pn:Lcom/xiaomi/passport/ui/h;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/h;->tm()V

    return-void
.end method

.method public tH()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/k;->pr:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/k;->ps:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/passport/ui/k;->tD(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/passport/ui/k;->pn:Lcom/xiaomi/passport/ui/h;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/passport/ui/k;->tC(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/ui/h;)V

    :cond_0
    return-void
.end method
