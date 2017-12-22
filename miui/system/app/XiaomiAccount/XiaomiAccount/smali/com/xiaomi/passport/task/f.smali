.class public Lcom/xiaomi/passport/task/f;
.super Lcom/xiaomi/passport/task/i;
.source ""


# instance fields
.field private final BA:Z

.field private BB:Lcom/xiaomi/passport/task/h;

.field private final BC:Landroid/content/DialogInterface$OnClickListener;

.field private final BD:Lcom/xiaomi/passport/ui/m;

.field private final BE:Z

.field private BF:Lcom/xiaomi/passport/task/h;

.field private final BG:Ljava/lang/String;

.field private BH:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

.field private final BI:Ljava/lang/String;

.field private BJ:Lcom/xiaomi/passport/task/h;

.field private final BK:Ljava/lang/String;

.field private final BL:Ljava/lang/String;

.field private final BM:Ljava/lang/String;

.field private final By:Ljava/lang/String;

.field private final Bz:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/passport/task/g;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/task/j;

    invoke-static {p1}, Lcom/xiaomi/passport/task/g;->GM(Lcom/xiaomi/passport/task/g;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/task/j;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/task/i;-><init>(Lcom/xiaomi/passport/task/j;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/passport/task/f;->BH:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    invoke-static {p1}, Lcom/xiaomi/passport/task/g;->GV(Lcom/xiaomi/passport/task/g;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/f;->BG:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/task/g;->GY(Lcom/xiaomi/passport/task/g;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/f;->BK:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/task/g;->GN(Lcom/xiaomi/passport/task/g;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/f;->Bz:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/task/g;->GZ(Lcom/xiaomi/passport/task/g;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/f;->BL:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/task/g;->Ha(Lcom/xiaomi/passport/task/g;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/f;->BM:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/task/g;->GO(Lcom/xiaomi/passport/task/g;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/task/f;->BA:Z

    invoke-static {p1}, Lcom/xiaomi/passport/task/g;->GS(Lcom/xiaomi/passport/task/g;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/task/f;->BE:Z

    invoke-static {p1}, Lcom/xiaomi/passport/task/g;->GT(Lcom/xiaomi/passport/task/g;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/f;->By:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/task/g;->GQ(Lcom/xiaomi/passport/task/g;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/f;->BC:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p1}, Lcom/xiaomi/passport/task/g;->GR(Lcom/xiaomi/passport/task/g;)Lcom/xiaomi/passport/ui/m;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/f;->BD:Lcom/xiaomi/passport/ui/m;

    invoke-static {p1}, Lcom/xiaomi/passport/task/g;->GW(Lcom/xiaomi/passport/task/g;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/f;->BI:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/task/g;->GU(Lcom/xiaomi/passport/task/g;)Lcom/xiaomi/passport/task/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/f;->BF:Lcom/xiaomi/passport/task/h;

    invoke-static {p1}, Lcom/xiaomi/passport/task/g;->GP(Lcom/xiaomi/passport/task/g;)Lcom/xiaomi/passport/task/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/f;->BB:Lcom/xiaomi/passport/task/h;

    invoke-static {p1}, Lcom/xiaomi/passport/task/g;->GX(Lcom/xiaomi/passport/task/g;)Lcom/xiaomi/passport/task/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/f;->BJ:Lcom/xiaomi/passport/task/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/task/g;Lcom/xiaomi/passport/task/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/task/f;-><init>(Lcom/xiaomi/passport/task/g;)V

    return-void
.end method

.method private Gv()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/task/f;->BB:Lcom/xiaomi/passport/task/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/task/f;->BB:Lcom/xiaomi/passport/task/h;

    iget-object v1, p0, Lcom/xiaomi/passport/task/f;->BH:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/task/h;->yA(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/p;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/p;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/passport/task/f;->BG:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/task/f;->BH:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/p;->XE(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/p;->build()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/task/f;->Cc:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "extra_build_region_info"

    iget-object v3, p0, Lcom/xiaomi/passport/task/f;->BI:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/passport/task/f;->BH:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qu:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/passport/task/f;->BD:Lcom/xiaomi/passport/ui/m;

    invoke-static {v2, v0, v1, v3}, Lcom/xiaomi/passport/ui/u;->vp(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/ui/u;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/task/f;->Cc:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method private Gw()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/passport/task/f;->BF:Lcom/xiaomi/passport/task/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/task/f;->BF:Lcom/xiaomi/passport/task/h;

    iget-object v1, p0, Lcom/xiaomi/passport/task/f;->BH:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/task/h;->yA(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/task/f;->Cc:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_build_region_info"

    iget-object v2, p0, Lcom/xiaomi/passport/task/f;->BI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/passport/task/f;->BH:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v2, p0, Lcom/xiaomi/passport/task/f;->BG:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/xiaomi/passport/task/f;->BA:Z

    iget-object v4, p0, Lcom/xiaomi/passport/task/f;->BD:Lcom/xiaomi/passport/ui/m;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/xiaomi/passport/v2/ui/k;->Ko(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/v2/ui/k;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/task/f;->Cc:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method private Gy()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/passport/task/f;->BJ:Lcom/xiaomi/passport/task/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/task/f;->BJ:Lcom/xiaomi/passport/task/h;

    iget-object v1, p0, Lcom/xiaomi/passport/task/f;->BH:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/task/h;->yA(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/task/f;->Cc:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_build_region_info"

    iget-object v2, p0, Lcom/xiaomi/passport/task/f;->BI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/passport/task/f;->BG:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/task/f;->BH:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v3, p0, Lcom/xiaomi/passport/task/f;->BD:Lcom/xiaomi/passport/ui/m;

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v0, v3}, Lcom/xiaomi/passport/ui/o;->uk(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;ZLandroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/ui/o;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/task/f;->Cc:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method private Gz()V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    iget-object v1, p0, Lcom/xiaomi/passport/task/f;->Cc:Landroid/app/Activity;

    const v2, 0x7f0c0086

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xG(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/task/f;->Cc:Landroid/app/Activity;

    const v2, 0x7f0c0032

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xJ(Z)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/task/f;->BC:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0c0033

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/passport/ui/C;->xC(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/xiaomi/passport/task/f;->Cc:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "Register restricted"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected GA()V
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/passport/task/f;->BA:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "up_verify_phone_success"

    :goto_0
    iget-boolean v1, p0, Lcom/xiaomi/passport/task/f;->BA:Z

    iget-boolean v2, p0, Lcom/xiaomi/passport/task/f;->BE:Z

    iget-object v3, p0, Lcom/xiaomi/passport/task/f;->By:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/passport/utils/w;->Fs(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "down_verify_phone_success"

    goto :goto_0
.end method

.method protected varargs Gu([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7

    const/16 v2, 0xc

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Lcom/xiaomi/accountsdk/account/data/J;

    invoke-direct {v3}, Lcom/xiaomi/accountsdk/account/data/J;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/passport/task/f;->BG:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/passport/task/f;->BK:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/accountsdk/account/data/J;->Zq(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/J;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/passport/task/f;->Bz:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/passport/task/f;->BL:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/passport/task/f;->BM:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/xiaomi/accountsdk/account/data/J;->Zn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/J;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;

    iget-object v5, p0, Lcom/xiaomi/passport/task/f;->Cc:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;->add()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/accountsdk/account/data/J;->Zp(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/J;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/passport/task/f;->BI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/accountsdk/account/data/J;->Zr(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/J;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/passport/task/f;->Cc:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/accountsdk/account/data/J;->Zo(Landroid/app/Application;)Lcom/xiaomi/accountsdk/account/data/J;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/data/J;->build()Lcom/xiaomi/accountsdk/account/data/F;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/accountsdk/account/b;->aat(Lcom/xiaomi/accountsdk/account/data/F;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/passport/task/f;->BH:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v3, p0, Lcom/xiaomi/passport/task/f;->BH:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Wr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/passport/task/f;->Cc:Landroid/app/Activity;

    iget-object v4, p0, Lcom/xiaomi/passport/task/f;->BH:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Ws()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/passport/task/f;->BH:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    invoke-virtual {v5}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Wr()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaomi/passport/utils/x;->FH(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/task/f;->GA()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidPhoneOrTicketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/UserRestrictedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/xiaomi/passport/utils/w;->Ft(Ljava/lang/String;)V

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VerifyRegisterPhoneTask"

    const-string/jumbo v2, "VerifyCodeTask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "restricted"

    const/16 v1, 0x65

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "VerifyRegisterPhoneTask"

    const-string/jumbo v2, "VerifyCodeTask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/passport/task/f;->BK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    const-string/jumbo v0, "invalid_phone"

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    const-string/jumbo v0, "invalid_verify_code"

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "VerifyRegisterPhoneTask"

    const-string/jumbo v2, "VerifyCodeTask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "server_error"

    const/4 v1, 0x2

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v1, "VerifyRegisterPhoneTask"

    const-string/jumbo v3, "VerifyCodeTask"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "authentication_failure"

    move v1, v2

    goto :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v1, "VerifyRegisterPhoneTask"

    const-string/jumbo v3, "VerifyCodeTask"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "access_denied"

    move v1, v2

    goto :goto_0

    :catch_5
    move-exception v0

    const-string/jumbo v1, "VerifyRegisterPhoneTask"

    const-string/jumbo v2, "VerifyCodeTask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "network_error"

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected Gx(Ljava/lang/Integer;)V
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-super {p0, v1}, Lcom/xiaomi/passport/task/i;->Gx(Ljava/lang/Integer;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/xiaomi/passport/task/i;->Gx(Ljava/lang/Integer;)V

    return-void

    :sswitch_0
    invoke-super {p0, v1}, Lcom/xiaomi/passport/task/i;->Gx(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/xiaomi/passport/task/f;->BH:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qq:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->Qx:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "not_registered_phone"

    iget-boolean v1, p0, Lcom/xiaomi/passport/task/f;->BA:Z

    iget-boolean v2, p0, Lcom/xiaomi/passport/task/f;->BE:Z

    iget-object v3, p0, Lcom/xiaomi/passport/task/f;->By:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/passport/utils/w;->Fs(Ljava/lang/String;ZZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/passport/task/f;->BA:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "upLink_visit_password_page"

    :goto_0
    iget-boolean v1, p0, Lcom/xiaomi/passport/task/f;->BA:Z

    iget-boolean v2, p0, Lcom/xiaomi/passport/task/f;->BE:Z

    iget-object v3, p0, Lcom/xiaomi/passport/task/f;->By:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/passport/utils/w;->Fs(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/task/f;->Gv()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v0, "downLink_visit_password_page"

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->Qz:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "registered_possibly_recycled_phone"

    iget-boolean v1, p0, Lcom/xiaomi/passport/task/f;->BA:Z

    iget-boolean v2, p0, Lcom/xiaomi/passport/task/f;->BE:Z

    iget-object v3, p0, Lcom/xiaomi/passport/task/f;->By:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/passport/utils/w;->Fs(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/task/f;->Gw()V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->Qy:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "registered_not_recycled_phone"

    iget-boolean v1, p0, Lcom/xiaomi/passport/task/f;->BA:Z

    iget-boolean v2, p0, Lcom/xiaomi/passport/task/f;->BE:Z

    iget-object v3, p0, Lcom/xiaomi/passport/task/f;->By:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/passport/utils/w;->Fs(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/task/f;->Gy()V

    goto :goto_1

    :sswitch_1
    invoke-super {p0, v1}, Lcom/xiaomi/passport/task/i;->Gx(Ljava/lang/Integer;)V

    const-string/jumbo v0, "reg_restricted_phone"

    iget-boolean v1, p0, Lcom/xiaomi/passport/task/f;->BA:Z

    iget-boolean v2, p0, Lcom/xiaomi/passport/task/f;->BE:Z

    iget-object v3, p0, Lcom/xiaomi/passport/task/f;->By:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/passport/utils/w;->Fs(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/task/f;->Gz()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method
