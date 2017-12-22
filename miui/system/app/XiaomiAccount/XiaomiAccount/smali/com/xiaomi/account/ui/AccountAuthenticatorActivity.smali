.class public Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;
.super Lmiui/app/Activity;
.source ""


# instance fields
.field private bX:Landroid/accounts/AccountAuthenticatorResponse;

.field private bY:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->bX:Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v0, p0, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->bY:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final em(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->bY:Landroid/os/Bundle;

    return-void
.end method

.method public finish()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->bX:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->bY:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->bX:Landroid/accounts/AccountAuthenticatorResponse;

    iget-object v1, p0, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->bY:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    :goto_0
    iput-object v3, p0, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->bX:Landroid/accounts/AccountAuthenticatorResponse;

    :cond_0
    invoke-super {p0}, Lmiui/app/Activity;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->bX:Landroid/accounts/AccountAuthenticatorResponse;

    const-string/jumbo v1, "canceled"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v0, p0, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->bX:Landroid/accounts/AccountAuthenticatorResponse;

    iget-object v0, p0, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->bX:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/AccountAuthenticatorActivity;->bX:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v0}, Landroid/accounts/AccountAuthenticatorResponse;->onRequestContinued()V

    :cond_0
    return-void
.end method
