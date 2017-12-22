.class final Lcom/xiaomi/account/ui/bu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic gC:Lcom/xiaomi/account/ui/F;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/F;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bu;->gC:Lcom/xiaomi/account/ui/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/bu;->gC:Lcom/xiaomi/account/ui/F;

    invoke-static {v0}, Lcom/xiaomi/account/ui/F;->eB(Lcom/xiaomi/account/ui/F;)Lcom/xiaomi/account/ui/G;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/bu;->gC:Lcom/xiaomi/account/ui/F;

    invoke-static {v0}, Lcom/xiaomi/account/ui/F;->eB(Lcom/xiaomi/account/ui/F;)Lcom/xiaomi/account/ui/G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/G;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/bu;->gC:Lcom/xiaomi/account/ui/F;

    invoke-static {v0}, Lcom/xiaomi/account/ui/F;->eB(Lcom/xiaomi/account/ui/F;)Lcom/xiaomi/account/ui/G;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xiaomi/account/ui/G;->cancel(Z)Z

    iget-object v0, p0, Lcom/xiaomi/account/ui/bu;->gC:Lcom/xiaomi/account/ui/F;

    invoke-static {v0, v3, v2}, Lcom/xiaomi/account/ui/F;->eJ(Lcom/xiaomi/account/ui/F;ILandroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/bu;->gC:Lcom/xiaomi/account/ui/F;

    invoke-static {v0}, Lcom/xiaomi/account/ui/F;->eA(Lcom/xiaomi/account/ui/F;)Lcom/xiaomi/account/ui/H;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/bu;->gC:Lcom/xiaomi/account/ui/F;

    invoke-static {v0}, Lcom/xiaomi/account/ui/F;->eA(Lcom/xiaomi/account/ui/F;)Lcom/xiaomi/account/ui/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/H;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/bu;->gC:Lcom/xiaomi/account/ui/F;

    invoke-static {v0}, Lcom/xiaomi/account/ui/F;->eA(Lcom/xiaomi/account/ui/F;)Lcom/xiaomi/account/ui/H;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xiaomi/account/ui/H;->cancel(Z)Z

    iget-object v0, p0, Lcom/xiaomi/account/ui/bu;->gC:Lcom/xiaomi/account/ui/F;

    invoke-static {v0, v3, v2}, Lcom/xiaomi/account/ui/F;->eJ(Lcom/xiaomi/account/ui/F;ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method
