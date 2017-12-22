.class public Lcom/xiaomi/passport/v2/ui/j;
.super Lcom/xiaomi/passport/v2/ui/c;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DA:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

.field private Dx:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private Dy:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private Dz:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/c;-><init>()V

    return-void
.end method

.method public static final Kk(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/v2/ui/j;
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/v2/ui/j;

    invoke-direct {v0}, Lcom/xiaomi/passport/v2/ui/j;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p4, :cond_0

    invoke-virtual {v1, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string/jumbo v2, "register_user_info"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "activator_phone_info"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    const-string/jumbo v2, "register_user_info2"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "activator_phone_info2"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/j;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0, p5}, Lcom/xiaomi/passport/v2/ui/j;->tQ(Lcom/xiaomi/passport/ui/m;)V

    return-object v0
.end method

.method private Kl(Landroid/view/View;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f10003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f10003e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f10003f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qw:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qw:Ljava/lang/String;

    :goto_0
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v5

    const v3, 0x7f0c0029

    invoke-virtual {p0, v3, v4}, Lcom/xiaomi/passport/v2/ui/j;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qu:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    const v1, 0x7f0c00aa

    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/passport/v2/ui/j;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/j;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/j;->IK(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void

    :cond_2
    iget-object v3, p2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qt:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "%s\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object p3, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private Km(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;II)V
    .locals 1

    const-string/jumbo v0, "click_login_btn"

    invoke-virtual {p0, v0, p2, p3}, Lcom/xiaomi/passport/v2/ui/j;->IR(Ljava/lang/String;II)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/v2/ui/j;->IF(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method

.method static synthetic Kn(Lcom/xiaomi/passport/v2/ui/j;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/j;->Dx:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object v0
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ActivatorPhoneLoginFragment"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10004a

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/j;->Dx:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/xiaomi/passport/v2/ui/j;->Km(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f100050

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/j;->Dx:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-direct {p0, v0, v2, v3}, Lcom/xiaomi/passport/v2/ui/j;->Km(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;II)V

    goto :goto_0

    :cond_2
    const v1, 0x7f100051

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/j;->Dy:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-direct {p0, v0, v2, v2}, Lcom/xiaomi/passport/v2/ui/j;->Km(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;II)V

    goto :goto_0

    :cond_3
    const v1, 0x7f10004b

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "login_other_account"

    const-string/jumbo v1, "login"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/j;->IQ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/j;->IH()V

    goto :goto_0

    :cond_4
    const v1, 0x7f10004c

    if-ne v0, v1, :cond_5

    const-string/jumbo v0, "click_downLink_reg_btn"

    const-string/jumbo v1, "login"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/j;->IQ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/j;->Iy()V

    goto :goto_0

    :cond_5
    const v1, 0x7f100081

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/j;->tV()V

    goto :goto_0

    :cond_6
    const v1, 0x7f10007b

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "login_other_account"

    const-string/jumbo v1, "login"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/j;->IQ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/j;->IH()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/passport/v2/ui/c;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/j;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v0, "register_user_info"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/j;->Dz:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    const-string/jumbo v0, "activator_phone_info"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/j;->Dx:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const-string/jumbo v0, "register_user_info"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v0, "activator_phone_info"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v0, "register_user_info2"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/j;->DA:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    const-string/jumbo v0, "activator_phone_info2"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/j;->Dy:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const-string/jumbo v0, "register_user_info2"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v0, "activator_phone_info2"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/j;->DA:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/j;->Dy:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-nez v0, :cond_7

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_8

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/j;->Dz:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qt:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/j;->DA:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qt:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    :goto_1
    if-nez v0, :cond_9

    move v1, v6

    :goto_2
    if-eqz v1, :cond_b

    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/j;->px:Z

    if-eqz v0, :cond_a

    const v0, 0x7f030026

    :goto_3
    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    const v0, 0x7f100050

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f100051

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f10004a

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v0, 0x7f10007b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f10004f

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v7, 0x7f0c00a6

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    if-eqz v1, :cond_e

    if-eqz v6, :cond_d

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/j;->Dz:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/j;->DA:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qu:Ljava/lang/String;

    invoke-direct {p0, v9, v0, v1}, Lcom/xiaomi/passport/v2/ui/j;->Kl(Landroid/view/View;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_5
    const v0, 0x7f10004b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_3

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f10004c

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v0, 0x7f100020

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/CheckBox;

    new-instance v10, Lcom/xiaomi/passport/v2/utils/a;

    invoke-direct {v10}, Lcom/xiaomi/passport/v2/utils/a;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/j;->getActivity()Landroid/app/Activity;

    move-result-object v11

    new-instance v0, Lcom/xiaomi/passport/v2/ui/aj;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/passport/v2/ui/aj;-><init>(Lcom/xiaomi/passport/v2/ui/j;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v10, v11, v8, v0}, Lcom/xiaomi/passport/v2/utils/a;->Li(Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f100049

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/j;->Dx:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/j;->Dx:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/xiaomi/passport/v2/ui/ak;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/v2/ui/ak;-><init>(Lcom/xiaomi/passport/v2/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v0, 0x7f100081

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/xiaomi/passport/v2/ui/j;->px:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-object v9

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_a
    const v0, 0x7f030015

    goto/16 :goto_3

    :cond_b
    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/j;->px:Z

    if-eqz v0, :cond_c

    const v0, 0x7f030029

    goto/16 :goto_3

    :cond_c
    const v0, 0x7f030017

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/j;->Dz:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v9, v0, v1}, Lcom/xiaomi/passport/v2/ui/j;->Kl(Landroid/view/View;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/j;->Dz:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v3, v0, v1}, Lcom/xiaomi/passport/v2/ui/j;->Kl(Landroid/view/View;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/j;->DA:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v4, v0, v1}, Lcom/xiaomi/passport/v2/ui/j;->Kl(Landroid/view/View;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Ljava/lang/String;)V

    const v0, 0x7f100013

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f100013

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_2

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10003e

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c00a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f10003f

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f100013

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_f
    const/16 v1, 0x8

    goto/16 :goto_6
.end method

.method protected tX()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/passport/v2/ui/c;->tX()V

    const-string/jumbo v0, "provision_click_skip_login_btn"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/j;->Iu(Ljava/lang/String;I)V

    return-void
.end method

.method protected tY()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/passport/v2/ui/c;->tY()V

    const-string/jumbo v0, "provision_click_confirm_skip_login_btn"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/j;->Iu(Ljava/lang/String;I)V

    return-void
.end method
