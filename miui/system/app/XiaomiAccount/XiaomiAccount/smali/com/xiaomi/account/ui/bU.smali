.class final Lcom/xiaomi/account/ui/bU;
.super Landroid/webkit/WebChromeClient;
.source ""


# instance fields
.field final synthetic ho:Lcom/xiaomi/account/ui/AuthorizeActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/AuthorizeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bU;->ho:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bU;->ho:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gq(Lcom/xiaomi/account/ui/AuthorizeActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x9

    div-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
