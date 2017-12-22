.class final Lcom/xiaomi/account/authenticator/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic il:Lcom/xiaomi/account/authenticator/a;

.field final synthetic im:Landroid/accounts/AccountAuthenticatorResponse;

.field final synthetic in:Landroid/accounts/Account;

.field final synthetic io:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/authenticator/a;Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/authenticator/b;->il:Lcom/xiaomi/account/authenticator/a;

    iput-object p2, p0, Lcom/xiaomi/account/authenticator/b;->im:Landroid/accounts/AccountAuthenticatorResponse;

    iput-object p3, p0, Lcom/xiaomi/account/authenticator/b;->in:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/xiaomi/account/authenticator/b;->io:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/account/authenticator/b;->il:Lcom/xiaomi/account/authenticator/a;

    iget-object v1, p0, Lcom/xiaomi/account/authenticator/b;->im:Landroid/accounts/AccountAuthenticatorResponse;

    iget-object v2, p0, Lcom/xiaomi/account/authenticator/b;->in:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/xiaomi/account/authenticator/b;->io:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/account/authenticator/a;->jK(Lcom/xiaomi/account/authenticator/a;Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/authenticator/b;->im:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v1, v0}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    return-void
.end method
