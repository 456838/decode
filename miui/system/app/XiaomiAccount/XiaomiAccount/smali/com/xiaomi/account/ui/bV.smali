.class final Lcom/xiaomi/account/ui/bV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic hp:Lcom/xiaomi/account/ui/AuthorizeActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/AuthorizeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bV;->hp:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bV;->hp:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gu(Lcom/xiaomi/account/ui/AuthorizeActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/bV;->hp:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/AuthorizeActivity;->gt(Lcom/xiaomi/account/ui/AuthorizeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
