.class final Lcom/xiaomi/account/ui/bX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic hr:Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bX;->hr:Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/ui/bX;->hr:Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;->finish()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/bX;->hr:Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;->gE(Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;)Lcom/xiaomi/account/XiaomiOAuthResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/bX;->hr:Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;->gE(Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;)Lcom/xiaomi/account/XiaomiOAuthResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/XiaomiOAuthResponse;->qi()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/account/ui/bX;->hr:Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;->gE(Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;)Lcom/xiaomi/account/XiaomiOAuthResponse;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/account/XiaomiOAuthResponse;->qk(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/xiaomi/account/ui/bX;->hr:Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;->gE(Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;)Lcom/xiaomi/account/XiaomiOAuthResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/XiaomiOAuthResponse;->qi()V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/bX;->hr:Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;->gE(Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;)Lcom/xiaomi/account/XiaomiOAuthResponse;

    move-result-object v1

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/account/XiaomiOAuthResponse;->qj(ILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/bX;->hr:Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;->gE(Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;)Lcom/xiaomi/account/XiaomiOAuthResponse;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/account/XiaomiOAuthResponse;->qj(ILjava/lang/String;)V

    goto :goto_0
.end method
