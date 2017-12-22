.class public Lcom/xiaomi/account/ui/AuthorizeActivity;
.super Lmiui/app/Activity;
.source ""


# static fields
.field public static final do:Ljava/lang/String;

.field private static final dp:Ljava/lang/String;


# instance fields
.field private dq:J

.field private dr:Landroid/widget/ProgressBar;

.field private ds:Ljava/lang/String;

.field private dt:Landroid/view/View;

.field private du:Lcom/xiaomi/account/XiaomiOAuthResponse;

.field private dv:Lcom/xiaomi/accountsdk/utils/s;

.field private dw:Landroid/webkit/WebSettings;

.field private dx:Ljava/lang/String;

.field private dy:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/xiaomi/accountsdk/account/b;->Vu:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/account/ui/AuthorizeActivity;->do:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/account/ui/AuthorizeActivity;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dq:J

    return-void
.end method

.method private gi(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "_locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p1

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/r;->EM(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "_locale"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method private gj()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dw:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "%s Passport/OAuthMIUI/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dw:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private gk()Landroid/view/View;
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dy:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dy:Landroid/webkit/WebView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dr:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dr:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static gl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZLcom/xiaomi/account/IXiaomiAuthResponse;)Landroid/content/Intent;
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "getAuthorizeIntent argument invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "client_id"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "redirect_uri"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    if-eqz p3, :cond_2

    const-string/jumbo v4, "extra_response_type"

    invoke-virtual {p3, v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string/jumbo v4, "response_type"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_7

    const-string/jumbo v0, "extra_scope"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "scope"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p3, :cond_4

    const-string/jumbo v0, "extra_state"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "state"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v0, "skip_confirm"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "url_param"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    if-eqz p5, :cond_6

    const-string/jumbo v0, "extra_response"

    new-instance v1, Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-direct {v1, p5}, Lcom/xiaomi/account/XiaomiOAuthResponse;-><init>(Lcom/xiaomi/account/IXiaomiAuthResponse;)V

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_6
    return-object v2

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method

.method private gm(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v4, v0, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "UTF-8"

    invoke-static {v1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private gn(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AuthorizeActivity"

    const-string/jumbo v3, "parse url exception"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v1
.end method

.method private go(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gn(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gp(ILandroid/os/Bundle;)V

    return-void
.end method

.method private gp(ILandroid/os/Bundle;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->du:Lcom/xiaomi/account/XiaomiOAuthResponse;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->du:Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-virtual {v0}, Lcom/xiaomi/account/XiaomiOAuthResponse;->qi()V

    :cond_1
    :goto_0
    const-string/jumbo v0, "oauth_webview"

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dq:J

    sub-long/2addr v2, v4

    invoke-static {v0, p1, v1, v2, v3}, Lcom/xiaomi/account/utils/d;->nn(Ljava/lang/String;ILjava/lang/String;J)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->finish()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->du:Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-virtual {v0, p2}, Lcom/xiaomi/account/XiaomiOAuthResponse;->qk(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic gq(Lcom/xiaomi/account/ui/AuthorizeActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dr:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic gr(Lcom/xiaomi/account/ui/AuthorizeActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->ds:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic gs(Lcom/xiaomi/account/ui/AuthorizeActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dt:Landroid/view/View;

    return-object v0
.end method

.method static synthetic gt(Lcom/xiaomi/account/ui/AuthorizeActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic gu(Lcom/xiaomi/account/ui/AuthorizeActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dy:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic gv(Lcom/xiaomi/account/ui/AuthorizeActivity;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gp(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic gw(Lcom/xiaomi/account/ui/AuthorizeActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/AuthorizeActivity;->go(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dy:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dy:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gp(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gk()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_response"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/XiaomiOAuthResponse;

    iput-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->du:Lcom/xiaomi/account/XiaomiOAuthResponse;

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dy:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dw:Landroid/webkit/WebSettings;

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dw:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dw:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dw:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url_param"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "AuthorizeActivity"

    const-string/jumbo v1, "url_param bundle is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->finish()V

    return-void

    :cond_1
    const-string/jumbo v1, "redirect_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->ds:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gi(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/account/ui/AuthorizeActivity;->dp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gm(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dx:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gj()V

    new-instance v1, Lcom/xiaomi/accountsdk/utils/u;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/u;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dy:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/utils/u;->air(Landroid/webkit/WebView;)V

    new-instance v1, Lcom/xiaomi/accountsdk/utils/v;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/v;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dy:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/utils/v;->ait(Landroid/webkit/WebView;)V

    new-instance v1, Lcom/xiaomi/accountsdk/utils/y;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/y;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dy:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/utils/y;->aiy(Landroid/webkit/WebView;)V

    new-instance v1, Lcom/xiaomi/accountsdk/utils/x;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/x;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dy:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/utils/x;->aiw(Landroid/webkit/WebView;)V

    new-instance v1, Lcom/xiaomi/account/ui/bT;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bT;-><init>(Lcom/xiaomi/account/ui/AuthorizeActivity;)V

    iget-object v2, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dy:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dy:Landroid/webkit/WebView;

    new-instance v2, Lcom/xiaomi/account/ui/bU;

    invoke-direct {v2, p0}, Lcom/xiaomi/account/ui/bU;-><init>(Lcom/xiaomi/account/ui/AuthorizeActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    const v3, 0x7f100009

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dt:Landroid/view/View;

    iget-object v3, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dt:Landroid/view/View;

    new-instance v4, Lcom/xiaomi/account/ui/bV;

    invoke-direct {v4, p0}, Lcom/xiaomi/account/ui/bV;-><init>(Lcom/xiaomi/account/ui/AuthorizeActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f100007

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/account/ui/bW;

    invoke-direct {v4, p0}, Lcom/xiaomi/account/ui/bW;-><init>(Lcom/xiaomi/account/ui/AuthorizeActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Lmiui/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    new-instance v1, Lcom/xiaomi/accountsdk/utils/w;

    iget-object v2, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dy:Landroid/webkit/WebView;

    invoke-direct {v1, v2}, Lcom/xiaomi/accountsdk/utils/w;-><init>(Landroid/webkit/WebView;)V

    iput-object v1, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dv:Lcom/xiaomi/accountsdk/utils/s;

    iget-object v1, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dv:Lcom/xiaomi/accountsdk/utils/s;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/r;->aij(Lcom/xiaomi/accountsdk/utils/s;)V

    new-instance v1, Lcom/xiaomi/account/ui/M;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/account/ui/M;-><init>(Lcom/xiaomi/account/ui/AuthorizeActivity;Landroid/os/Bundle;)V

    new-array v0, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/xiaomi/account/ui/M;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dv:Lcom/xiaomi/accountsdk/utils/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dv:Lcom/xiaomi/accountsdk/utils/s;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/r;->aim(Lcom/xiaomi/accountsdk/utils/s;)V

    iput-object v1, p0, Lcom/xiaomi/account/ui/AuthorizeActivity;->dv:Lcom/xiaomi/accountsdk/utils/s;

    :cond_0
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    return-void
.end method
