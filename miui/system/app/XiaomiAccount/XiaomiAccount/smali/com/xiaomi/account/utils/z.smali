.class final Lcom/xiaomi/account/utils/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/account/task/o",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic mU:Lcom/xiaomi/account/utils/f;

.field final synthetic mV:Z

.field final synthetic mW:Landroid/content/Context;

.field final synthetic mX:Landroid/content/res/Resources;

.field final synthetic mY:Landroid/accounts/Account;

.field final synthetic mZ:Z

.field final synthetic na:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/account/utils/f;ZLandroid/content/Context;Landroid/content/res/Resources;Landroid/accounts/Account;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/utils/z;->mU:Lcom/xiaomi/account/utils/f;

    iput-boolean p2, p0, Lcom/xiaomi/account/utils/z;->mV:Z

    iput-object p3, p0, Lcom/xiaomi/account/utils/z;->mW:Landroid/content/Context;

    iput-object p4, p0, Lcom/xiaomi/account/utils/z;->mX:Landroid/content/res/Resources;

    iput-object p5, p0, Lcom/xiaomi/account/utils/z;->mY:Landroid/accounts/Account;

    iput-boolean p6, p0, Lcom/xiaomi/account/utils/z;->mZ:Z

    iput-boolean p7, p0, Lcom/xiaomi/account/utils/z;->na:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/account/utils/z;->mV:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/xiaomi/account/n;

    invoke-direct {v0}, Lcom/xiaomi/account/n;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/account/n;->sb()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LogoutModel"

    const-string/jumbo v1, "turnOffFindDevice start"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/account/utils/z;->mU:Lcom/xiaomi/account/utils/f;

    iget-object v1, p0, Lcom/xiaomi/account/utils/z;->mW:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xiaomi/account/utils/f;->nF(Lcom/xiaomi/account/utils/f;Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_0
    const-string/jumbo v0, "LogoutModel"

    const-string/jumbo v1, "not owner user, no find device feature"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v0, "LogoutModel"

    const-string/jumbo v1, "start delete binded Device"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/account/utils/z;->mU:Lcom/xiaomi/account/utils/f;

    iget-object v1, p0, Lcom/xiaomi/account/utils/z;->mW:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xiaomi/account/utils/f;->nG(Lcom/xiaomi/account/utils/f;Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "LogoutModel"

    const-string/jumbo v2, "failed to delete binded device"

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/account/utils/z;->mX:Landroid/content/res/Resources;

    new-instance v4, Lcom/xiaomi/account/data/d;

    invoke-direct {v4, v0}, Lcom/xiaomi/account/data/d;-><init>(I)V

    invoke-virtual {v4}, Lcom/xiaomi/account/data/d;->lQ()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_2
    const-string/jumbo v0, "LogoutModel"

    const-string/jumbo v1, "delete device succeed and start remove account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/account/utils/z;->mW:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/account/utils/z;->mY:Landroid/accounts/Account;

    const-string/jumbo v1, "extra_removing_account"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/utils/z;->mU:Lcom/xiaomi/account/utils/f;

    iget-object v1, p0, Lcom/xiaomi/account/utils/z;->mW:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/account/utils/z;->mY:Landroid/accounts/Account;

    iget-boolean v4, p0, Lcom/xiaomi/account/utils/z;->mZ:Z

    iget-boolean v5, p0, Lcom/xiaomi/account/utils/z;->na:Z

    invoke-static {v0, v1, v3, v4, v5}, Lcom/xiaomi/account/utils/f;->nI(Lcom/xiaomi/account/utils/f;Landroid/content/Context;Landroid/accounts/Account;ZZ)V

    iget-object v0, p0, Lcom/xiaomi/account/utils/z;->mY:Landroid/accounts/Account;

    invoke-virtual {v2, v0, v7, v7}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :try_start_0
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v6}, Lcom/xiaomi/account/data/j;->mC(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "LogoutModel"

    const-string/jumbo v1, "Xiaomi account removed successfully!"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/account/utils/z;->mU:Lcom/xiaomi/account/utils/f;

    iget-object v1, p0, Lcom/xiaomi/account/utils/z;->mW:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/account/utils/z;->mY:Landroid/accounts/Account;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/account/utils/f;->nH(Lcom/xiaomi/account/utils/f;Landroid/content/Context;Landroid/accounts/Account;)V

    iget-object v0, p0, Lcom/xiaomi/account/utils/z;->mU:Lcom/xiaomi/account/utils/f;

    iget-object v1, p0, Lcom/xiaomi/account/utils/z;->mW:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xiaomi/account/utils/f;->nK(Lcom/xiaomi/account/utils/f;Landroid/content/Context;)V

    new-instance v0, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "LogoutModel"

    const-string/jumbo v4, "error when remove account"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/account/utils/z;->mY:Landroid/accounts/Account;

    const-string/jumbo v1, "extra_removing_account"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/account/utils/z;->run()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
