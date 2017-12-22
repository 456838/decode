.class public abstract Lcom/xiaomi/passport/v2/ui/c;
.super Lcom/xiaomi/passport/ui/l;
.source ""


# instance fields
.field protected CJ:Lcom/xiaomi/passport/v2/utils/c;

.field protected CK:Lcom/xiaomi/passport/v2/utils/f;

.field private CL:Lcom/xiaomi/passport/ui/h;

.field private CM:Landroid/os/CountDownTimer;

.field private CN:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/l;-><init>()V

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/xiaomi/passport/v2/ui/c;->CN:J

    return-void
.end method

.method private ID(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "no activator phone info"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/s;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/s;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/s;->XQ(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/c;->pA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/s;->XS(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/s;->build()Lcom/xiaomi/accountsdk/account/data/r;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/v2/ui/K;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/v2/ui/K;-><init>(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/c;->Iz(Lcom/xiaomi/accountsdk/account/data/r;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    return-void
.end method

.method private IE(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 4

    iget v0, p1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QN:I

    const-string/jumbo v1, "verify_activator_phone"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/passport/v2/ui/c;->Iu(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/c;->CJ:Lcom/xiaomi/passport/v2/utils/c;

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/passport/v2/ui/L;

    invoke-direct {v3, p0, p1}, Lcom/xiaomi/passport/v2/ui/L;-><init>(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/xiaomi/passport/v2/utils/c;->Ln(Landroid/app/Activity;ILcom/xiaomi/passport/v2/utils/e;)Lcom/xiaomi/passport/uicontroller/v;

    return-void
.end method

.method private II(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/v2/ui/D;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/v2/ui/D;-><init>(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private IL(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "no activator phone info"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/c;->Iw()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/v2/ui/c;->IE(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/v2/ui/c;->ID(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    goto :goto_0
.end method

.method private IO(Lcom/xiaomi/accountsdk/account/data/r;Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/c;->CK:Lcom/xiaomi/passport/v2/utils/f;

    new-instance v1, Lcom/xiaomi/passport/v2/ui/F;

    invoke-direct {v1, p0, p2, p3}, Lcom/xiaomi/passport/v2/ui/F;-><init>(Lcom/xiaomi/passport/v2/ui/c;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/v2/utils/f;->Lz(Lcom/xiaomi/accountsdk/account/data/r;Lcom/xiaomi/passport/uicontroller/z;)V

    return-void
.end method

.method private IP(Landroid/widget/ImageView;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020052

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/passport/utils/a;->CX(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private IS()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/c;->pz:Lcom/xiaomi/passport/ui/m;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/g;->JF(Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/v2/ui/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method private IT(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)V
    .locals 3

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "start to set password"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/c;->pz:Lcom/xiaomi/passport/ui/m;

    invoke-static {p1, p2, v0, v1}, Lcom/xiaomi/passport/ui/u;->vp(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/ui/u;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method private IU(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/c;->pz:Lcom/xiaomi/passport/ui/m;

    invoke-static {p1, p2, v0, v1}, Lcom/xiaomi/passport/ui/e;->sZ(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/AccountInfo;Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/ui/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method static synthetic IV(Lcom/xiaomi/passport/v2/ui/c;)Lcom/xiaomi/passport/ui/h;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/c;->CL:Lcom/xiaomi/passport/ui/h;

    return-object v0
.end method

.method static synthetic IW(Lcom/xiaomi/passport/v2/ui/c;)Lcom/xiaomi/passport/ui/m;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/c;->pz:Lcom/xiaomi/passport/ui/m;

    return-object v0
.end method

.method static synthetic IX(Lcom/xiaomi/passport/v2/ui/c;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/c;->CM:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic IY(Lcom/xiaomi/passport/v2/ui/c;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/c;->tT()Z

    move-result v0

    return v0
.end method

.method static synthetic IZ(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/v2/ui/c;->IE(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method

.method static synthetic Ja(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/v2/ui/c;->II(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method

.method static synthetic Jb(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/v2/ui/c;->IL(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method

.method static synthetic Jc(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/AccountInfo;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/c;->tR(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Z)V

    return-void
.end method

.method static synthetic Jd(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/r;Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/passport/v2/ui/c;->IO(Lcom/xiaomi/accountsdk/account/data/r;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic Je(Lcom/xiaomi/passport/v2/ui/c;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/c;->tU(II)V

    return-void
.end method

.method static synthetic Jf(Lcom/xiaomi/passport/v2/ui/c;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/passport/v2/ui/c;->tZ(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic Jg(Lcom/xiaomi/passport/v2/ui/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/c;->IS()V

    return-void
.end method

.method static synthetic Jh(Lcom/xiaomi/passport/v2/ui/c;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/c;->IU(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    return-void
.end method


# virtual methods
.method protected IA()V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/v2/ui/l;

    invoke-direct {v0}, Lcom/xiaomi/passport/v2/ui/l;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/c;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/l;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/c;->pz:Lcom/xiaomi/passport/ui/m;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/l;->tQ(Lcom/xiaomi/passport/ui/m;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method protected IB(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/passport/data/a;->yI()Lcom/xiaomi/passport/data/a;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->vw:Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/data/a;->yH(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/c;->IT(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/c;->IM(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)V

    goto :goto_0
.end method

.method protected IC(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V
    .locals 4

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "start to login"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->RZ:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->Xm(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)Lcom/xiaomi/accountsdk/account/data/n;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/c;->pA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/n;->Xs(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/n;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/passport/i;->PX()Lcom/xiaomi/passport/h;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/accountsdk/account/e;->acG()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/passport/h;->PM(Landroid/app/Application;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/n;->Xp([Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/n;->build()Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/c;->CK:Lcom/xiaomi/passport/v2/utils/f;

    new-instance v3, Lcom/xiaomi/passport/v2/ui/B;

    invoke-direct {v3, p0, v0}, Lcom/xiaomi/passport/v2/ui/B;-><init>(Lcom/xiaomi/passport/v2/ui/c;Z)V

    invoke-virtual {v2, v1, v3}, Lcom/xiaomi/passport/v2/utils/f;->Lx(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;Lcom/xiaomi/passport/uicontroller/B;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected IF(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 1

    const-string/jumbo v0, "click_login_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/c;->tS(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/passport/v2/ui/J;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/v2/ui/J;-><init>(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/c;->tW(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected IG(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/p;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/p;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/p;->XD(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/p;->build()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/v2/ui/O;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaomi/passport/v2/ui/O;-><init>(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/v2/ui/c;->tW(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected IH()V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/v2/ui/P;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/v2/ui/P;-><init>(Lcom/xiaomi/passport/v2/ui/c;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/c;->tW(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected IJ(Landroid/widget/TextView;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-wide v0, p0, Lcom/xiaomi/passport/v2/ui/c;->CN:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/passport/v2/ui/c;->CN:J

    new-instance v0, Lcom/xiaomi/passport/v2/ui/G;

    iget-wide v2, p0, Lcom/xiaomi/passport/v2/ui/c;->CN:J

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/passport/v2/ui/G;-><init>(Lcom/xiaomi/passport/v2/ui/c;JJLandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/c;->CM:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/c;->CM:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method protected IK(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/v2/ui/c;->IP(Landroid/widget/ImageView;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/passport/uicontroller/v;

    new-instance v1, Lcom/xiaomi/passport/v2/ui/H;

    invoke-direct {v1, p0, p3, p2}, Lcom/xiaomi/passport/v2/ui/H;-><init>(Lcom/xiaomi/passport/v2/ui/c;Landroid/content/res/Resources;Ljava/lang/String;)V

    new-instance v2, Lcom/xiaomi/passport/v2/ui/I;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/passport/v2/ui/I;-><init>(Lcom/xiaomi/passport/v2/ui/c;Landroid/widget/ImageView;)V

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/uicontroller/v;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/w;)V

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected IM(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)V
    .locals 4

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "start to register"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->Sr:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->XC(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)Lcom/xiaomi/accountsdk/account/data/p;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/c;->pB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/p;->XF(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/p;->build()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/c;->CK:Lcom/xiaomi/passport/v2/utils/f;

    new-instance v3, Lcom/xiaomi/passport/v2/ui/C;

    invoke-direct {v3, p0, v0, p2, p1}, Lcom/xiaomi/passport/v2/ui/C;-><init>(Lcom/xiaomi/passport/v2/ui/c;ZLcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/xiaomi/passport/v2/utils/f;->Ly(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;Lcom/xiaomi/passport/uicontroller/C;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected IN(Lcom/xiaomi/accountsdk/account/data/r;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/passport/v2/ui/c;->Iz(Lcom/xiaomi/accountsdk/account/data/r;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected IQ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    iget-boolean v4, p0, Lcom/xiaomi/passport/v2/ui/c;->px:Z

    iget-object v5, p0, Lcom/xiaomi/passport/v2/ui/c;->py:Ljava/lang/String;

    move-object v0, p1

    move v2, v1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/passport/utils/w;->Fu(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method protected IR(Ljava/lang/String;II)V
    .locals 6

    iget-boolean v4, p0, Lcom/xiaomi/passport/v2/ui/c;->px:Z

    iget-object v5, p0, Lcom/xiaomi/passport/v2/ui/c;->py:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/passport/utils/w;->Fu(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method protected Iu(Ljava/lang/String;I)V
    .locals 6

    iget-boolean v4, p0, Lcom/xiaomi/passport/v2/ui/c;->px:Z

    iget-object v5, p0, Lcom/xiaomi/passport/v2/ui/c;->py:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/passport/utils/w;->Fu(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method protected Iv(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/b;->Ik(Landroid/os/Bundle;)Lcom/xiaomi/passport/v2/ui/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/c;->pz:Lcom/xiaomi/passport/ui/m;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/b;->tQ(Lcom/xiaomi/passport/ui/m;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method protected Iw()Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/passport/b;->OR()Lcom/xiaomi/passport/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/passport/b;->OR()Lcom/xiaomi/passport/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/passport/a/c;->ro()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected Ix(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/c;->px:Z

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/c;->py:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/passport/utils/w;->Fv(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method protected Iy()V
    .locals 1

    const-string/jumbo v0, "switch_to_reg"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/c;->tS(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/passport/v2/ui/Q;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/v2/ui/Q;-><init>(Lcom/xiaomi/passport/v2/ui/c;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/c;->tW(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected Iz(Lcom/xiaomi/accountsdk/account/data/r;Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/ui/h;

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/passport/v2/ui/E;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/xiaomi/passport/v2/ui/E;-><init>(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/r;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/ui/h;-><init>(Landroid/app/Activity;Lcom/xiaomi/passport/ui/i;)V

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/c;->CL:Lcom/xiaomi/passport/ui/h;

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/passport/v2/ui/c;->IO(Lcom/xiaomi/accountsdk/account/data/r;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/l;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/v2/utils/f;

    invoke-direct {v1, v0}, Lcom/xiaomi/passport/v2/utils/f;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/xiaomi/passport/v2/ui/c;->CK:Lcom/xiaomi/passport/v2/utils/f;

    new-instance v1, Lcom/xiaomi/passport/v2/utils/c;

    invoke-direct {v1, v0}, Lcom/xiaomi/passport/v2/utils/c;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/xiaomi/passport/v2/ui/c;->CJ:Lcom/xiaomi/passport/v2/utils/c;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/c;->CK:Lcom/xiaomi/passport/v2/utils/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/c;->CK:Lcom/xiaomi/passport/v2/utils/f;

    invoke-virtual {v0}, Lcom/xiaomi/passport/v2/utils/f;->cancel()V

    iput-object v1, p0, Lcom/xiaomi/passport/v2/ui/c;->CK:Lcom/xiaomi/passport/v2/utils/f;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/c;->CJ:Lcom/xiaomi/passport/v2/utils/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/c;->CJ:Lcom/xiaomi/passport/v2/utils/c;

    invoke-virtual {v0}, Lcom/xiaomi/passport/v2/utils/c;->cancel()V

    iput-object v1, p0, Lcom/xiaomi/passport/v2/ui/c;->CJ:Lcom/xiaomi/passport/v2/utils/c;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/c;->CM:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/c;->CM:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/xiaomi/passport/v2/ui/c;->CM:Landroid/os/CountDownTimer;

    :cond_2
    invoke-super {p0}, Lcom/xiaomi/passport/ui/l;->onDestroy()V

    return-void
.end method

.method protected te()I
    .locals 1

    const v0, 0x7f0c0004

    return v0
.end method
