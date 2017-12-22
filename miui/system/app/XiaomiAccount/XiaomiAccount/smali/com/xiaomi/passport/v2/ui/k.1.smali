.class public Lcom/xiaomi/passport/v2/ui/k;
.super Lcom/xiaomi/passport/v2/ui/c;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DB:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private DC:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private DD:Z

.field private DE:Ljava/lang/String;

.field private DF:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

.field private DG:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/c;-><init>()V

    return-void
.end method

.method public static Ko(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/v2/ui/k;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "register user info should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    const-string/jumbo v1, "register_user_info"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "extra_phone"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_is_uplink_reg"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/xiaomi/passport/v2/ui/k;

    invoke-direct {v1}, Lcom/xiaomi/passport/v2/ui/k;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/v2/ui/k;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p4}, Lcom/xiaomi/passport/v2/ui/k;->tQ(Lcom/xiaomi/passport/ui/m;)V

    return-object v1
.end method

.method private Kp(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, v3}, Lcom/xiaomi/passport/v2/ui/k;->Kq(Landroid/view/View;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Ljava/lang/String;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/v2/ui/an;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/passport/v2/ui/an;-><init>(Lcom/xiaomi/passport/v2/ui/k;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    const v2, 0x7f0c006c

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c006d

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private Kq(Landroid/view/View;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Ljava/lang/String;)V
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

    invoke-virtual {p0, v3, v4}, Lcom/xiaomi/passport/v2/ui/k;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/passport/v2/ui/k;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/k;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/k;->IK(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/res/Resources;)V

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

.method private Kr(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Ljava/lang/String;II)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v0, "recycled_page_click_login_btn"

    invoke-virtual {p0, v0, p4, p5}, Lcom/xiaomi/passport/v2/ui/k;->IR(Ljava/lang/String;II)V

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/k;->Kp(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "recycled_page_click_login_btn"

    iget-boolean v1, p0, Lcom/xiaomi/passport/v2/ui/k;->DD:Z

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/k;->ug(Ljava/lang/String;Z)V

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/n;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/n;-><init>()V

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qv:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/xiaomi/accountsdk/account/data/n;->Xq(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/n;->build()Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/k;->IC(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V

    goto :goto_1
.end method

.method private Ks(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Ljava/lang/String;II)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v0, "recycled_page_click_reg_btn"

    invoke-virtual {p0, v0, p4, p5}, Lcom/xiaomi/passport/v2/ui/k;->IR(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/k;->DB:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/k;->IG(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "recycled_page_click_reg_btn"

    iget-boolean v1, p0, Lcom/xiaomi/passport/v2/ui/k;->DD:Z

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/k;->ug(Ljava/lang/String;Z)V

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/p;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/p;-><init>()V

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qv:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/xiaomi/accountsdk/account/data/p;->XE(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/p;->build()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/k;->DF:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qu:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/passport/v2/ui/k;->IB(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)V

    goto :goto_1
.end method

.method static synthetic Kt(Lcom/xiaomi/passport/v2/ui/k;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/k;->DB:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object v0
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ProbablyRecyclePhoneFragment"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10004a

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/k;->DF:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/k;->DB:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/k;->DE:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/v2/ui/k;->Kr(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Ljava/lang/String;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f100050

    if-ne v0, v1, :cond_2

    iget-object v6, p0, Lcom/xiaomi/passport/v2/ui/k;->DF:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v7, p0, Lcom/xiaomi/passport/v2/ui/k;->DB:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v8, p0, Lcom/xiaomi/passport/v2/ui/k;->DE:Ljava/lang/String;

    move-object v5, p0

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/xiaomi/passport/v2/ui/k;->Kr(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    const v1, 0x7f100051

    if-ne v0, v1, :cond_3

    iget-object v6, p0, Lcom/xiaomi/passport/v2/ui/k;->DF:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v7, p0, Lcom/xiaomi/passport/v2/ui/k;->DB:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v8, p0, Lcom/xiaomi/passport/v2/ui/k;->DE:Ljava/lang/String;

    move-object v5, p0

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lcom/xiaomi/passport/v2/ui/k;->Kr(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Ljava/lang/String;II)V

    goto :goto_0

    :cond_3
    const v1, 0x7f100095

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/k;->DF:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/k;->DB:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/k;->DE:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/v2/ui/k;->Ks(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Ljava/lang/String;II)V

    goto :goto_0

    :cond_4
    const v1, 0x7f10004b

    if-ne v0, v1, :cond_5

    const-string/jumbo v0, "login_other_account"

    invoke-virtual {p0, v0, v5}, Lcom/xiaomi/passport/v2/ui/k;->Iu(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/k;->IH()V

    goto :goto_0

    :cond_5
    const v1, 0x7f100081

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/k;->tV()V

    goto :goto_0

    :cond_6
    const v1, 0x7f10007b

    if-ne v0, v1, :cond_7

    const-string/jumbo v0, "login_other_account"

    invoke-virtual {p0, v0, v5}, Lcom/xiaomi/passport/v2/ui/k;->Iu(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/k;->IH()V

    goto :goto_0

    :cond_7
    const v1, 0x7f10004c

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "click_downLink_reg_btn"

    invoke-virtual {p0, v0, v5}, Lcom/xiaomi/passport/v2/ui/k;->Iu(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/k;->Iy()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/passport/v2/ui/c;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/k;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v0, "register_user_info"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/k;->DF:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    const-string/jumbo v0, "activator_phone_info"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/k;->DB:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const-string/jumbo v0, "register_user_info"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v0, "activator_phone_info"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v0, "register_user_info2"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/k;->DG:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    const-string/jumbo v0, "activator_phone_info2"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/k;->DC:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const-string/jumbo v0, "register_user_info2"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v0, "activator_phone_info2"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v0, "extra_phone"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/k;->DE:Ljava/lang/String;

    const-string/jumbo v0, "extra_phone"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v0, "extra_is_uplink_reg"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/k;->DD:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/k;->DG:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/k;->DC:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-nez v0, :cond_8

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/k;->DF:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/k;->DG:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    :goto_1
    if-nez v0, :cond_a

    move v1, v9

    :goto_2
    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/k;->px:Z

    if-eqz v0, :cond_c

    if-eqz v1, :cond_b

    const v0, 0x7f03003a

    :goto_3
    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    const v0, 0x7f10004b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f10004c

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f10004a

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v0, 0x7f100095

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v0, 0x7f100050

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f100051

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f10007b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v0, 0x7f10004f

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const v11, 0x7f0c00a8

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    if-eqz v1, :cond_f

    if-eqz v9, :cond_e

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/k;->DF:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/k;->DG:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qu:Ljava/lang/String;

    invoke-direct {p0, v10, v0, v1}, Lcom/xiaomi/passport/v2/ui/k;->Kq(Landroid/view/View;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_5
    const v0, 0x7f100020

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/CheckBox;

    new-instance v11, Lcom/xiaomi/passport/v2/utils/a;

    invoke-direct {v11}, Lcom/xiaomi/passport/v2/utils/a;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v12

    new-instance v0, Lcom/xiaomi/passport/v2/ui/al;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/passport/v2/ui/al;-><init>(Lcom/xiaomi/passport/v2/ui/k;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;)V

    invoke-virtual {v11, v12, v9, v0}, Lcom/xiaomi/passport/v2/utils/a;->Li(Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f100049

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/k;->DB:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/k;->DB:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/xiaomi/passport/v2/ui/am;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/v2/ui/am;-><init>(Lcom/xiaomi/passport/v2/ui/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v1, 0x7f100081

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget-boolean v2, p0, Lcom/xiaomi/passport/v2/ui/k;->px:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/k;->DB:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/k;->DB:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/k;->DE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_7
    if-nez v1, :cond_7

    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    return-object v10

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_b
    const v0, 0x7f030029

    goto/16 :goto_3

    :cond_c
    if-eqz v1, :cond_d

    const v0, 0x7f030047

    goto/16 :goto_3

    :cond_d
    const v0, 0x7f030017

    goto/16 :goto_3

    :cond_e
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/k;->DF:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v10, v0, v1}, Lcom/xiaomi/passport/v2/ui/k;->Kq(Landroid/view/View;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_f
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/k;->DF:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v4, v0, v1}, Lcom/xiaomi/passport/v2/ui/k;->Kq(Landroid/view/View;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/k;->DG:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v5, v0, v1}, Lcom/xiaomi/passport/v2/ui/k;->Kq(Landroid/view/View;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Ljava/lang/String;)V

    const v0, 0x7f100013

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f100013

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v7, :cond_4

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10003e

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c00a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f10003f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f100013

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_10
    const/16 v2, 0x8

    goto/16 :goto_6

    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_7
.end method

.method protected tX()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/passport/v2/ui/c;->tX()V

    const-string/jumbo v0, "provision_click_skip_login_btn"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/k;->Iu(Ljava/lang/String;I)V

    return-void
.end method

.method protected tY()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/passport/v2/ui/c;->tY()V

    const-string/jumbo v0, "provision_click_confirm_skip_login_btn"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/k;->Iu(Ljava/lang/String;I)V

    return-void
.end method
