.class public Lcom/xiaomi/account/guestaccount/GuestAccountAuthenticatorService;
.super Landroid/app/Service;
.source ""


# instance fields
.field private ic:Lcom/xiaomi/account/guestaccount/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static jy(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "xiaomi.guest.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    const-string/jumbo v0, "GuestAccountAuthentica"

    const-string/jumbo v1, "already has guest account in AM"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Landroid/accounts/Account;

    const-string/jumbo v2, "xiaomi.guest.account"

    invoke-direct {v1, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "GuestAccountAuthentica"

    const-string/jumbo v1, "failed to add guest account in AM"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/guestaccount/GuestAccountAuthenticatorService;->ic:Lcom/xiaomi/account/guestaccount/e;

    invoke-virtual {v0}, Lcom/xiaomi/account/guestaccount/e;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/xiaomi/account/guestaccount/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/guestaccount/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/account/guestaccount/GuestAccountAuthenticatorService;->ic:Lcom/xiaomi/account/guestaccount/e;

    return-void
.end method
