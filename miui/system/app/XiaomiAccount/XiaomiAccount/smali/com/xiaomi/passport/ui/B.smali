.class public Lcom/xiaomi/passport/ui/B;
.super Lcom/xiaomi/passport/ui/p;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final rT:Ljava/lang/String;


# instance fields
.field private mMetaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field private mStep1Token:Ljava/lang/String;

.field private rU:Lcom/xiaomi/passport/uicontroller/g;

.field private rV:Z

.field private rW:Lcom/xiaomi/passport/ui/m;

.field private rX:Lcom/xiaomi/passport/ui/C;

.field private rY:Ljava/lang/String;

.field private rZ:Lcom/xiaomi/passport/uicontroller/e;

.field final sa:Landroid/text/TextWatcher;

.field private sb:Landroid/widget/CheckBox;

.field private sc:Ljava/lang/String;

.field private sd:Lcom/xiaomi/passport/ui/PassportGroupEditText;

.field private se:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/passport/ui/B;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/ui/B;->rT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/p;-><init>()V

    new-instance v0, Lcom/xiaomi/passport/ui/aV;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/aV;-><init>(Lcom/xiaomi/passport/ui/B;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/B;->sa:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic xA(Lcom/xiaomi/passport/ui/B;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/B;->xn(I)V

    return-void
.end method

.method static synthetic xB(Lcom/xiaomi/passport/ui/B;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/B;->xq()V

    return-void
.end method

.method public static xd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/ui/m;Z)Lcom/xiaomi/passport/ui/B;
    .locals 9

    new-instance v0, Lcom/xiaomi/passport/ui/B;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/B;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/xiaomi/passport/ui/B;->xk(Lcom/xiaomi/passport/ui/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/ui/m;Z)V

    return-object v0
.end method

.method private xe(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/ui/aX;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/ui/aX;-><init>(Lcom/xiaomi/passport/ui/B;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/B;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/passport/uicontroller/n;->Nf(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/n;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/passport/uicontroller/n;->Ne(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Lcom/xiaomi/passport/uicontroller/l;)Lcom/xiaomi/passport/uicontroller/g;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/B;->rU:Lcom/xiaomi/passport/uicontroller/g;

    return-void
.end method

.method private xf()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->rX:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->rX:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private xg()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/B;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method private xh(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->rZ:Lcom/xiaomi/passport/uicontroller/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->rZ:Lcom/xiaomi/passport/uicontroller/e;

    invoke-virtual {v0}, Lcom/xiaomi/passport/uicontroller/e;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->sd:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/B;->sa:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/B;->rV:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/B;->xl()V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/B;->xm(Z)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/B;->xo()V

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/x;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/x;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/x;->YF(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/x;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/xiaomi/accountsdk/account/data/x;->YB(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/x;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/xiaomi/accountsdk/account/data/x;->YC(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/x;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/xiaomi/accountsdk/account/data/x;->YA(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/data/x;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaomi/accountsdk/account/data/x;->YE(Z)Lcom/xiaomi/accountsdk/account/data/x;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/account/data/x;->YD(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/x;->build()Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/aW;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/aW;-><init>(Lcom/xiaomi/passport/ui/B;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/B;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/passport/uicontroller/n;->Nf(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/n;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/passport/uicontroller/n;->Nh(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;Lcom/xiaomi/passport/uicontroller/j;)Lcom/xiaomi/passport/uicontroller/e;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/B;->rZ:Lcom/xiaomi/passport/uicontroller/e;

    return-void

    :cond_2
    sget-object v0, Lcom/xiaomi/passport/ui/B;->rT:Ljava/lang/String;

    const-string/jumbo v1, "step2 login has not finished"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static xk(Lcom/xiaomi/passport/ui/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/ui/m;Z)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "extra_username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "service_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_sign"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_qs"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_callback"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_step1_token"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_show_skip_login"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/B;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, p7}, Lcom/xiaomi/passport/ui/B;->tQ(Lcom/xiaomi/passport/ui/m;)V

    return-void
.end method

.method private xl()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->sd:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xT(Z)V

    return-void
.end method

.method private xm(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->sd:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->se:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private xn(I)V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x7f0c0085

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/passport/ui/B;->tU(II)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->sd:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xT(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->sd:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/B;->sa:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iput-boolean v2, p0, Lcom/xiaomi/passport/ui/B;->rV:Z

    return-void
.end method

.method private xo()V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    const v1, 0x7f0c0071

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/B;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/B;->rX:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->rX:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/B;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "LoginProgress"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private xp()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->sd:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->sb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->sd:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v1, 0x7f0c0063

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/B;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/passport/ui/B;->sc:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/B;->mMetaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v5, p0, Lcom/xiaomi/passport/ui/B;->mStep1Token:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/passport/ui/B;->rY:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/passport/ui/B;->xh(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private xq()V
    .locals 1

    const-string/jumbo v0, "login_step2_success"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/B;->uq(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic xr()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/ui/B;->rT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic xs(Lcom/xiaomi/passport/ui/B;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/B;->rV:Z

    return v0
.end method

.method static synthetic xt(Lcom/xiaomi/passport/ui/B;)Lcom/xiaomi/passport/ui/m;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->rW:Lcom/xiaomi/passport/ui/m;

    return-object v0
.end method

.method static synthetic xu(Lcom/xiaomi/passport/ui/B;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/passport/ui/B;->rV:Z

    return p1
.end method

.method static synthetic xv(Lcom/xiaomi/passport/ui/B;Lcom/xiaomi/passport/uicontroller/e;)Lcom/xiaomi/passport/uicontroller/e;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/B;->rZ:Lcom/xiaomi/passport/uicontroller/e;

    return-object p1
.end method

.method static synthetic xw(Lcom/xiaomi/passport/ui/B;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/B;->xe(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    return-void
.end method

.method static synthetic xx(Lcom/xiaomi/passport/ui/B;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/B;->xf()V

    return-void
.end method

.method static synthetic xy(Lcom/xiaomi/passport/ui/B;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/B;->xl()V

    return-void
.end method

.method static synthetic xz(Lcom/xiaomi/passport/ui/B;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/B;->xm(Z)V

    return-void
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/ui/B;->rT:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->se:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "click_step2_login_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/B;->uq(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/B;->xp()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/p;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/B;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "extra_username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/B;->sc:Ljava/lang/String;

    const-string/jumbo v1, "extra_step1_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/B;->mStep1Token:Ljava/lang/String;

    const-string/jumbo v1, "extra_sign"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "extra_qs"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "extra_callback"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-direct {v4, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/xiaomi/passport/ui/B;->mMetaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    const-string/jumbo v1, "service_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/B;->rY:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/B;->px:Z

    if-eqz v0, :cond_0

    const v0, 0x7f030031

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f100067

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/B;->se:Landroid/widget/Button;

    const v0, 0x7f10006e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/B;->sd:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v0, 0x7f10006f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/B;->sb:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->sd:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    sget-object v2, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sC:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xS(Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->se:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/B;->xl()V

    return-object v1

    :cond_0
    const v0, 0x7f030022

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->rZ:Lcom/xiaomi/passport/uicontroller/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->rZ:Lcom/xiaomi/passport/uicontroller/e;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/uicontroller/e;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/ui/B;->rZ:Lcom/xiaomi/passport/uicontroller/e;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->rU:Lcom/xiaomi/passport/uicontroller/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->rU:Lcom/xiaomi/passport/uicontroller/g;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/uicontroller/g;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/ui/B;->rU:Lcom/xiaomi/passport/uicontroller/g;

    :cond_1
    invoke-super {p0}, Lcom/xiaomi/passport/ui/p;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/passport/ui/p;->onResume()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/B;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/B;->sd:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->requestFocus()Z

    return-void
.end method

.method public tQ(Lcom/xiaomi/passport/ui/m;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/B;->rW:Lcom/xiaomi/passport/ui/m;

    return-void
.end method

.method protected xi()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/B;->xg()V

    return-void
.end method

.method protected xj()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/B;->xg()V

    return-void
.end method
