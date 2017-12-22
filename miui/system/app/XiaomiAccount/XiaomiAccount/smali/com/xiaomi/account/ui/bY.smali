.class final Lcom/xiaomi/account/ui/bY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/i;


# instance fields
.field final synthetic hs:Lcom/xiaomi/account/ui/N;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/N;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bY;->hs:Lcom/xiaomi/account/ui/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iC(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bY;->hs:Lcom/xiaomi/account/ui/N;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/N;->gK(Lcom/xiaomi/account/ui/N;Lcom/xiaomi/account/task/h;)Lcom/xiaomi/account/task/h;

    iget-object v0, p0, Lcom/xiaomi/account/ui/bY;->hs:Lcom/xiaomi/account/ui/N;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bY;->hs:Lcom/xiaomi/account/ui/N;

    invoke-virtual {v1, p1}, Lcom/xiaomi/account/ui/N;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/N;->gN(Lcom/xiaomi/account/ui/N;Ljava/lang/String;)V

    return-void
.end method

.method public iD()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/bY;->hs:Lcom/xiaomi/account/ui/N;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/N;->gK(Lcom/xiaomi/account/ui/N;Lcom/xiaomi/account/task/h;)Lcom/xiaomi/account/task/h;

    const-string/jumbo v0, "update_phone_success"

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "user_detail_info"

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/bY;->hs:Lcom/xiaomi/account/ui/N;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/N;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/bY;->hs:Lcom/xiaomi/account/ui/N;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/N;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
