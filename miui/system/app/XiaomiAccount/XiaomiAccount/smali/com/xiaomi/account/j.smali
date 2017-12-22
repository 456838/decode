.class Lcom/xiaomi/account/j;
.super Lcom/xiaomi/account/i;
.source ""


# instance fields
.field final synthetic nZ:Lcom/xiaomi/account/XiaomiAuthService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/XiaomiAuthService;Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/account/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Lcom/xiaomi/account/m",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/account/j;->nZ:Lcom/xiaomi/account/XiaomiAuthService;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/account/i;-><init>(Lcom/xiaomi/account/XiaomiAuthService;Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/account/IXiaomiAuthResponse;Lcom/xiaomi/account/m;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/account/j;->nZ:Lcom/xiaomi/account/XiaomiAuthService;

    const-string/jumbo v1, "passportapi"

    invoke-static {v0, v1}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->RT:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/xiaomi/account/j;->nZ:Lcom/xiaomi/account/XiaomiAuthService;

    invoke-static {v2, v0, v1}, Lcom/xiaomi/account/utils/p;->or(Landroid/content/Context;Lcom/xiaomi/passport/data/c;Ljava/util/List;)Lcom/xiaomi/accountsdk/account/data/l;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "extra_user_name"

    iget-object v3, v0, Lcom/xiaomi/accountsdk/account/data/l;->Rp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra_nick_name"

    iget-object v3, v0, Lcom/xiaomi/accountsdk/account/data/l;->Rl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra_avatar_url"

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/l;->Rc:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/j;->rR(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "cannot get user info from system"

    const/16 v1, -0x3eb

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/account/j;->rO(ILjava/lang/String;)V

    goto :goto_0
.end method
