.class public Lcom/xiaomi/passport/v2/ui/b;
.super Lcom/xiaomi/passport/v2/ui/h;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/h;-><init>()V

    return-void
.end method

.method private Ig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/v2/ui/x;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/x;-><init>(Lcom/xiaomi/passport/v2/ui/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/b;->tW(Ljava/lang/Runnable;)V

    return-void
.end method

.method private Ih()V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/v2/ui/w;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/v2/ui/w;-><init>(Lcom/xiaomi/passport/v2/ui/b;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/b;->tW(Ljava/lang/Runnable;)V

    return-void
.end method

.method private Ii(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 7

    new-instance v4, Lcom/xiaomi/passport/v2/ui/z;

    invoke-direct {v4, p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/z;-><init>(Lcom/xiaomi/passport/v2/ui/b;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    new-instance v6, Lcom/xiaomi/passport/v2/ui/A;

    invoke-direct {v6, p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/A;-><init>(Lcom/xiaomi/passport/v2/ui/b;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    const v3, 0x7f0c00bc

    const v5, 0x7f0c00bd

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/passport/v2/ui/b;->JT(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static Ik(Landroid/os/Bundle;)Lcom/xiaomi/passport/v2/ui/b;
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/v2/ui/b;

    invoke-direct {v0}, Lcom/xiaomi/passport/v2/ui/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/v2/ui/b;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private Im(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "PhoneTicketLoginFragment"

    const-string/jumbo v1, "start to query phone user info"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/C;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/C;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accountsdk/account/data/C;->YX(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/C;->build()Lcom/xiaomi/accountsdk/account/data/B;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/b;->CK:Lcom/xiaomi/passport/v2/utils/f;

    new-instance v2, Lcom/xiaomi/passport/v2/ui/y;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/passport/v2/ui/y;-><init>(Lcom/xiaomi/passport/v2/ui/b;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/passport/v2/utils/f;->Lw(Lcom/xiaomi/accountsdk/account/data/B;Lcom/xiaomi/passport/uicontroller/A;Z)V

    return-void
.end method

.method private Io(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/s;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/s;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/s;->XN(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/b;->pA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/s;->XS(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/s;->build()Lcom/xiaomi/accountsdk/account/data/r;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/v2/ui/v;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/v2/ui/v;-><init>(Lcom/xiaomi/passport/v2/ui/b;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/b;->Iz(Lcom/xiaomi/accountsdk/account/data/r;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    return-void
.end method

.method private Ip()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/b;->JR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/b;->JS()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/b;->Ig(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Iq(Lcom/xiaomi/passport/v2/ui/b;)Lcom/xiaomi/passport/ui/m;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/b;->pz:Lcom/xiaomi/passport/ui/m;

    return-object v0
.end method

.method static synthetic Ir(Lcom/xiaomi/passport/v2/ui/b;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/b;->Ii(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    return-void
.end method

.method static synthetic Is(Lcom/xiaomi/passport/v2/ui/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/b;->Im(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic It(Lcom/xiaomi/passport/v2/ui/b;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/b;->tU(II)V

    return-void
.end method


# virtual methods
.method protected Ij()V
    .locals 0

    return-void
.end method

.method protected Il(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/b;->Ip()V

    return-void
.end method

.method protected In(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/v2/ui/b;->Io(Ljava/lang/String;)V

    return-void
.end method

.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "PhoneTicketLoginFragment"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100089

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "click_login_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/b;->tS(Ljava/lang/String;)V

    const-string/jumbo v0, "click_login_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/b;->Ix(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/b;->Ip()V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f10008a

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "click_go_password_login_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/b;->Ix(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/b;->Ih()V

    goto :goto_0

    :cond_1
    const v1, 0x7f10008b

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "click_downLink_reg_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/b;->Ix(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/b;->Iy()V

    goto :goto_0

    :cond_2
    const v1, 0x7f100081

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/b;->tV()V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/xiaomi/passport/v2/ui/h;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/xiaomi/passport/v2/ui/h;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/j;->Dv(Landroid/content/Context;)V

    const-string/jumbo v0, "visit_sms_login_page"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/b;->Ix(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/b;->px:Z

    if-eqz v0, :cond_1

    const v0, 0x7f030038

    :goto_0
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f100081

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/xiaomi/passport/v2/ui/b;->px:Z

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f100089

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10008a

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f10008b

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f100020

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    new-instance v5, Lcom/xiaomi/passport/v2/utils/a;

    invoke-direct {v5}, Lcom/xiaomi/passport/v2/utils/a;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/b;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/xiaomi/passport/v2/ui/u;

    invoke-direct {v7, p0, v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/u;-><init>(Lcom/xiaomi/passport/v2/ui/b;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6, v3, v7}, Lcom/xiaomi/passport/v2/utils/a;->Li(Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v4

    :cond_1
    const v0, 0x7f030045

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method protected tX()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/passport/v2/ui/h;->tX()V

    const-string/jumbo v0, "provision_click_skip_login_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/b;->Ix(Ljava/lang/String;)V

    return-void
.end method

.method protected tY()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/passport/v2/ui/h;->tY()V

    const-string/jumbo v0, "provision_click_confirm_skip_login_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/b;->Ix(Ljava/lang/String;)V

    return-void
.end method
