.class final Lcom/xiaomi/account/ui/cq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic hQ:Lcom/xiaomi/account/ui/SnsAddAccountActivity;

.field final synthetic hR:Lcom/xiaomi/account/data/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/SnsAddAccountActivity;Lcom/xiaomi/account/data/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/cq;->hQ:Lcom/xiaomi/account/ui/SnsAddAccountActivity;

    iput-object p2, p0, Lcom/xiaomi/account/ui/cq;->hR:Lcom/xiaomi/account/data/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/account/ui/cq;->hQ:Lcom/xiaomi/account/ui/SnsAddAccountActivity;

    iget-object v1, p0, Lcom/xiaomi/account/ui/cq;->hR:Lcom/xiaomi/account/data/e;

    invoke-virtual {v1}, Lcom/xiaomi/account/data/e;->md()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/cq;->hQ:Lcom/xiaomi/account/ui/SnsAddAccountActivity;

    invoke-virtual {v2}, Lcom/xiaomi/account/ui/SnsAddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "extra_show_sns_account_after_binding_success"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->gU(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/cq;->hQ:Lcom/xiaomi/account/ui/SnsAddAccountActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/SnsAddAccountActivity;->finish()V

    return-void
.end method
