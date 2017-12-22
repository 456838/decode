.class public Lcom/xiaomi/passport/ui/f;
.super Lcom/xiaomi/passport/ui/l;
.source ""


# instance fields
.field private oZ:Lcom/xiaomi/accountsdk/utils/s;

.field final pa:Landroid/webkit/WebChromeClient;

.field private pb:Landroid/webkit/WebView;

.field final pc:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/l;-><init>()V

    new-instance v0, Lcom/xiaomi/passport/ui/S;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/S;-><init>(Lcom/xiaomi/passport/ui/f;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/f;->pc:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/xiaomi/passport/ui/T;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/T;-><init>(Lcom/xiaomi/passport/ui/f;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/f;->pa:Landroid/webkit/WebChromeClient;

    return-void
.end method

.method private tc()Landroid/view/View;
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/f;->pb:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/f;->pb:Landroid/webkit/WebView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private td()V
    .locals 5

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "local_feature_response"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;

    if-eqz v0, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "booleanResult"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;->Hx(Landroid/os/Bundle;)V

    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static tf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; domain = account.xiaomi.com; path=/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tg()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.account.action.XIAOMI_ACCOUNT_LOGIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_add_account_prompt"

    const v2, 0x7f0c00a1

    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/ui/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/f;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic th(Lcom/xiaomi/passport/ui/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/f;->td()V

    return-void
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ScanCodeLoginFragment"

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/f;->pb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/f;->pb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/f;->td()V

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/l;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/r;->EE(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ScanCodeLoginFragment"

    const-string/jumbo v1, "illegal account login url"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/f;->td()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/x;->FC(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/f;->tg()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/f;->td()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/accountmanager/f;->BY(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeAllCookie()V

    sget-object v3, Lcom/xiaomi/accountsdk/utils/q;->ZB:Ljava/lang/String;

    const-string/jumbo v4, "userId"

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/xiaomi/passport/ui/f;->tf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/accountsdk/utils/q;->ZB:Ljava/lang/String;

    const-string/jumbo v3, "passToken"

    invoke-static {v3, v1}, Lcom/xiaomi/passport/ui/f;->tf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/passport/utils/y;

    invoke-direct {v0}, Lcom/xiaomi/passport/utils/y;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/y;->FZ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/xiaomi/accountsdk/utils/u;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/u;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/accountsdk/utils/u;->ais(Ljava/lang/String;Landroid/webkit/CookieManager;)V

    :cond_2
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/utils/FidNonce$Type;->Zp:Lcom/xiaomi/accountsdk/utils/FidNonce$Type;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/utils/k;->ahJ(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;)Lcom/xiaomi/accountsdk/utils/j;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/xiaomi/accountsdk/utils/v;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/v;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/accountsdk/utils/v;->aiu(Lcom/xiaomi/accountsdk/utils/j;Landroid/webkit/CookieManager;)V

    :cond_3
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/t;->aip()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/xiaomi/accountsdk/utils/y;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/y;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/accountsdk/utils/y;->aix(Ljava/lang/String;Landroid/webkit/CookieManager;)V

    :cond_4
    invoke-static {}, Lcom/xiaomi/accountsdk/account/e;->acC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/xiaomi/accountsdk/utils/x;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/x;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/accountsdk/utils/x;->aiv(Ljava/lang/String;Landroid/webkit/CookieManager;)V

    :cond_5
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/f;->tc()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/f;->pb:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/f;->pb:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/f;->pc:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/f;->pb:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/f;->pa:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/f;->pb:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/passport/utils/r;->EF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/accountsdk/utils/w;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/f;->pb:Landroid/webkit/WebView;

    invoke-direct {v1, v2}, Lcom/xiaomi/accountsdk/utils/w;-><init>(Landroid/webkit/WebView;)V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/f;->oZ:Lcom/xiaomi/accountsdk/utils/s;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/f;->oZ:Lcom/xiaomi/accountsdk/utils/s;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/r;->aij(Lcom/xiaomi/accountsdk/utils/s;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/f;->oZ:Lcom/xiaomi/accountsdk/utils/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/f;->oZ:Lcom/xiaomi/accountsdk/utils/s;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/r;->aim(Lcom/xiaomi/accountsdk/utils/s;)V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/f;->oZ:Lcom/xiaomi/accountsdk/utils/s;

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/passport/ui/l;->onDestroy()V

    return-void
.end method

.method protected te()I
    .locals 1

    const/high16 v0, 0x7f0c0000

    return v0
.end method
