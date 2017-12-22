.class final Lcom/xiaomi/account/ui/bC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gM:Lcom/xiaomi/account/ui/NoNetworkActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/NoNetworkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bC;->gM:Lcom/xiaomi/account/ui/NoNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/bC;->gM:Lcom/xiaomi/account/ui/NoNetworkActivity;

    invoke-static {v0}, Lcom/xiaomi/account/utils/p;->ol(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/account/ui/bC;->gM:Lcom/xiaomi/account/ui/NoNetworkActivity;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/NoNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "calling_activity_action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bC;->gM:Lcom/xiaomi/account/ui/NoNetworkActivity;

    invoke-virtual {v1, v0}, Lcom/xiaomi/account/ui/NoNetworkActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/bC;->gM:Lcom/xiaomi/account/ui/NoNetworkActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/NoNetworkActivity;->finish()V

    :cond_0
    return-void
.end method
