.class final Lcom/xiaomi/account/ui/by;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/b;


# instance fields
.field final synthetic gG:Lcom/xiaomi/account/ui/I;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/I;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/by;->gG:Lcom/xiaomi/account/ui/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iN(I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/by;->gG:Lcom/xiaomi/account/ui/I;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/I;->fi(Lcom/xiaomi/account/ui/I;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xiaomi/account/ui/by;->gG:Lcom/xiaomi/account/ui/I;

    iget-object v1, p0, Lcom/xiaomi/account/ui/by;->gG:Lcom/xiaomi/account/ui/I;

    invoke-virtual {v1, p1}, Lcom/xiaomi/account/ui/I;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/xiaomi/account/ui/I;->ft(Lcom/xiaomi/account/ui/I;ZLjava/lang/String;)V

    return-void
.end method

.method public iO()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/by;->gG:Lcom/xiaomi/account/ui/I;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/I;->fi(Lcom/xiaomi/account/ui/I;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xiaomi/account/ui/by;->gG:Lcom/xiaomi/account/ui/I;

    invoke-static {v0}, Lcom/xiaomi/account/ui/I;->fr(Lcom/xiaomi/account/ui/I;)V

    return-void
.end method
