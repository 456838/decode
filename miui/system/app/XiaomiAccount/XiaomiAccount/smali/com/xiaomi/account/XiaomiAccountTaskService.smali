.class public Lcom/xiaomi/account/XiaomiAccountTaskService;
.super Landroid/app/IntentService;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "XiaomiAccountTaskService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private qA()V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "XiaomiAccountTaskServic"

    const-string/jumbo v1, "no Xiaomi account, skip to query user password"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string/jumbo v3, "has_password"

    invoke-virtual {v2, v1, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qE(Z)V

    return-void

    :cond_1
    const-string/jumbo v0, "passportapi"

    invoke-static {p0, v1, v0}, Lcom/xiaomi/passport/utils/r;->EG(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private qB(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    const-string/jumbo v3, "deviceinfo"

    invoke-static {p0, v3}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v0, "XiaomiAccountTaskServic"

    const-string/jumbo v1, "passportInfo is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v4, v0

    move v3, v0

    :goto_0
    if-ge v4, v2, :cond_3

    :try_start_0
    invoke-static {v6, p1}, Lcom/xiaomi/account/utils/q;->oy(Lcom/xiaomi/accountsdk/account/data/a;Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    new-instance v1, Lcom/xiaomi/account/data/d;

    invoke-direct {v1, v0}, Lcom/xiaomi/account/data/d;-><init>(I)V

    invoke-virtual {v1}, Lcom/xiaomi/account/data/d;->lP()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "XiaomiAccountTaskServic"

    invoke-virtual {v1}, Lcom/xiaomi/account/data/d;->lQ()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/XiaomiAccountTaskService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x5

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XiaomiAccountTaskServic"

    const-string/jumbo v3, "handleUploadDeviceInfo error"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "XiaomiAccountTaskServic"

    const-string/jumbo v3, "handleUploadDeviceInfo error"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "XiaomiAccountTaskServic"

    const-string/jumbo v2, "handleUploadDeviceInfo error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    goto :goto_1

    :catch_3
    move-exception v3

    const-string/jumbo v5, "XiaomiAccountTaskServic"

    const-string/jumbo v7, "handleUploadDeviceInfo error"

    invoke-static {v5, v7, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v6, p0}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    const/4 v5, 0x1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v1, "XiaomiAccountTaskServic"

    const-string/jumbo v3, "handleUploadDeviceInfo error"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method private qC(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.action.ACCOUNT_PROTECTION_SWITCH_QUERY_SUCCEED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_account_protection_switch"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private qD()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.action.APP_CONFIG_DOWNLOAD_SUCCEED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private qE(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "query_user_pwd_result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "has_password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private qF()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.action.XIAOMI_SNS_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private qG()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.action.XIAOMI_USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private qH(Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/l;)V
    .locals 8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "XiaomiAccountTaskServic"

    const-string/jumbo v1, "no Xiaomi account, skip to save user info"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "account"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    const-string/jumbo v1, "acc_user_name"

    iget-object v3, p2, Lcom/xiaomi/accountsdk/account/data/l;->Rp:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "acc_nick_name"

    iget-object v3, p2, Lcom/xiaomi/accountsdk/account/data/l;->Rl:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "acc_user_email"

    iget-object v3, p2, Lcom/xiaomi/accountsdk/account/data/l;->Rf:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "acc_user_phone"

    iget-object v3, p2, Lcom/xiaomi/accountsdk/account/data/l;->Ro:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/l;->Rm:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v1, "acc_user_phone_list"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/l;->Rg:Lcom/xiaomi/accountsdk/account/data/Gender;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "acc_user_gender"

    iget-object v3, p2, Lcom/xiaomi/accountsdk/account/data/l;->Rg:Lcom/xiaomi/accountsdk/account/data/Gender;

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/data/Gender;->Vp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/l;->Rd:Ljava/util/Calendar;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/l;->Rd:Ljava/util/Calendar;

    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/xiaomi/account/utils/p;->om()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "acc_user_birthday"

    invoke-virtual {v0, p1, v3, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/l;->Re:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "acc_user_education"

    iget-object v3, p2, Lcom/xiaomi/accountsdk/account/data/l;->Re:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->level:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/l;->Rh:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    if-eqz v1, :cond_5

    const-string/jumbo v1, "acc_user_income"

    iget-object v3, p2, Lcom/xiaomi/accountsdk/account/data/l;->Rh:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->level:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v1, "is_set_safe_questions"

    iget-boolean v3, p2, Lcom/xiaomi/accountsdk/account/data/l;->Ri:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "acc_user_region"

    iget-object v3, p2, Lcom/xiaomi/accountsdk/account/data/l;->Rn:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "acc_user_location"

    iget-object v3, p2, Lcom/xiaomi/accountsdk/account/data/l;->Rk:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p2, Lcom/xiaomi/accountsdk/account/data/l;->Rc:Ljava/lang/String;

    const-string/jumbo v1, "acc_avatar_url"

    invoke-virtual {v0, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "xiaomi_user_avatar_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/xiaomi/account/XiaomiAccountTaskService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v4, :cond_6

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    :goto_0
    return-void

    :cond_7
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v4, v1, v3}, Lcom/xiaomi/accountsdk/request/b;->adG(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_8

    :try_start_1
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/h;->aec()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/xiaomi/passport/utils/r;->Ey(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    :cond_8
    :goto_2
    if-eqz v2, :cond_6

    const-string/jumbo v1, "acc_avatar_url"

    invoke-virtual {v0, p1, v1, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "acc_avatar_file_name"

    invoke-virtual {v0, p1, v1, v5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "XiaomiAccountTaskServic"

    const-string/jumbo v6, "auth failed when download avatar"

    invoke-static {v3, v6, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v3, "XiaomiAccountTaskServic"

    const-string/jumbo v6, "access denied when download avatar"

    invoke-static {v3, v6, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string/jumbo v3, "XiaomiAccountTaskServic"

    const-string/jumbo v6, "IO error when download avatar"

    invoke-static {v3, v6, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_1

    :catch_3
    move-exception v3

    :try_start_2
    const-string/jumbo v6, "XiaomiAccountTaskServic"

    const-string/jumbo v7, "failed to save avatar"

    invoke-static {v6, v7, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/h;->aeb()V

    throw v0
.end method

.method public static qI(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.xiaomi.account.action.QUERY_ACCOUNT_PROTECTION_SWITCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static qJ(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.xiaomi.account.action.QUERY_USER_PASSWORD_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static qK(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.xiaomi.account.action.UPLOAD_DEVICE_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "uploadDeviceInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic qL(Lcom/xiaomi/account/XiaomiAccountTaskService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qD()V

    return-void
.end method

.method public static qr(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.xiaomi.account.action.QUERY_USER_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static qs(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.xiaomi.account.action.DOWNLOAD_APP_CONFIGURE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private static qt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private static qu()[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "facebook"

    aput-object v1, v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "sina"

    aput-object v1, v0, v2

    const-string/jumbo v1, "qq"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method private qv()V
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/task/d;

    invoke-virtual {p0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/task/d;-><init>(Landroid/app/Application;)V

    new-instance v1, Lcom/xiaomi/account/r;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/r;-><init>(Lcom/xiaomi/account/XiaomiAccountTaskService;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/d;->Gt(Lcom/xiaomi/passport/task/e;)V

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/d;->run()V

    return-void
.end method

.method private qw()V
    .locals 5

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "XiaomiAccountTaskServic"

    const-string/jumbo v1, "no Xiaomi account, skip to query account protection switch"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaomi/account/utils/t;->ph()Lcom/xiaomi/account/utils/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/utils/t;->pj()Z

    move-result v2

    const-string/jumbo v0, "account"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    const-string/jumbo v3, "extra_account_protection_switch"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qC(Z)V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/account/exception/NullPassportInfoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XiaomiAccountTaskServic"

    const-string/jumbo v2, "handleQueryAccountProtectionSwitch error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "XiaomiAccountTaskServic"

    const-string/jumbo v2, "handleQueryAccountProtectionSwitch error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "XiaomiAccountTaskServic"

    const-string/jumbo v2, "handleQueryAccountProtectionSwitch error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v1, "XiaomiAccountTaskServic"

    const-string/jumbo v2, "handleQueryAccountProtectionSwitch error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v1, "XiaomiAccountTaskServic"

    const-string/jumbo v2, "handleQueryAccountProtectionSwitch error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_5
    move-exception v0

    const-string/jumbo v1, "XiaomiAccountTaskServic"

    const-string/jumbo v2, "handleQueryAccountProtectionSwitch error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_6
    move-exception v0

    const-string/jumbo v1, "XiaomiAccountTaskServic"

    const-string/jumbo v2, "handleQueryAccountProtectionSwitch error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private qx(Lcom/xiaomi/passport/data/c;)V
    .locals 5

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "XiaomiAccountTaskServic"

    const-string/jumbo v1, "no Xiaomi account, skip to query sns info"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qu()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-static {p0, v1, v4, p1}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qy(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lcom/xiaomi/passport/data/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static qy(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lcom/xiaomi/passport/data/c;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/xiaomi/account/data/e;->lW(Ljava/lang/String;)Lcom/xiaomi/account/data/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/data/e;->lU()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p3, v1}, Lcom/xiaomi/account/utils/p;->os(Landroid/content/Context;Lcom/xiaomi/passport/data/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/account/data/e;->lT()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/account/data/e;->lT()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/account/data/e;->lX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/account/data/e;->lY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/account/data/e;->lS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private qz()V
    .locals 4

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "XiaomiAccountTaskServic"

    const-string/jumbo v1, "no Xiaomi account, skip to query user info"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "passportapi"

    invoke-static {p0, v1}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->RT:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->RU:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->RV:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->RX:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v1, v2}, Lcom/xiaomi/account/utils/p;->or(Landroid/content/Context;Lcom/xiaomi/passport/data/c;Ljava/util/List;)Lcom/xiaomi/accountsdk/account/data/l;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qH(Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/l;)V

    invoke-direct {p0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qG()V

    :cond_1
    invoke-direct {p0, v1}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qx(Lcom/xiaomi/passport/data/c;)V

    invoke-direct {p0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qF()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "XiaomiAccountTaskServic"

    const-string/jumbo v1, "intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.account.action.QUERY_USER_INFO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qz()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "com.xiaomi.account.action.UPLOAD_DEVICE_INFO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "uploadDeviceInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qB(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "com.xiaomi.account.action.DOWNLOAD_APP_CONFIGURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qv()V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "com.xiaomi.account.action.QUERY_ACCOUNT_PROTECTION_SWITCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qw()V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "com.xiaomi.account.action.QUERY_USER_PASSWORD_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qA()V

    goto :goto_0
.end method
