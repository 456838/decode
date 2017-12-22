.class abstract Lcom/xiaomi/account/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected nU:Landroid/accounts/Account;

.field protected final nV:Lcom/xiaomi/account/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/account/m",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field protected final nW:Landroid/os/Bundle;

.field protected final nX:Lcom/xiaomi/account/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/account/c",
            "<",
            "Lcom/xiaomi/account/IXiaomiAuthResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic nY:Lcom/xiaomi/account/XiaomiAuthService;


# direct methods
.method protected constructor <init>(Lcom/xiaomi/account/XiaomiAuthService;Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/account/IXiaomiAuthResponse;Lcom/xiaomi/account/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Lcom/xiaomi/account/IXiaomiAuthResponse;",
            "Lcom/xiaomi/account/m",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/account/i;->nY:Lcom/xiaomi/account/XiaomiAuthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/account/i;->nU:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/xiaomi/account/i;->nW:Landroid/os/Bundle;

    new-instance v0, Lcom/xiaomi/account/c;

    invoke-direct {v0, p4}, Lcom/xiaomi/account/c;-><init>(Landroid/os/IInterface;)V

    iput-object v0, p0, Lcom/xiaomi/account/i;->nX:Lcom/xiaomi/account/c;

    iput-object p5, p0, Lcom/xiaomi/account/i;->nV:Lcom/xiaomi/account/m;

    return-void
.end method


# virtual methods
.method protected rO(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/account/i;->rP(ILjava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method protected rP(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "extra_error_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "extra_error_description"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string/jumbo v1, "extra_intent"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaomi/account/i;->rS(Landroid/os/Bundle;)V

    return-void
.end method

.method protected rQ(Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, -0x3eb

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/account/i;->rO(ILjava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "Exception met"

    goto :goto_0
.end method

.method protected rR(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string/jumbo v0, "extra_error_code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "extra_error_description"

    const-string/jumbo v1, "success"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/i;->rS(Landroid/os/Bundle;)V

    return-void
.end method

.method protected rS(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/i;->nX:Lcom/xiaomi/account/c;

    invoke-virtual {v0}, Lcom/xiaomi/account/c;->qo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/IXiaomiAuthResponse;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "extra_error_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Lcom/xiaomi/account/XiaomiOAuthResponse;->ql(Lcom/xiaomi/account/IXiaomiAuthResponse;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/account/i;->nX:Lcom/xiaomi/account/c;

    invoke-virtual {v0}, Lcom/xiaomi/account/c;->qn()V

    iget-object v0, p0, Lcom/xiaomi/account/i;->nV:Lcom/xiaomi/account/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/i;->nV:Lcom/xiaomi/account/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/m;->sa(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {v0, p1}, Lcom/xiaomi/account/XiaomiOAuthResponse;->qm(Lcom/xiaomi/account/IXiaomiAuthResponse;Landroid/os/Bundle;)V

    goto :goto_0
.end method
