.class final Lcom/xiaomi/account/ui/bB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/i;


# instance fields
.field final synthetic gL:Lcom/xiaomi/account/ui/I;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/I;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bB;->gL:Lcom/xiaomi/account/ui/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iC(I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/bB;->gL:Lcom/xiaomi/account/ui/I;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/I;->fj(Lcom/xiaomi/account/ui/I;Lcom/xiaomi/account/task/h;)Lcom/xiaomi/account/task/h;

    iget-object v0, p0, Lcom/xiaomi/account/ui/bB;->gL:Lcom/xiaomi/account/ui/I;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bB;->gL:Lcom/xiaomi/account/ui/I;

    invoke-virtual {v1, p1}, Lcom/xiaomi/account/ui/I;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/xiaomi/account/ui/I;->ft(Lcom/xiaomi/account/ui/I;ZLjava/lang/String;)V

    return-void
.end method

.method public iD()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bB;->gL:Lcom/xiaomi/account/ui/I;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/I;->fj(Lcom/xiaomi/account/ui/I;Lcom/xiaomi/account/task/h;)Lcom/xiaomi/account/task/h;

    iget-object v0, p0, Lcom/xiaomi/account/ui/bB;->gL:Lcom/xiaomi/account/ui/I;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/bB;->gL:Lcom/xiaomi/account/ui/I;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
