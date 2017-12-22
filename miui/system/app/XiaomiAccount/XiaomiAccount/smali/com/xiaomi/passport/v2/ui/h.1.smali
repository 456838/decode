.class public abstract Lcom/xiaomi/passport/v2/ui/h;
.super Lcom/xiaomi/passport/v2/ui/c;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Di:Landroid/os/CountDownTimer;

.field private Dj:Ljava/lang/String;

.field private Dk:Landroid/widget/ImageView;

.field private Dl:Landroid/view/View;

.field private Dm:Lcom/xiaomi/passport/utils/k;

.field private Dn:Lcom/xiaomi/passport/task/m;

.field private Do:Landroid/widget/EditText;

.field private Dp:Landroid/widget/EditText;

.field private Dq:Landroid/widget/EditText;

.field private Dr:Landroid/widget/TextView;

.field private Ds:Landroid/os/CountDownTimer;

.field private Dt:Landroid/widget/TextView;

.field private Du:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

.field private Dv:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/c;-><init>()V

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dv:J

    return-void
.end method

.method private JV()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Di:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Di:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Di:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    iput-object v1, p0, Lcom/xiaomi/passport/v2/ui/h;->Di:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private JW()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Ds:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Ds:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Ds:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    iput-object v1, p0, Lcom/xiaomi/passport/v2/ui/h;->Ds:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private JX()V
    .locals 7

    const-wide/16 v2, 0xfa0

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    const v1, 0x7f0c0076

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/v2/ui/h;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xJ(Z)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v6

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/h;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "autoReadSmsProgress"

    invoke-virtual {v6, v0, v1}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/passport/v2/ui/ag;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/passport/v2/ui/ag;-><init>(Lcom/xiaomi/passport/v2/ui/h;JJLcom/xiaomi/passport/ui/C;)V

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Di:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Di:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private JZ()V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/h;->ep()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/passport/utils/j;->Dz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/passport/utils/j;->Dw(Ljava/lang/String;)Lcom/xiaomi/passport/utils/k;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/passport/v2/ui/h;->Dm:Lcom/xiaomi/passport/utils/k;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/h;->Dm:Lcom/xiaomi/passport/utils/k;

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string/jumbo v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/h;->Dm:Lcom/xiaomi/passport/utils/k;

    iget-object v2, v2, Lcom/xiaomi/passport/utils/k;->zX:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-direct {p0, v1}, Lcom/xiaomi/passport/v2/ui/h;->Kc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/h;->Dp:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/h;->Dp:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private Ka(Landroid/view/View;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
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

    invoke-virtual {p0, v3, v4}, Lcom/xiaomi/passport/v2/ui/h;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qu:Ljava/lang/String;

    aput-object v3, v1, v5

    const v3, 0x7f0c00aa

    invoke-virtual {p0, v3, v1}, Lcom/xiaomi/passport/v2/ui/h;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/h;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/h;->IK(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void

    :cond_2
    iget-object v3, p2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qt:Ljava/lang/String;

    goto :goto_0
.end method

.method private Kb()V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/h;->JR()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dl:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Do:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Do:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Do:Landroid/widget/EditText;

    const v1, 0x7f0c0062

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/v2/ui/h;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    move-object v0, v1

    :cond_2
    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/h;->Dq:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/h;->Dq:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/h;->Dj:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/passport/v2/ui/h;->In(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Kc(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/passport/utils/j;->Dw(Ljava/lang/String;)Lcom/xiaomi/passport/utils/k;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dm:Lcom/xiaomi/passport/utils/k;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dr:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/h;->Dm:Lcom/xiaomi/passport/utils/k;

    iget-object v2, v2, Lcom/xiaomi/passport/utils/k;->zX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic Kd(Lcom/xiaomi/passport/v2/ui/h;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dk:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic Ke(Lcom/xiaomi/passport/v2/ui/h;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dq:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic Kf(Lcom/xiaomi/passport/v2/ui/h;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic Kg(Lcom/xiaomi/passport/v2/ui/h;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/h;->Di:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic Kh(Lcom/xiaomi/passport/v2/ui/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/h;->Dj:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Ki(Lcom/xiaomi/passport/v2/ui/h;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/h;->Ds:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic Kj(Lcom/xiaomi/passport/v2/ui/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/h;->JV()V

    return-void
.end method


# virtual methods
.method protected abstract Ij()V
.end method

.method protected abstract Il(Ljava/lang/String;)V
.end method

.method protected abstract In(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected JQ()V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/h;->JX()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/h;->JY()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    new-instance v2, Lcom/xiaomi/passport/v2/ui/i;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/xiaomi/passport/v2/ui/i;-><init>(Lcom/xiaomi/passport/v2/ui/h;Lcom/xiaomi/passport/v2/ui/i;)V

    invoke-direct {v1, v2}, Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;-><init>(Lcom/xiaomi/passport/utils/e;)V

    iput-object v1, p0, Lcom/xiaomi/passport/v2/ui/h;->Du:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/h;->Du:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected JR()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dp:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dp:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dp:Landroid/widget/EditText;

    const v1, 0x7f0c005c

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/v2/ui/h;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/h;->Dm:Lcom/xiaomi/passport/utils/k;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/utils/j;->Dx(Ljava/lang/String;Lcom/xiaomi/passport/utils/k;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dp:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dp:Landroid/widget/EditText;

    const v1, 0x7f0c005b

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/v2/ui/h;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method protected JS()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dq:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dq:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/h;->Dq:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/h;->Dt:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/h;->Dq:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/h;->Dq:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/xiaomi/passport/v2/ui/h;->Dq:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingStart()I

    move-result v4

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dq:Landroid/widget/EditText;

    const v1, 0x7f0c0063

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/v2/ui/h;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/h;->Dq:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/xiaomi/passport/v2/ui/h;->Dq:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected JT(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030013

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/xiaomi/passport/v2/ui/h;->Ka(Landroid/view/View;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0024

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const v2, 0x7f0c00bb

    invoke-virtual {p0, v2, v1}, Lcom/xiaomi/passport/v2/ui/h;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected JU(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dq:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/xiaomi/passport/task/n;

    invoke-direct {v0}, Lcom/xiaomi/passport/task/n;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/task/n;->Hw(Ljava/lang/String;)Lcom/xiaomi/passport/task/n;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/v2/ui/ai;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/v2/ui/ai;-><init>(Lcom/xiaomi/passport/v2/ui/h;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/n;->Hv(Lcom/xiaomi/passport/task/o;)Lcom/xiaomi/passport/task/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/n;->build()Lcom/xiaomi/passport/task/m;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dn:Lcom/xiaomi/passport/task/m;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dn:Lcom/xiaomi/passport/task/m;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/task/m;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected JY()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-wide v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dv:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dv:J

    new-instance v0, Lcom/xiaomi/passport/v2/ui/ah;

    iget-wide v2, p0, Lcom/xiaomi/passport/v2/ui/h;->Dv:J

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/v2/ui/ah;-><init>(Lcom/xiaomi/passport/v2/ui/h;JJ)V

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Ds:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Ds:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/passport/v2/ui/c;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    const-string/jumbo v0, "country_iso"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/ui/h;->Kc(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100038

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.account.action.XIAOMI_ACCOUNT_AREA_CODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "extra_show_skip_login"

    iget-boolean v2, p0, Lcom/xiaomi/passport/v2/ui/h;->px:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/h;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f10008f

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/h;->Kb()V

    goto :goto_0

    :cond_2
    const v1, 0x7f100062

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/h;->Ij()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/xiaomi/passport/v2/ui/c;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/j;->Dv(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dn:Lcom/xiaomi/passport/task/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dn:Lcom/xiaomi/passport/task/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/m;->cancel(Z)Z

    iput-object v2, p0, Lcom/xiaomi/passport/v2/ui/h;->Dn:Lcom/xiaomi/passport/task/m;

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/passport/v2/ui/c;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Du:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/h;->Du:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/xiaomi/passport/v2/ui/h;->Du:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/h;->JV()V

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/h;->JW()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/h;->Dp:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/r;->EI(Landroid/content/Context;Landroid/view/View;Z)V

    invoke-super {p0}, Lcom/xiaomi/passport/v2/ui/c;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/xiaomi/passport/v2/ui/c;->onResume()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/h;->Dp:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/r;->EI(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/xiaomi/passport/v2/ui/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f100038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dr:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dr:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dr:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v1}, Lcom/xiaomi/passport/v2/ui/h;->Kc(Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f100039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dp:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dq:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dp:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    const v0, 0x7f100065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dq:Landroid/widget/EditText;

    const v0, 0x7f10008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dt:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dl:Landroid/view/View;

    const v0, 0x7f100061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Do:Landroid/widget/EditText;

    const v0, 0x7f100062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dk:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dk:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/h;->Dk:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/h;->JZ()V

    return-void
.end method
