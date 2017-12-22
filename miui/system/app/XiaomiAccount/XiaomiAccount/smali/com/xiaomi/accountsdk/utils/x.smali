.class public Lcom/xiaomi/accountsdk/utils/x;
.super Lcom/xiaomi/accountsdk/utils/q;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/q;-><init>()V

    return-void
.end method


# virtual methods
.method protected aig()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "NativeUserAgent"

    return-object v0
.end method

.method protected aih()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/xiaomi/accountsdk/account/e;->acC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aiv(Ljava/lang/String;Landroid/webkit/CookieManager;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p2, v0}, Lcom/xiaomi/accountsdk/utils/q;->aif(Landroid/webkit/CookieManager;Ljava/lang/String;)V

    return-void
.end method

.method public aiw(Landroid/webkit/WebView;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/xiaomi/accountsdk/utils/q;->aie(Landroid/webkit/WebView;)V

    return-void
.end method
