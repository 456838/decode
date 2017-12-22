.class public Lcom/xiaomi/passport/uicontroller/R;
.super Landroid/webkit/WebView;
.source ""


# instance fields
.field private final JN:Z

.field private final JO:Lcom/xiaomi/passport/uicontroller/U;

.field private final JP:Lcom/xiaomi/accountsdk/utils/s;

.field private final notificationUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/xiaomi/passport/uicontroller/U;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/w;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/utils/w;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/xiaomi/passport/uicontroller/R;->JP:Lcom/xiaomi/accountsdk/utils/s;

    const-string/jumbo v0, "notificationUrl should not be empty"

    invoke-static {p2, v0}, Lcom/xiaomi/passport/uicontroller/X;->NL(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "notificationEndListener should not be null"

    invoke-static {p4, v0}, Lcom/xiaomi/passport/uicontroller/X;->NM(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "context should not be null"

    invoke-static {p1, v0}, Lcom/xiaomi/passport/uicontroller/X;->NM(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/R;->notificationUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaomi/passport/uicontroller/R;->JN:Z

    iput-object p4, p0, Lcom/xiaomi/passport/uicontroller/R;->JO:Lcom/xiaomi/passport/uicontroller/U;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/xiaomi/passport/uicontroller/U;Lcom/xiaomi/passport/uicontroller/R;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/passport/uicontroller/R;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/xiaomi/passport/uicontroller/U;)V

    return-void
.end method

.method private static NC(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "_device_name"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v1, "_provision"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static ND(Landroid/webkit/WebSettings;)V
    .locals 4

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "%s PassportSDK/NotificationWebView/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/B;->getVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static NF(Landroid/content/Intent;)Lcom/xiaomi/passport/uicontroller/S;
    .locals 4

    const-string/jumbo v0, "need_remove_all_cookies"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "notification_url"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "extra_show_skip_login"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Lcom/xiaomi/passport/uicontroller/S;

    invoke-static {v1, v2}, Lcom/xiaomi/passport/uicontroller/R;->NC(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lcom/xiaomi/passport/uicontroller/S;-><init>(Ljava/lang/String;Z)V

    return-object v3
.end method

.method public static NG(Landroid/content/Intent;Lcom/xiaomi/passport/uicontroller/S;)V
    .locals 2

    const-string/jumbo v0, "notification_url"

    iget-object v1, p1, Lcom/xiaomi/passport/uicontroller/S;->notificationUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "need_remove_all_cookies"

    iget-boolean v1, p1, Lcom/xiaomi/passport/uicontroller/S;->JQ:Z

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public NE()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/R;->notificationUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/m;->ahP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "NotificationWebView"

    const-string/jumbo v1, "invalid notificationUrl"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/xiaomi/passport/uicontroller/R;->JN:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/R;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/R;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-static {v1}, Lcom/xiaomi/passport/uicontroller/R;->ND(Landroid/webkit/WebSettings;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/W;

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/R;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/passport/uicontroller/R;->JO:Lcom/xiaomi/passport/uicontroller/U;

    invoke-direct {v1, v2, v0, v3}, Lcom/xiaomi/passport/uicontroller/W;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/U;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/uicontroller/R;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Lcom/xiaomi/accountsdk/utils/u;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/u;-><init>()V

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/utils/u;->air(Landroid/webkit/WebView;)V

    new-instance v1, Lcom/xiaomi/accountsdk/utils/v;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/v;-><init>()V

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/utils/v;->ait(Landroid/webkit/WebView;)V

    new-instance v1, Lcom/xiaomi/accountsdk/utils/y;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/y;-><init>()V

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/utils/y;->aiy(Landroid/webkit/WebView;)V

    new-instance v1, Lcom/xiaomi/accountsdk/utils/x;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/x;-><init>()V

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/utils/x;->aiw(Landroid/webkit/WebView;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/uicontroller/R;->loadUrl(Ljava/lang/String;)V

    return v4
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/R;->JP:Lcom/xiaomi/accountsdk/utils/s;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/r;->aij(Lcom/xiaomi/accountsdk/utils/s;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/R;->JP:Lcom/xiaomi/accountsdk/utils/s;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/r;->aim(Lcom/xiaomi/accountsdk/utils/s;)V

    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    return-void
.end method
