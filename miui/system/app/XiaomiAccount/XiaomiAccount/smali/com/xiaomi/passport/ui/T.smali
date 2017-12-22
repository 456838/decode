.class final Lcom/xiaomi/passport/ui/T;
.super Landroid/webkit/WebChromeClient;
.source ""


# instance fields
.field final synthetic ty:Lcom/xiaomi/passport/ui/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/T;->ty:Lcom/xiaomi/passport/ui/f;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/T;->ty:Lcom/xiaomi/passport/ui/f;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/f;->th(Lcom/xiaomi/passport/ui/f;)V

    return-void
.end method
