.class Lcom/xiaomi/accounts/j;
.super Lcom/xiaomi/accounts/IAccountManagerResponse$Stub;
.source ""


# instance fields
.field final synthetic MU:Lcom/xiaomi/accounts/i;


# direct methods
.method private constructor <init>(Lcom/xiaomi/accounts/i;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accounts/j;->MU:Lcom/xiaomi/accounts/i;

    invoke-direct {p0}, Lcom/xiaomi/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accounts/i;Lcom/xiaomi/accounts/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accounts/j;-><init>(Lcom/xiaomi/accounts/i;)V

    return-void
.end method


# virtual methods
.method public SA()V
    .locals 0

    return-void
.end method

.method public SB(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accounts/j;->MU:Lcom/xiaomi/accounts/i;

    iget-object v1, v1, Lcom/xiaomi/accounts/i;->MP:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accounts/j;->MU:Lcom/xiaomi/accounts/i;

    iget-object v1, v1, Lcom/xiaomi/accounts/i;->MP:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "retry"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accounts/j;->MU:Lcom/xiaomi/accounts/i;

    invoke-virtual {v0}, Lcom/xiaomi/accounts/i;->Su()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accounts/j;->MU:Lcom/xiaomi/accounts/i;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accounts/i;->Sw(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public Sz(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accounts/j;->MU:Lcom/xiaomi/accounts/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accounts/i;->cancel(Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accounts/j;->MU:Lcom/xiaomi/accounts/i;

    iget-object v1, p0, Lcom/xiaomi/accounts/j;->MU:Lcom/xiaomi/accounts/i;

    iget-object v1, v1, Lcom/xiaomi/accounts/i;->MT:Lcom/xiaomi/accounts/h;

    invoke-static {v1, p1, p2}, Lcom/xiaomi/accounts/h;->Sq(Lcom/xiaomi/accounts/h;ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accounts/i;->Sy(Lcom/xiaomi/accounts/i;Ljava/lang/Throwable;)V

    return-void
.end method
