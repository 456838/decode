.class final Lcom/xiaomi/account/ui/bT;
.super Landroid/webkit/WebViewClient;
.source ""


# instance fields
.field final synthetic hn:Lcom/xiaomi/account/ui/AuthorizeActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/AuthorizeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bT;->hn:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bT;->hn:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gq(Lcom/xiaomi/account/ui/AuthorizeActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bT;->hn:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gq(Lcom/xiaomi/account/ui/AuthorizeActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bT;->hn:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gs(Lcom/xiaomi/account/ui/AuthorizeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bT;->hn:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gs(Lcom/xiaomi/account/ui/AuthorizeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/xiaomi/account/ui/bT;->hn:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gr(Lcom/xiaomi/account/ui/AuthorizeActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/bT;->hn:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gr(Lcom/xiaomi/account/ui/AuthorizeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/16 v0, 0x3f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "code="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "&code="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/bT;->hn:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-static {v0, v4, p2}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gw(Lcom/xiaomi/account/ui/AuthorizeActivity;ILjava/lang/String;)V

    return v3

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    const-string/jumbo v1, "error="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "&error="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/account/ui/bT;->hn:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-static {v0, v3, p2}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gw(Lcom/xiaomi/account/ui/AuthorizeActivity;ILjava/lang/String;)V

    return v3

    :cond_5
    const/16 v0, 0x23

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_9

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "access_token="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "&access_token="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/account/ui/bT;->hn:Lcom/xiaomi/account/ui/AuthorizeActivity;

    const-string/jumbo v1, "#"

    const-string/jumbo v2, "?"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gw(Lcom/xiaomi/account/ui/AuthorizeActivity;ILjava/lang/String;)V

    return v3

    :cond_7
    const-string/jumbo v1, "error="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "&error="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/account/ui/bT;->hn:Lcom/xiaomi/account/ui/AuthorizeActivity;

    const-string/jumbo v1, "#"

    const-string/jumbo v2, "?"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gw(Lcom/xiaomi/account/ui/AuthorizeActivity;ILjava/lang/String;)V

    return v3

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
