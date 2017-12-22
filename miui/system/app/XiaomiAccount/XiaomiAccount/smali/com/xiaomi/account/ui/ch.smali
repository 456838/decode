.class final Lcom/xiaomi/account/ui/ch;
.super Landroid/webkit/WebViewClient;
.source ""


# instance fields
.field final synthetic hG:Lcom/xiaomi/account/ui/SnsWebViewActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/SnsWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ch;->hG:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/ch;->hG:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hm(Lcom/xiaomi/account/ui/SnsWebViewActivity;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/ch;->hG:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hl(Lcom/xiaomi/account/ui/SnsWebViewActivity;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/xiaomi/account/utils/q;->mv:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/account/utils/q;->mw:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/ch;->hG:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hj(Lcom/xiaomi/account/ui/SnsWebViewActivity;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/ch;->hG:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hk(Lcom/xiaomi/account/ui/SnsWebViewActivity;)V

    return v3

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/ch;->hG:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hd(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/ch;->hG:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    iget-object v1, p0, Lcom/xiaomi/account/ui/ch;->hG:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->he(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/account/data/e;->md()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/SnsAddAccountActivity;->ii(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/ch;->hG:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hk(Lcom/xiaomi/account/ui/SnsWebViewActivity;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/ch;->hG:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->finish()V

    return v3

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
