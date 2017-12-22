.class final Lcom/xiaomi/account/s;
.super Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;
.source ""


# instance fields
.field final synthetic os:Lcom/xiaomi/account/XiaomiAccountService;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/XiaomiAccountService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sg(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "XiaomiAccountService"

    const-string/jumbo v1, "invalid parameter when getting access token"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/data/u;->parse(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/u;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/u;->SW:Ljava/lang/String;

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v0, "XiaomiAccountService"

    const-string/jumbo v1, "get no service token when getting access token"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XiaomiAccountService"

    const-string/jumbo v2, "get service token failed when getting access token: "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v7

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    :try_start_1
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/u;->SW:Ljava/lang/String;

    invoke-static {v1, p2, p3, v0}, Lcom/xiaomi/accountsdk/account/b;->abn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/u;->SW:Ljava/lang/String;

    invoke-static {v1, p2, p3, v0}, Lcom/xiaomi/accountsdk/account/b;->aaL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "XiaomiAccountService"

    const-string/jumbo v2, "authenticate failure when getting access token: "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v7

    :catch_2
    move-exception v0

    const-string/jumbo v1, "XiaomiAccountService"

    const-string/jumbo v2, "access denied when getting access token: "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v1, "XiaomiAccountService"

    const-string/jumbo v2, "io exception when getting access token: "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public sh(Landroid/accounts/Account;)Landroid/os/ParcelFileDescriptor;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "acc_avatar_file_name"

    invoke-virtual {v0, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/account/XiaomiAccountService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/high16 v1, 0x10000000

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "XiaomiAccountService"

    const-string/jumbo v1, "Cannot find file"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public si(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/XiaomiAccountService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/high16 v1, 0x10000000

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "XiaomiAccountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public sj(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "acc_user_email"

    invoke-virtual {v0, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sk(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "encrypted_user_id"

    invoke-virtual {v0, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sl(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "acc_nick_name"

    invoke-virtual {v0, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sm(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "acc_user_phone"

    invoke-virtual {v0, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/XiaomiAccountService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-virtual {v1}, Lcom/xiaomi/account/XiaomiAccountService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "XiaomiAccountService"

    const-string/jumbo v1, "getAccessToken: no Xiaomi account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public so(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "acc_user_name"

    invoke-virtual {v0, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sp(ZLandroid/accounts/Account;)Lcom/xiaomi/accountsdk/account/XiaomiAccount;
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "acc_user_name"

    invoke-virtual {v0, p2, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "acc_nick_name"

    invoke-virtual {v0, p2, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "acc_user_email"

    invoke-virtual {v0, p2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "acc_user_phone"

    invoke-virtual {v0, p2, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "acc_avatar_file_name"

    invoke-virtual {v0, p2, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-static {v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qr(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/account/XiaomiAccount;

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/accountsdk/account/XiaomiAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public sq(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/XiaomiAccountService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-virtual {v1}, Lcom/xiaomi/account/XiaomiAccountService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v0, "XiaomiAccountService"

    const-string/jumbo v1, "getAccessToken: no Xiaomi account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/account/data/e;->lW(Ljava/lang/String;)Lcom/xiaomi/account/data/e;

    move-result-object v5

    iget-object v1, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-static {v1}, Lcom/xiaomi/account/XiaomiAccountService;->qM(Lcom/xiaomi/account/XiaomiAccountService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v5}, Lcom/xiaomi/account/data/e;->lT()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit v1

    if-eqz v3, :cond_3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-virtual {v1}, Lcom/xiaomi/account/XiaomiAccountService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "passportapi"

    invoke-static {v1, v3}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v0, "XiaomiAccountService"

    const-string/jumbo v1, "null passportInfo"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    move v3, v2

    :goto_0
    const/4 v1, 0x2

    if-ge v3, v1, :cond_4

    :try_start_1
    invoke-virtual {v5}, Lcom/xiaomi/account/data/e;->lU()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/xiaomi/account/utils/q;->oB(Lcom/xiaomi/passport/data/c;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-static {v2}, Lcom/xiaomi/account/XiaomiAccountService;->qM(Lcom/xiaomi/account/XiaomiAccountService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-virtual {v5}, Lcom/xiaomi/account/data/e;->lT()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v6}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/xiaomi/account/data/e;->lX()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v6}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/xiaomi/account/data/e;->lY()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    iget-object v0, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.ACTION_IMPORT_SINA_WEIBO_CANCELED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/XiaomiAccountService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return v1

    :catch_0
    move-exception v1

    const-string/jumbo v3, "XiaomiAccountService"

    const-string/jumbo v6, "error while invalidateSnsAccessToken"

    invoke-static {v3, v6, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v3, "XiaomiAccountService"

    const-string/jumbo v6, "error while invalidateSnsAccessToken"

    invoke-static {v3, v6, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string/jumbo v7, "XiaomiAccountService"

    const-string/jumbo v8, "error while invalidateSnsAccessToken"

    invoke-static {v7, v8, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/xiaomi/account/s;->os:Lcom/xiaomi/account/XiaomiAccountService;

    invoke-virtual {v1}, Lcom/xiaomi/account/XiaomiAccountService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :catch_3
    move-exception v1

    const-string/jumbo v3, "XiaomiAccountService"

    const-string/jumbo v6, "error while invalidateSnsAccessToken"

    invoke-static {v3, v6, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    goto :goto_1

    :catch_4
    move-exception v1

    const-string/jumbo v3, "XiaomiAccountService"

    const-string/jumbo v6, "error while invalidateSnsAccessToken"

    invoke-static {v3, v6, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    return v2

    :cond_4
    move v1, v2

    goto :goto_1
.end method
