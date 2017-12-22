.class public Lcom/xiaomi/passport/ui/NotificationActivity;
.super Lcom/xiaomi/passport/ui/BaseActivity;
.source ""


# instance fields
.field private rK:Lcom/xiaomi/passport/uicontroller/g;

.field private rL:Lcom/xiaomi/passport/uicontroller/f;

.field private rM:Lcom/xiaomi/passport/uicontroller/d;

.field private rN:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

.field private rO:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private wO(Landroid/webkit/WebView;)Landroid/view/View;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private wQ(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/NotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/passport/utils/o;->Ej(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private wU(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/ui/aT;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/ui/aT;-><init>(Lcom/xiaomi/passport/ui/NotificationActivity;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    invoke-static {p0}, Lcom/xiaomi/passport/uicontroller/n;->Nf(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/n;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/passport/uicontroller/n;->Ne(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Lcom/xiaomi/passport/uicontroller/l;)Lcom/xiaomi/passport/uicontroller/g;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rK:Lcom/xiaomi/passport/uicontroller/g;

    return-void
.end method

.method private wW(I)V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/widget/f;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/widget/f;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0085

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/f;->setTitle(I)Lcom/xiaomi/passport/widget/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/f;->zv(I)Lcom/xiaomi/passport/widget/f;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/widget/f;->zy(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/passport/widget/f;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/f;->zC()Lcom/xiaomi/passport/widget/e;

    return-void
.end method

.method static synthetic wX(Lcom/xiaomi/passport/ui/NotificationActivity;Lcom/xiaomi/passport/uicontroller/f;)Lcom/xiaomi/passport/uicontroller/f;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rL:Lcom/xiaomi/passport/uicontroller/f;

    return-object p1
.end method

.method static synthetic wY(Lcom/xiaomi/passport/ui/NotificationActivity;Lcom/xiaomi/passport/uicontroller/d;)Lcom/xiaomi/passport/uicontroller/d;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rM:Lcom/xiaomi/passport/uicontroller/d;

    return-object p1
.end method

.method static synthetic wZ(Lcom/xiaomi/passport/ui/NotificationActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/NotificationActivity;->wQ(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic xa(Lcom/xiaomi/passport/ui/NotificationActivity;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/NotificationActivity;->wU(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    return-void
.end method

.method static synthetic xb(Lcom/xiaomi/passport/ui/NotificationActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/NotificationActivity;->wW(I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rO:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rO:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/NotificationActivity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/NotificationActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/NotificationActivity;->wS(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rM:Lcom/xiaomi/passport/uicontroller/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rM:Lcom/xiaomi/passport/uicontroller/d;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/uicontroller/d;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rM:Lcom/xiaomi/passport/uicontroller/d;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rL:Lcom/xiaomi/passport/uicontroller/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rL:Lcom/xiaomi/passport/uicontroller/f;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/uicontroller/f;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rL:Lcom/xiaomi/passport/uicontroller/f;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rK:Lcom/xiaomi/passport/uicontroller/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rK:Lcom/xiaomi/passport/uicontroller/g;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/uicontroller/g;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rK:Lcom/xiaomi/passport/uicontroller/g;

    :cond_2
    invoke-super {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rN:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rN:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/NotificationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rN:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/xiaomi/passport/ui/BaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/NotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_show_skip_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    new-instance v2, Lcom/xiaomi/passport/widget/h;

    invoke-direct {v2, p0}, Lcom/xiaomi/passport/widget/h;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;-><init>(Lcom/xiaomi/passport/utils/e;)V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rN:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rN:Lcom/xiaomi/passport/utils/AccountSmsVerifyCodeReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/passport/ui/NotificationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method wP()Lcom/xiaomi/accountsdk/utils/F;
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/F;->ajd()Lcom/xiaomi/accountsdk/utils/F;

    move-result-object v0

    return-object v0
.end method

.method protected wR(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rL:Lcom/xiaomi/passport/uicontroller/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rL:Lcom/xiaomi/passport/uicontroller/f;

    invoke-virtual {v0}, Lcom/xiaomi/passport/uicontroller/f;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/ui/aU;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/aU;-><init>(Lcom/xiaomi/passport/ui/NotificationActivity;)V

    invoke-static {p0}, Lcom/xiaomi/passport/uicontroller/n;->Nf(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/n;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/passport/uicontroller/n;->Ni(Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/k;)Lcom/xiaomi/passport/uicontroller/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rL:Lcom/xiaomi/passport/uicontroller/f;

    return-void

    :cond_1
    const-string/jumbo v0, "NotificationActivity"

    const-string/jumbo v1, "notification auth future has not finished"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method wS(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/NotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/NotificationActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/NotificationActivity;->wP()Lcom/xiaomi/accountsdk/utils/F;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/accountsdk/utils/F;->ajc(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v0, "NotificationActivity"

    const-string/jumbo v1, "Notification Activity started but without uuid in record. Quit."

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/NotificationActivity;->finish()V

    return-void

    :cond_1
    new-instance v1, Lcom/xiaomi/passport/ui/aR;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/aR;-><init>(Lcom/xiaomi/passport/ui/NotificationActivity;)V

    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/R;->NF(Landroid/content/Intent;)Lcom/xiaomi/passport/uicontroller/S;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/passport/uicontroller/T;

    invoke-direct {v2}, Lcom/xiaomi/passport/uicontroller/T;-><init>()V

    invoke-virtual {v2, p0}, Lcom/xiaomi/passport/uicontroller/T;->NH(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/T;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/passport/uicontroller/T;->NI(Lcom/xiaomi/passport/uicontroller/S;)Lcom/xiaomi/passport/uicontroller/T;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/T;->NJ(Lcom/xiaomi/passport/uicontroller/U;)Lcom/xiaomi/passport/uicontroller/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/uicontroller/T;->build()Lcom/xiaomi/passport/uicontroller/R;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/uicontroller/R;->NE()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rO:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rO:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/NotificationActivity;->wO(Landroid/webkit/WebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/NotificationActivity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/NotificationActivity;->finish()V

    return-void
.end method

.method protected wT(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rM:Lcom/xiaomi/passport/uicontroller/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rM:Lcom/xiaomi/passport/uicontroller/d;

    invoke-virtual {v0}, Lcom/xiaomi/passport/uicontroller/d;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/N;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/N;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/N;->ZO(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/N;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/NotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "service_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/N;->ZN(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/N;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/account/data/N;->ZM(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/N;->build()Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/aS;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/aS;-><init>(Lcom/xiaomi/passport/ui/NotificationActivity;)V

    invoke-static {p0}, Lcom/xiaomi/passport/uicontroller/n;->Nf(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/n;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/passport/uicontroller/n;->Nj(Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;Lcom/xiaomi/passport/uicontroller/i;)Lcom/xiaomi/passport/uicontroller/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/NotificationActivity;->rM:Lcom/xiaomi/passport/uicontroller/d;

    return-void

    :cond_1
    const-string/jumbo v0, "NotificationActivity"

    const-string/jumbo v1, "passToken login has not finished"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected wV()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/NotificationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/NotificationActivity;->finish()V

    return-void
.end method
