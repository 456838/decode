.class final Lcom/xiaomi/account/authenticator/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ip:Lcom/xiaomi/account/authenticator/a;

.field final synthetic iq:Landroid/accounts/AccountAuthenticatorResponse;

.field final synthetic ir:Landroid/accounts/Account;

.field final synthetic is:Ljava/lang/String;

.field final synthetic it:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/authenticator/a;Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/authenticator/c;->ip:Lcom/xiaomi/account/authenticator/a;

    iput-object p2, p0, Lcom/xiaomi/account/authenticator/c;->iq:Landroid/accounts/AccountAuthenticatorResponse;

    iput-object p3, p0, Lcom/xiaomi/account/authenticator/c;->ir:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/xiaomi/account/authenticator/c;->is:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/account/authenticator/c;->it:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/account/authenticator/c;->iq:Landroid/accounts/AccountAuthenticatorResponse;

    iget-object v1, p0, Lcom/xiaomi/account/authenticator/c;->ip:Lcom/xiaomi/account/authenticator/a;

    iget-object v2, p0, Lcom/xiaomi/account/authenticator/c;->iq:Landroid/accounts/AccountAuthenticatorResponse;

    iget-object v3, p0, Lcom/xiaomi/account/authenticator/c;->ir:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/xiaomi/account/authenticator/c;->is:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/account/authenticator/c;->it:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaomi/account/authenticator/a;->jG(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    return-void
.end method
