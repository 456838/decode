.class public abstract Lcom/xiaomi/passport/ui/x;
.super Lcom/xiaomi/passport/ui/l;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private rA:Landroid/widget/EditText;

.field private rB:J

.field private rt:Lcom/xiaomi/passport/ui/z;

.field private ru:Lcom/xiaomi/passport/ui/z;

.field private rv:Landroid/widget/TextView;

.field protected rw:Ljava/lang/String;

.field private rx:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

.field protected ry:Landroid/widget/CheckBox;

.field private rz:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/l;-><init>()V

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/xiaomi/passport/ui/x;->rB:J

    return-void
.end method

.method private wB()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->ry:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->ry:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic wE(Lcom/xiaomi/passport/ui/x;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic wF(Lcom/xiaomi/passport/ui/x;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rA:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic wG(Lcom/xiaomi/passport/ui/x;Lcom/xiaomi/passport/ui/z;)Lcom/xiaomi/passport/ui/z;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/x;->rt:Lcom/xiaomi/passport/ui/z;

    return-object p1
.end method

.method static synthetic wH(Lcom/xiaomi/passport/ui/x;Lcom/xiaomi/passport/ui/z;)Lcom/xiaomi/passport/ui/z;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/x;->ru:Lcom/xiaomi/passport/ui/z;

    return-object p1
.end method

.method static synthetic wI(Lcom/xiaomi/passport/ui/x;)Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/x;->wB()Z

    move-result v0

    return v0
.end method

.method static synthetic wJ(Lcom/xiaomi/passport/ui/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/x;->ww()V

    return-void
.end method

.method private ww()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rt:Lcom/xiaomi/passport/ui/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rt:Lcom/xiaomi/passport/ui/z;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/z;->wL()V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/x;->rt:Lcom/xiaomi/passport/ui/z;

    :cond_0
    return-void
.end method

.method private wx()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->ru:Lcom/xiaomi/passport/ui/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->ru:Lcom/xiaomi/passport/ui/z;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/z;->wL()V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/x;->ru:Lcom/xiaomi/passport/ui/z;

    :cond_0
    return-void
.end method

.method private wy()V
    .locals 9

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    const v1, 0x7f0c0076

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/x;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xJ(Z)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v8

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/x;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "autoReadSmsProgress"

    invoke-virtual {v8, v0, v1}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/passport/ui/aP;

    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0xfa0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, Lcom/xiaomi/passport/ui/aP;-><init>(Lcom/xiaomi/passport/ui/x;Lcom/xiaomi/passport/ui/x;JJLcom/xiaomi/passport/ui/C;)V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/x;->rt:Lcom/xiaomi/passport/ui/z;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rt:Lcom/xiaomi/passport/ui/z;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/z;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public abstract gG(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract gI(Ljava/lang/String;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rv:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rw:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/x;->gI(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rz:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/x;->wC()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/l;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/x;->wy()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/x;->wA()I

    move-result v0

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/x;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AbstractVerifyCodeFragment"

    const-string/jumbo v2, "args is null"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-object v1

    :cond_0
    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/x;->rw:Ljava/lang/String;

    const v0, 0x7f100064

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0c001a

    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/ui/x;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/x;->rw:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100065

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/x;->rA:Landroid/widget/EditText;

    const v0, 0x7f100066

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/x;->rv:Landroid/widget/TextView;

    const v0, 0x7f100067

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/x;->rz:Landroid/widget/Button;

    const v0, 0x7f100011

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/x;->ry:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rz:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/x;->wz()V

    return-object v1
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rx:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/x;->rx:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/xiaomi/passport/ui/x;->rx:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/x;->ww()V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/x;->wx()V

    invoke-super {p0}, Lcom/xiaomi/passport/ui/l;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/xiaomi/passport/ui/l;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    new-instance v2, Lcom/xiaomi/passport/ui/y;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/xiaomi/passport/ui/y;-><init>(Lcom/xiaomi/passport/ui/x;Lcom/xiaomi/passport/ui/y;)V

    invoke-direct {v1, v2}, Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;-><init>(Lcom/xiaomi/passport/utils/e;)V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/x;->rx:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/x;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/x;->rx:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected wA()I
    .locals 1

    const v0, 0x7f03001e

    return v0
.end method

.method protected wC()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rA:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/x;->px:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rA:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/x;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/x;->rv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/x;->rA:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/x;->rA:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/passport/ui/x;->rA:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/passport/ui/x;->rA:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rA:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rA:Landroid/widget/EditText;

    const v1, 0x7f0c0063

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/x;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/passport/ui/x;->rA:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/x;->rA:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/passport/ui/x;->rA:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/passport/ui/x;->rA:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/passport/ui/x;->rw:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/x;->wB()Z

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaomi/passport/ui/x;->gG(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected wD(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/x;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected wz()V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->rv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-wide v0, p0, Lcom/xiaomi/passport/ui/x;->rB:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/passport/ui/x;->rB:J

    new-instance v1, Lcom/xiaomi/passport/ui/aQ;

    iget-wide v4, p0, Lcom/xiaomi/passport/ui/x;->rB:J

    const-wide/16 v6, 0x3e8

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/passport/ui/aQ;-><init>(Lcom/xiaomi/passport/ui/x;Lcom/xiaomi/passport/ui/x;JJ)V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/x;->ru:Lcom/xiaomi/passport/ui/z;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/x;->ru:Lcom/xiaomi/passport/ui/z;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/z;->start()Landroid/os/CountDownTimer;

    return-void
.end method
