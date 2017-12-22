.class final Lcom/xiaomi/passport/ui/bb;
.super Landroid/webkit/WebViewClient;
.source ""


# instance fields
.field private vk:Z

.field final synthetic vl:Lcom/xiaomi/passport/ui/LicenseActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/LicenseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/bb;->vl:Lcom/xiaomi/passport/ui/LicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/bb;->vl:Lcom/xiaomi/passport/ui/LicenseActivity;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/LicenseActivity;->ye(Lcom/xiaomi/passport/ui/LicenseActivity;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/bb;->vl:Lcom/xiaomi/passport/ui/LicenseActivity;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/LicenseActivity;->yf(Lcom/xiaomi/passport/ui/LicenseActivity;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/bb;->vk:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/passport/ui/bb;->vl:Lcom/xiaomi/passport/ui/LicenseActivity;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/LicenseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/xiaomi/passport/ui/bb;->vk:Z

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
