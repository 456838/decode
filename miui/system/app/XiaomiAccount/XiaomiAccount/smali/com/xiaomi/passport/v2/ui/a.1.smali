.class public Lcom/xiaomi/passport/v2/ui/a;
.super Lcom/xiaomi/passport/v2/ui/c;
.source ""


# instance fields
.field private CH:Landroid/widget/TextView;

.field private CI:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/c;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/a;->CI:Z

    return-void
.end method

.method private HI(Z)V
    .locals 2

    const v0, 0x7f0c0079

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/ui/a;->HN(I)V

    const-string/jumbo v0, "get_activator_phone"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/a;->CJ:Lcom/xiaomi/passport/v2/utils/c;

    new-instance v1, Lcom/xiaomi/passport/v2/ui/q;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/v2/ui/q;-><init>(Lcom/xiaomi/passport/v2/ui/a;)V

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/passport/v2/utils/c;->Lk(Lcom/xiaomi/passport/v2/utils/d;Z)Lcom/xiaomi/passport/uicontroller/v;

    return-void
.end method

.method private HJ(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qq:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qq:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->Qx:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "not_registered_phone"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    const-string/jumbo v0, "not_registered_phone"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "dual phone, go to register"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/xiaomi/passport/v2/ui/a;->HS(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->Qy:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "registered_not_recycled_phone"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    const-string/jumbo v0, "registered_not_recycled_phone"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "dual phone, go to login"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/xiaomi/passport/v2/ui/a;->HP(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "registered_possibly_recycled_phone"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    const-string/jumbo v0, "registered_possibly_recycled_phone"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "dual phone, choose"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/a;->HQ()V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->Qy:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v0, v2, :cond_4

    const-string/jumbo v0, "registered_not_recycled_phone"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    invoke-direct {p0, p1, p3}, Lcom/xiaomi/passport/v2/ui/a;->HO(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->Qz:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v1, v0, :cond_3

    const-string/jumbo v0, "registered_possibly_recycled_phone"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "not_registered_phone"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->Qx:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v0, v2, :cond_6

    const-string/jumbo v0, "not_registered_phone"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->Qy:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v1, v0, :cond_5

    const-string/jumbo v0, "registered_not_recycled_phone"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    invoke-direct {p0, p2, p4}, Lcom/xiaomi/passport/v2/ui/a;->HO(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "registered_possibly_recycled_phone"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/a;->HQ()V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "registered_possibly_recycled_phone"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->Qx:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v1, v0, :cond_7

    const-string/jumbo v0, "not_registered_phone"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/a;->HQ()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "registered_not_recycled_phone"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    invoke-direct {p0, p2, p4}, Lcom/xiaomi/passport/v2/ui/a;->HO(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    goto/16 :goto_0
.end method

.method private HK(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 4

    iget v0, p2, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QN:I

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qq:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    sget-object v2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->Qx:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "GetActivatorPhoneFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phone, go to register"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/a;->HR(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->Qy:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "GetActivatorPhoneFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phone, go to login"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/a;->HO(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "GetActivatorPhoneFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phone, choose"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/a;->HQ()V

    goto :goto_0
.end method

.method private HL(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 4

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "start to query activator phone user info"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "query_phone_info"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/C;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/C;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/C;->YW(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/C;->build()Lcom/xiaomi/accountsdk/account/data/B;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/a;->CK:Lcom/xiaomi/passport/v2/utils/f;

    new-instance v2, Lcom/xiaomi/passport/v2/ui/s;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/passport/v2/ui/s;-><init>(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/passport/v2/utils/f;->Lw(Lcom/xiaomi/accountsdk/account/data/B;Lcom/xiaomi/passport/uicontroller/A;Z)V

    return-void
.end method

.method private HM(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 5

    const-string/jumbo v0, "query_phone_info"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/C;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/C;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/C;->YW(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/C;->build()Lcom/xiaomi/accountsdk/account/data/B;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/account/data/C;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/account/data/C;-><init>()V

    invoke-virtual {v1, p2}, Lcom/xiaomi/accountsdk/account/data/C;->YW(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/C;->build()Lcom/xiaomi/accountsdk/account/data/B;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/a;->CK:Lcom/xiaomi/passport/v2/utils/f;

    new-instance v3, Lcom/xiaomi/passport/v2/ui/r;

    invoke-direct {v3, p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/r;-><init>(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/xiaomi/passport/v2/utils/f;->Lv(Lcom/xiaomi/accountsdk/account/data/B;Lcom/xiaomi/accountsdk/account/data/B;Lcom/xiaomi/passport/v2/utils/i;Z)V

    return-void
.end method

.method private HN(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/a;->CH:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/a;->CH:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method private HO(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaomi/passport/v2/ui/a;->HP(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method

.method private HP(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v1, "switch_activator_phone_login_page"

    if-eqz p3, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/a;->Iw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/v2/ui/t;

    invoke-direct {v1, p0, p2, p4}, Lcom/xiaomi/passport/v2/ui/t;-><init>(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/a;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/passport/v2/ui/a;->pz:Lcom/xiaomi/passport/ui/m;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/passport/v2/ui/j;->Kk(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/v2/ui/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v6}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method private HQ()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/a;->Iv(Z)V

    return-void
.end method

.method private HR(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaomi/passport/v2/ui/a;->HS(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method

.method private HS(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v1, "switch_activator_phone_reg_page"

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/a;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/passport/v2/ui/a;->pz:Lcom/xiaomi/passport/ui/m;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/passport/v2/ui/d;->Ji(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/v2/ui/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v6}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method static synthetic HT(Lcom/xiaomi/passport/v2/ui/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/a;->CI:Z

    return v0
.end method

.method static synthetic HU(Lcom/xiaomi/passport/v2/ui/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/passport/v2/ui/a;->CI:Z

    return p1
.end method

.method static synthetic HV(Lcom/xiaomi/passport/v2/ui/a;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/a;->tT()Z

    move-result v0

    return v0
.end method

.method static synthetic HW(Lcom/xiaomi/passport/v2/ui/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/v2/ui/a;->HI(Z)V

    return-void
.end method

.method static synthetic HX(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/passport/v2/ui/a;->HJ(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method

.method static synthetic HY(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/a;->HK(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method

.method static synthetic HZ(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/v2/ui/a;->HL(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method

.method static synthetic Ia(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/a;->HM(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method

.method static synthetic Ib(Lcom/xiaomi/passport/v2/ui/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/v2/ui/a;->HN(I)V

    return-void
.end method

.method static synthetic Ic(Lcom/xiaomi/passport/v2/ui/a;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/a;->tU(II)V

    return-void
.end method

.method static synthetic Id(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/a;->HO(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method

.method static synthetic Ie(Lcom/xiaomi/passport/v2/ui/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/a;->HQ()V

    return-void
.end method

.method static synthetic If(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/a;->HR(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const v0, 0x7f03001d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f100063

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/a;->CH:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/ui/a;->HI(Z)V

    return-object v1
.end method
