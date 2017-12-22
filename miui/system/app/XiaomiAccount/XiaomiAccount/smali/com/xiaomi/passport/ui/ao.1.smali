.class final Lcom/xiaomi/passport/ui/ao;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/v2/utils/h;


# instance fields
.field final synthetic uf:Lcom/xiaomi/passport/ui/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/p;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public yq(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    const-string/jumbo v1, "need_step2"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/p;->uq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/p;->tT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->Tt:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->Ts:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v4, p1, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->Tu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/passport/ui/p;->ux(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/p;->uD(Lcom/xiaomi/passport/ui/p;)V

    return-void
.end method

.method public yr(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/p;->tT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v0, 0x7f0c00ae

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/p;->uE(Lcom/xiaomi/passport/ui/p;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    const v1, 0x7f0c0085

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/passport/ui/p;->tU(II)V

    goto :goto_0
.end method

.method public ys(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/p;->eq()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/p;->tT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/ui/p;->tR(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/p;->uD(Lcom/xiaomi/passport/ui/p;)V

    return-void
.end method

.method public yt(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/p;->tT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/p;->pN:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    const v1, 0x7f0c0085

    const v2, 0x7f0c008d

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/p;->tU(II)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/p;->ur(Ljava/lang/String;)V

    return-void
.end method

.method public yu(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    const-string/jumbo v1, "need_notification"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/p;->uq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/p;->tT()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/xiaomi/passport/ui/p;->tZ(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ao;->uf:Lcom/xiaomi/passport/ui/p;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/p;->uD(Lcom/xiaomi/passport/ui/p;)V

    return-void
.end method
