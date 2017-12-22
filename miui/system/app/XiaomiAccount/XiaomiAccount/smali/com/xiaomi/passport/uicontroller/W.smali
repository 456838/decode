.class public Lcom/xiaomi/passport/uicontroller/W;
.super Landroid/webkit/WebViewClient;
.source ""


# instance fields
.field private JV:Landroid/webkit/CookieManager;

.field private JW:Lcom/xiaomi/passport/uicontroller/U;

.field private JX:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/U;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/W;->JX:Ljava/lang/String;

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/uicontroller/W;->JV:Landroid/webkit/CookieManager;

    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/W;->JW:Lcom/xiaomi/passport/uicontroller/U;

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/W;->JW:Lcom/xiaomi/passport/uicontroller/U;

    if-nez v0, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/W;->JV:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "passInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "passInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "need-relogin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/W;->JW:Lcom/xiaomi/passport/uicontroller/U;

    invoke-interface {v0}, Lcom/xiaomi/passport/uicontroller/U;->yD()V

    return v3

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/W;->JX:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/W;->JV:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/W;->JX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "login-end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/m;->ahR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/m;->ahS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/W;->JW:Lcom/xiaomi/passport/uicontroller/U;

    invoke-interface {v2, v0, v1}, Lcom/xiaomi/passport/uicontroller/U;->yC(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_4
    const-string/jumbo v1, "auth-end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/W;->JW:Lcom/xiaomi/passport/uicontroller/U;

    invoke-interface {v0, p2}, Lcom/xiaomi/passport/uicontroller/U;->yB(Ljava/lang/String;)V

    return v3

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
