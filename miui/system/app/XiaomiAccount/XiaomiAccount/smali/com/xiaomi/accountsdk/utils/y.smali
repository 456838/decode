.class public final Lcom/xiaomi/accountsdk/utils/y;
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

    const-string/jumbo v0, "userSpaceId"

    return-object v0
.end method

.method protected aih()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/t;->aip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aix(Ljava/lang/String;Landroid/webkit/CookieManager;)V
    .locals 0

    invoke-super {p0, p2, p1}, Lcom/xiaomi/accountsdk/utils/q;->aif(Landroid/webkit/CookieManager;Ljava/lang/String;)V

    return-void
.end method

.method public aiy(Landroid/webkit/WebView;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/xiaomi/accountsdk/utils/q;->aie(Landroid/webkit/WebView;)V

    return-void
.end method
