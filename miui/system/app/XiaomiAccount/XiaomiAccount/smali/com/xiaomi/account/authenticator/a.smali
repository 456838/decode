.class public Lcom/xiaomi/account/authenticator/a;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source ""


# static fields
.field private static final ii:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private ij:Landroid/content/Context;

.field private final ik:Lcom/xiaomi/passport/accountmanager/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/authenticator/a;->ii:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    new-instance v0, Lcom/xiaomi/passport/accountmanager/a;

    iget-object v1, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/accountmanager/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/account/authenticator/a;->ik:Lcom/xiaomi/passport/accountmanager/a;

    return-void
.end method

.method private jA()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/passport/b;->OR()Lcom/xiaomi/passport/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/passport/a/c;->rp()V

    :cond_0
    return-void
.end method

.method private jB(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/account/authenticator/a;->ii:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/account/authenticator/b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/account/authenticator/b;-><init>(Lcom/xiaomi/account/authenticator/a;Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private jC(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p3, :cond_0

    move v4, v3

    :goto_0
    if-eqz p3, :cond_1

    const-string/jumbo v2, "password"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo v2, "password"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "captcha_code"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "captcha_ick"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/xiaomi/accountsdk/account/data/v;

    invoke-direct {v9}, Lcom/xiaomi/accountsdk/account/data/v;-><init>()V

    invoke-virtual {v9, v6}, Lcom/xiaomi/accountsdk/account/data/v;->Yd(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/xiaomi/accountsdk/account/data/v;->Ye(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/xiaomi/accountsdk/account/data/v;->Yl(Z)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/xiaomi/accountsdk/account/data/v;->Yg(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/xiaomi/accountsdk/account/data/v;->Yh(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/data/v;->build()Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lcom/xiaomi/passport/utils/x;->FK(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    const-string/jumbo v4, "authAccount"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "accountType"

    const-string/jumbo v6, "com.xiaomi"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "booleanResult"

    if-eqz v2, :cond_6

    :goto_2
    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "captcha_url"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v1

    :cond_0
    const-string/jumbo v2, "return_sts_url"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move v4, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v6

    if-eqz p3, :cond_5

    const-string/jumbo v2, "verify_only"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_3

    const-string/jumbo v2, "verify_only"

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v3

    :cond_2
    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    const-string/jumbo v0, "return_sts_url"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p3, :cond_4

    const-string/jumbo v0, "service_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/account/authenticator/a;->jD(Landroid/os/Bundle;Landroid/accounts/AccountAuthenticatorResponse;ZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_4

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->printStackTrace()V

    move-object v2, v5

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;->printStackTrace()V

    move-object v2, v5

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->aad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->printStackTrace()V

    move-object v10, v2

    move-object v2, v5

    move-object v5, v10

    goto :goto_1

    :catch_3
    move-exception v2

    new-instance v2, Lcom/xiaomi/accountsdk/account/data/c;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/account/data/c;-><init>()V

    invoke-virtual {v2, v6}, Lcom/xiaomi/accountsdk/account/data/c;->VN(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/data/c;->build()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v2

    goto/16 :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->printStackTrace()V

    move-object v2, v5

    goto/16 :goto_1

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/AccessDeniedException;->printStackTrace()V

    move-object v2, v5

    goto/16 :goto_1

    :catch_6
    move-exception v4

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->aaa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->printStackTrace()V

    move-object v10, v2

    move-object v2, v5

    move-object v5, v10

    goto/16 :goto_1

    :catch_7
    move-exception v2

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->printStackTrace()V

    move-object v2, v5

    goto/16 :goto_1

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;->printStackTrace()V

    move-object v2, v5

    goto/16 :goto_1

    :catch_9
    move-exception v2

    invoke-direct {p0}, Lcom/xiaomi/account/authenticator/a;->jA()V

    const-string/jumbo v2, "errorCode"

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "errorMessage"

    const-string/jumbo v4, "io exception"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    goto/16 :goto_1

    :cond_6
    move v0, v3

    goto/16 :goto_2
.end method

.method private jD(Landroid/os/Bundle;Landroid/accounts/AccountAuthenticatorResponse;ZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v0

    const-string/jumbo v1, "has_password"

    invoke-virtual {v0, p4, v1}, Lcom/xiaomi/passport/accountmanager/f;->Ca(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/authenticator/a;->ik:Lcom/xiaomi/passport/accountmanager/a;

    invoke-virtual {v2, v0, p4}, Lcom/xiaomi/passport/accountmanager/a;->BM(Lcom/xiaomi/passport/accountmanager/f;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    invoke-static {v1, p4, v3}, Lcom/xiaomi/passport/utils/r;->EG(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    invoke-static {v0, p3, p2}, Lcom/xiaomi/passport/utils/o;->En(Landroid/content/Context;ZLandroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    if-eqz p6, :cond_1

    invoke-virtual {v0, p6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const-string/jumbo v1, "service_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "intent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    const-class v2, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    const-class v2, Lcom/xiaomi/account/ui/SetPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private jE(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    sget-object v6, Lcom/xiaomi/account/authenticator/a;->ii:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/xiaomi/account/authenticator/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/account/authenticator/c;-><init>(Lcom/xiaomi/account/authenticator/a;Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private jF(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "androidPackageName"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "SystemAccountAuthentica"

    const-string/jumbo v4, "getting AuthToken, type: %s, package name: %s"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "weblogin:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "websso"

    :goto_0
    aput-object v0, v5, v6

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "package_name"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "service_id"

    const-string/jumbo v0, "weblogin:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "websso"

    :goto_1
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-string/jumbo v1, "system_account_authenticator"

    const-string/jumbo v4, "get_auth_token"

    invoke-virtual {v0, v1, v4, v3}, Lcom/xiaomi/accountsdk/account/a/a;->sy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/passport/utils/x;->FC(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "SystemAccountAuthentica"

    const-string/jumbo v3, "getting auth token, but no service url contained, use micloud"

    invoke-static {v0, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "passportapi"

    move-object v0, v2

    :cond_1
    :goto_2
    invoke-direct {p0, p2}, Lcom/xiaomi/account/authenticator/a;->jH(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, p3, p4}, Lcom/xiaomi/account/authenticator/a;->jI(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/account/authenticator/a;->jD(Landroid/os/Bundle;Landroid/accounts/AccountAuthenticatorResponse;ZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v0, "SystemAccountAuthentica"

    const-string/jumbo v2, "passToken is null"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    move-object v0, p3

    goto/16 :goto_0

    :cond_3
    move-object v0, p3

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "booleanResult"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1

    :cond_5
    const-string/jumbo v0, "weblogin:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "weblogin:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "passportapi"

    invoke-static {v0}, Lcom/xiaomi/passport/utils/x;->FQ(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v0, "errorCode"

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "errorMessage"

    const-string/jumbo v2, "untrusted web sso url"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_6
    if-eqz v0, :cond_7

    :try_start_0
    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v0}, Lcom/xiaomi/passport/utils/x;->FR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v3

    const-string/jumbo v4, "authAccount"

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vq()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "accountType"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "authtoken"

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "SystemAccountAuthentica"

    const-string/jumbo v3, "web sso getAuthToken succeed"

    invoke-static {v0, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_7
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/xiaomi/passport/utils/x;->FL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->VA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/accountsdk/account/data/u;->Ya(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/u;->Yb()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v4

    invoke-virtual {v4, p2, v5, v0}, Lcom/xiaomi/passport/accountmanager/f;->Ce(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, p2, v3}, Lcom/xiaomi/passport/utils/o;->Eo(Lcom/xiaomi/passport/accountmanager/f;Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    iget-object v6, p0, Lcom/xiaomi/account/authenticator/a;->ik:Lcom/xiaomi/passport/accountmanager/a;

    invoke-virtual {v6, v4, p2, v3}, Lcom/xiaomi/passport/accountmanager/a;->BT(Lcom/xiaomi/passport/accountmanager/f;Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    const-string/jumbo v6, "authAccount"

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vq()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "accountType"

    const-string/jumbo v7, "com.xiaomi"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "authtoken"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vs()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "encrypted_user_id"

    invoke-virtual {v4, p2, v6, v0}, Lcom/xiaomi/passport/accountmanager/f;->Cg(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string/jumbo v4, "encrypted_user_id"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "has_password"

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vt()Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_4
    return-object v1

    :cond_8
    const-string/jumbo v0, "SystemAccountAuthentica"

    const-string/jumbo v6, "cuserid result is null"

    invoke-static {v0, v6}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "encrypted_user_id"

    invoke-virtual {v4, p2, v0}, Lcom/xiaomi/passport/accountmanager/f;->Ca(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SystemAccountAuthentica"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "need notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->aae()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5, v8, p1}, Lcom/xiaomi/passport/utils/o;->Ek(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_4

    :catch_1
    move-exception v0

    const-string/jumbo v2, "SystemAccountAuthentica"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no such a user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_2
    move-exception v0

    const-string/jumbo v2, "SystemAccountAuthentica"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "auth failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "errorCode"

    invoke-virtual {v1, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "errorMessage"

    const-string/jumbo v2, "auth failure"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_3
    move-exception v0

    const-string/jumbo v2, "SystemAccountAuthentica"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "access denied: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "errorCode"

    invoke-virtual {v1, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "errorMessage"

    const-string/jumbo v2, "access denied"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_4
    move-exception v0

    const-string/jumbo v3, "SystemAccountAuthentica"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid credential, passToken is invalid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p2}, Lcom/xiaomi/account/authenticator/a;->jH(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/xiaomi/passport/accountmanager/f;->BV(Landroid/accounts/Account;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->aaa()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "captcha_url"

    invoke-virtual {p4, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4}, Lcom/xiaomi/account/authenticator/a;->jI(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/account/authenticator/a;->jD(Landroid/os/Bundle;Landroid/accounts/AccountAuthenticatorResponse;ZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v0, "retry"

    invoke-virtual {v1, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :catch_5
    move-exception v0

    const-string/jumbo v2, "SystemAccountAuthentica"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid response received when getting service token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "errorCode"

    invoke-virtual {v1, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "errorMessage"

    const-string/jumbo v2, "invalid response from server"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_6
    move-exception v0

    const-string/jumbo v2, "SystemAccountAuthentica"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get device id failed when getting service token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "errorCode"

    invoke-virtual {v1, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "errorMessage"

    const-string/jumbo v2, "illegal device exception"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_7
    move-exception v0

    invoke-direct {p0}, Lcom/xiaomi/account/authenticator/a;->jA()V

    const-string/jumbo v2, "SystemAccountAuthentica"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "io exception when getting service token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "errorCode"

    invoke-virtual {v1, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "errorMessage"

    const-string/jumbo v2, "io exception"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    move-object v5, p3

    move-object v0, v2

    goto/16 :goto_2
.end method

.method private jH(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/authenticator/a;->ik:Lcom/xiaomi/passport/accountmanager/a;

    iget-object v1, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/passport/accountmanager/a;->BM(Lcom/xiaomi/passport/accountmanager/f;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private jI(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/xiaomi/passport/utils/x;->FS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "selfRetry_system"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "selfRetry_system"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return v2

    :cond_0
    return v1
.end method

.method static synthetic jK(Lcom/xiaomi/account/authenticator/a;Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/account/authenticator/a;->jC(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "androidPackageName"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "package_name"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-string/jumbo v2, "system_account_authenticator"

    const-string/jumbo v3, "add_account"

    invoke-virtual {v0, v2, v3, v1}, Lcom/xiaomi/accountsdk/account/a/a;->sy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/passport/accountmanager/f;->CG(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/f;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/accountmanager/f;->BW(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    array-length v2, v0

    if-lez v2, :cond_1

    const-string/jumbo v2, "SystemAccountAuthentica"

    const-string/jumbo v3, "a xiaomi account already exists"

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v0, v0, v4

    const-string/jumbo v2, "authAccount"

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "accountType"

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SystemAccountAuthentica"

    const-string/jumbo v2, "no service id contained, use passportapi"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p3, "passportapi"

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    invoke-static {v0, p3, p5, p1}, Lcom/xiaomi/passport/utils/o;->Em(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/account/authenticator/a;->jB(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/xiaomi/passport/b;->OR()Lcom/xiaomi/passport/a/c;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "booleanResult"

    invoke-static {}, Lcom/xiaomi/passport/b;->OR()Lcom/xiaomi/passport/a/c;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/xiaomi/passport/a/c;->ry(Landroid/accounts/Account;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/account/authenticator/a;->jE(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method jG(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/account/authenticator/a;->jF(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/authenticator/a;->jJ(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected jJ(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/account/authenticator/a;->jz()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "booleanResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method jz()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/authenticator/a;->ij:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/passport/utils/x;->FT(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "updateCredentials not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
