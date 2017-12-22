.class public Lcom/xiaomi/accountsdk/utils/v;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ait(Landroid/webkit/WebView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/utils/FidNonce$Type;->Zp:Lcom/xiaomi/accountsdk/utils/FidNonce$Type;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/utils/k;->ahJ(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;)Lcom/xiaomi/accountsdk/utils/j;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/utils/v;->aiu(Lcom/xiaomi/accountsdk/utils/j;Landroid/webkit/CookieManager;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method public final aiu(Lcom/xiaomi/accountsdk/utils/j;Landroid/webkit/CookieManager;)V
    .locals 2

    const-string/jumbo v0, "fidNonce"

    iget-object v1, p1, Lcom/xiaomi/accountsdk/utils/j;->NC:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/xiaomi/accountsdk/utils/q;->aii(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "fidNonceSign"

    iget-object v1, p1, Lcom/xiaomi/accountsdk/utils/j;->ND:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/xiaomi/accountsdk/utils/q;->aii(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
