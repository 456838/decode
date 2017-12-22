.class final Lcom/xiaomi/account/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/accounts/MiuiOnAccountsUpdateListener;


# instance fields
.field final synthetic oq:Lcom/xiaomi/account/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/q;->oq:Lcom/xiaomi/account/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0

    return-void
.end method

.method public onPostAccountUpdated(Landroid/accounts/Account;ILandroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/account/d;->qp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/account/push/a;->pI(Landroid/content/Context;)Lcom/xiaomi/account/push/a;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/account/push/a;->pJ()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/account/push/a;->pK()V

    goto :goto_0
.end method

.method public onPreAccountUpdated(Landroid/accounts/Account;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
