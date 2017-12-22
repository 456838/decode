.class final Lcom/xiaomi/account/ui/bl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gt:Lcom/xiaomi/account/ui/AccountSettingsActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/AccountSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bl;->gt:Lcom/xiaomi/account/ui/AccountSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/bl;->gt:Lcom/xiaomi/account/ui/AccountSettingsActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->dD(Lcom/xiaomi/account/ui/AccountSettingsActivity;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/bl;->gt:Lcom/xiaomi/account/ui/AccountSettingsActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->finish()V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/bl;->gt:Lcom/xiaomi/account/ui/AccountSettingsActivity;

    invoke-static {v0, v3}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->dE(Lcom/xiaomi/account/ui/AccountSettingsActivity;Landroid/accounts/AccountManagerFuture;)Landroid/accounts/AccountManagerFuture;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "AccountSettingsActivity"

    const-string/jumbo v2, "check token invalid"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/bl;->gt:Lcom/xiaomi/account/ui/AccountSettingsActivity;

    invoke-static {v0, v3}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->dE(Lcom/xiaomi/account/ui/AccountSettingsActivity;Landroid/accounts/AccountManagerFuture;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "AccountSettingsActivity"

    const-string/jumbo v2, "check token invalid"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/bl;->gt:Lcom/xiaomi/account/ui/AccountSettingsActivity;

    invoke-static {v0, v3}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->dE(Lcom/xiaomi/account/ui/AccountSettingsActivity;Landroid/accounts/AccountManagerFuture;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "AccountSettingsActivity"

    const-string/jumbo v2, "check token invalid"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/account/ui/bl;->gt:Lcom/xiaomi/account/ui/AccountSettingsActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/bl;->gt:Lcom/xiaomi/account/ui/AccountSettingsActivity;

    invoke-static {v0, v3}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->dE(Lcom/xiaomi/account/ui/AccountSettingsActivity;Landroid/accounts/AccountManagerFuture;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/bl;->gt:Lcom/xiaomi/account/ui/AccountSettingsActivity;

    invoke-static {v1, v3}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->dE(Lcom/xiaomi/account/ui/AccountSettingsActivity;Landroid/accounts/AccountManagerFuture;)Landroid/accounts/AccountManagerFuture;

    throw v0
.end method
