.class final Lcom/xiaomi/passport/ui/S;
.super Landroid/webkit/WebViewClient;
.source ""


# instance fields
.field final synthetic tx:Lcom/xiaomi/passport/ui/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/S;->tx:Lcom/xiaomi/passport/ui/f;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string/jumbo v0, "#closewebview"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/S;->tx:Lcom/xiaomi/passport/ui/f;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/f;->th(Lcom/xiaomi/passport/ui/f;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string/jumbo v0, "#closewebview"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/S;->tx:Lcom/xiaomi/passport/ui/f;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/f;->th(Lcom/xiaomi/passport/ui/f;)V

    :cond_0
    return-void
.end method
