.class final Lcom/xiaomi/account/ui/bW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic hq:Lcom/xiaomi/account/ui/AuthorizeActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/AuthorizeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bW;->hq:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/bW;->hq:Lcom/xiaomi/account/ui/AuthorizeActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/AuthorizeActivity;->onBackPressed()V

    return-void
.end method
