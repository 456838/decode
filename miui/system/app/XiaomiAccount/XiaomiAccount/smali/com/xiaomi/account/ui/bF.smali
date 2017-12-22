.class final Lcom/xiaomi/account/ui/bF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/g;


# instance fields
.field final synthetic gP:Lcom/xiaomi/account/ui/LoginActivity;

.field final synthetic gQ:Lcom/xiaomi/passport/ui/n;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/LoginActivity;Lcom/xiaomi/passport/ui/n;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bF;->gP:Lcom/xiaomi/account/ui/LoginActivity;

    iput-object p2, p0, Lcom/xiaomi/account/ui/bF;->gQ:Lcom/xiaomi/passport/ui/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iE(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/xiaomi/account/ui/bF;->gP:Lcom/xiaomi/account/ui/LoginActivity;

    invoke-virtual {v2}, Lcom/xiaomi/account/ui/LoginActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/xiaomi/account/f;

    iget-object v3, p0, Lcom/xiaomi/account/ui/bF;->gP:Lcom/xiaomi/account/ui/LoginActivity;

    invoke-virtual {v3}, Lcom/xiaomi/account/ui/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/account/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/xiaomi/account/f;->rn()I

    move-result v3

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ne v3, v2, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/xiaomi/account/ui/bF;->gP:Lcom/xiaomi/account/ui/LoginActivity;

    const-string/jumbo v3, "activated_sim_card"

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/account/ui/LoginActivity;->dO(Ljava/lang/String;Z)V

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/account/ui/bF;->gQ:Lcom/xiaomi/passport/ui/n;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/account/ui/bF;->gQ:Lcom/xiaomi/passport/ui/n;

    invoke-interface {v1, v0}, Lcom/xiaomi/passport/ui/n;->uj(Z)V

    :cond_3
    return-void

    :cond_4
    move v2, v0

    goto :goto_0
.end method
