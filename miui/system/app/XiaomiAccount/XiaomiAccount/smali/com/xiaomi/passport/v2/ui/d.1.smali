.class public Lcom/xiaomi/passport/v2/ui/d;
.super Lcom/xiaomi/passport/v2/ui/c;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private CO:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private CP:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private CQ:Ljava/lang/String;

.field private CR:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

.field private CS:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/c;-><init>()V

    return-void
.end method

.method public static final Ji(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/v2/ui/d;
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/v2/ui/d;

    invoke-direct {v0}, Lcom/xiaomi/passport/v2/ui/d;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p4, :cond_0

    invoke-virtual {v1, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string/jumbo v2, "register_user_info"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "activator_phone_info"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "register_user_info2"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "activator_phone_info2"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/d;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0, p5}, Lcom/xiaomi/passport/v2/ui/d;->tQ(Lcom/xiaomi/passport/ui/m;)V

    return-object v0
.end method

.method public static final Jj(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/v2/ui/d;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string/jumbo v1, "register_user_info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "extra_phone"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/passport/v2/ui/d;

    invoke-direct {v1}, Lcom/xiaomi/passport/v2/ui/d;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/v2/ui/d;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p3}, Lcom/xiaomi/passport/v2/ui/d;->tQ(Lcom/xiaomi/passport/ui/m;)V

    return-object v1
.end method

.method private Jk(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Ljava/lang/String;II)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v0, "click_reg_btn"

    invoke-virtual {p0, v0, p4, p5}, Lcom/xiaomi/passport/v2/ui/d;->IR(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/d;->CO:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/d;->IG(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "click_reg_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/d;->Ix(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/p;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/p;-><init>()V

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qv:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/xiaomi/accountsdk/account/data/p;->XE(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/p;->build()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/d;->CR:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qu:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/passport/v2/ui/d;->IB(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)V

    goto :goto_1
.end method

.method static synthetic Jl(Lcom/xiaomi/passport/v2/ui/d;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/d;->CO:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object v0
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ActivatorRegisterFragment"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v4, 0x1

    const/4 v9, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10004e

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/d;->CR:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/d;->CO:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/d;->CQ:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/v2/ui/d;->Jk(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Ljava/lang/String;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f100050

    if-ne v0, v1, :cond_2

    iget-object v6, p0, Lcom/xiaomi/passport/v2/ui/d;->CR:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v7, p0, Lcom/xiaomi/passport/v2/ui/d;->CO:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v8, p0, Lcom/xiaomi/passport/v2/ui/d;->CQ:Ljava/lang/String;

    move-object v5, p0

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/xiaomi/passport/v2/ui/d;->Jk(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    const v1, 0x7f100051

    if-ne v0, v1, :cond_3

    iget-object v6, p0, Lcom/xiaomi/passport/v2/ui/d;->CS:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v7, p0, Lcom/xiaomi/passport/v2/ui/d;->CP:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v8, p0, Lcom/xiaomi/passport/v2/ui/d;->CQ:Ljava/lang/String;

    move-object v5, p0

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lcom/xiaomi/passport/v2/ui/d;->Jk(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Ljava/lang/String;II)V

    goto :goto_0

    :cond_3
    const v1, 0x7f10004b

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "login_other_account"

    const-string/jumbo v1, "register"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/d;->IQ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/d;->IH()V

    goto :goto_0

    :cond_4
    const v1, 0x7f100081

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/d;->tV()V

    goto :goto_0

    :cond_5
    const v1, 0x7f10007b

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "login_other_account"

    const-string/jumbo v1, "register"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/d;->IQ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/d;->IH()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/passport/v2/ui/c;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/d;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v0, "register_user_info"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/d;->CR:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    const-string/jumbo v0, "activator_phone_info"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/d;->CO:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const-string/jumbo v0, "register_user_info"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v0, "activator_phone_info"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v0, "register_user_info2"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/d;->CS:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    const-string/jumbo v0, "activator_phone_info2"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/d;->CP:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const-string/jumbo v0, "register_user_info2"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v0, "activator_phone_info2"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v0, "extra_phone"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/d;->CQ:Ljava/lang/String;

    const-string/jumbo v0, "extra_phone"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/d;->CS:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/d;->CP:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-nez v0, :cond_7

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_9

    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/d;->px:Z

    if-eqz v0, :cond_8

    const v0, 0x7f030028

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    const v0, 0x7f100050

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f100051

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f10004e

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v0, 0x7f10007b

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f10004f

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v5, 0x7f0c00a7

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const v0, 0x7f10004c

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    if-eqz v1, :cond_b

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10004d

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/passport/v2/ui/d;->CR:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v5, v5, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qu:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v1, v7

    const v5, 0x7f0c00aa

    invoke-virtual {p0, v5, v1}, Lcom/xiaomi/passport/v2/ui/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    const v0, 0x7f10004b

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v0, 0x7f100020

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/CheckBox;

    new-instance v9, Lcom/xiaomi/passport/v2/utils/a;

    invoke-direct {v9}, Lcom/xiaomi/passport/v2/utils/a;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/d;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v0, Lcom/xiaomi/passport/v2/ui/R;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/passport/v2/ui/R;-><init>(Lcom/xiaomi/passport/v2/ui/d;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {v9, v10, v7, v0}, Lcom/xiaomi/passport/v2/utils/a;->Li(Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f100049

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/d;->CO:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/d;->CO:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/xiaomi/passport/v2/ui/S;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/v2/ui/S;-><init>(Lcom/xiaomi/passport/v2/ui/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v0, 0x7f100081

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/xiaomi/passport/v2/ui/d;->px:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-object v8

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    :cond_8
    const v0, 0x7f030016

    goto/16 :goto_1

    :cond_9
    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/d;->px:Z

    if-eqz v0, :cond_a

    const v0, 0x7f030029

    goto/16 :goto_1

    :cond_a
    const v0, 0x7f030017

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    const v0, 0x7f10003d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/xiaomi/passport/v2/ui/d;->px:Z

    if-eqz v1, :cond_c

    const v1, 0x7f020071

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f10003e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/d;->CR:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f10003f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f10003d

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/xiaomi/passport/v2/ui/d;->px:Z

    if-eqz v5, :cond_d

    const v5, 0x7f020071

    :goto_5
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f10003e

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/xiaomi/passport/v2/ui/d;->CS:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v5, v5, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qu:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f10003f

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaomi/passport/b;->OR()Lcom/xiaomi/passport/a/c;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v7, p0, Lcom/xiaomi/passport/v2/ui/d;->CO:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget v7, v7, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QN:I

    invoke-interface {v5, v7}, Lcom/xiaomi/passport/a/c;->ru(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/d;->CP:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget v0, v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QN:I

    invoke-interface {v5, v0}, Lcom/xiaomi/passport/a/c;->ru(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    if-eqz v6, :cond_3

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10003e

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c00a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f10003f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f100013

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    const v1, 0x7f020080

    goto/16 :goto_4

    :cond_d
    const v5, 0x7f020080

    goto :goto_5

    :cond_e
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_f
    const/16 v1, 0x8

    goto/16 :goto_3
.end method

.method protected tX()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/passport/v2/ui/c;->tX()V

    const-string/jumbo v0, "provision_click_skip_login_btn"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/d;->Iu(Ljava/lang/String;I)V

    return-void
.end method

.method protected tY()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/passport/v2/ui/c;->tY()V

    const-string/jumbo v0, "provision_click_confirm_skip_login_btn"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/d;->Iu(Ljava/lang/String;I)V

    return-void
.end method
