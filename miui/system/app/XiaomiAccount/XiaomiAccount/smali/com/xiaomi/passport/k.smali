.class final Lcom/xiaomi/passport/k;
.super Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub;
.source ""


# instance fields
.field final synthetic LS:Lcom/xiaomi/passport/MiPassportUIControllerService;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/MiPassportUIControllerService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/k;->LS:Lcom/xiaomi/passport/MiPassportUIControllerService;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub;-><init>()V

    return-void
.end method

.method private Qc()Z
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/passport/k;->LS:Lcom/xiaomi/passport/MiPassportUIControllerService;

    invoke-virtual {v1}, Lcom/xiaomi/passport/MiPassportUIControllerService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/passport/k;->LS:Lcom/xiaomi/passport/MiPassportUIControllerService;

    invoke-virtual {v1}, Lcom/xiaomi/passport/MiPassportUIControllerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.xiaomi.finddevice"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/passport/k;->LS:Lcom/xiaomi/passport/MiPassportUIControllerService;

    invoke-virtual {v1}, Lcom/xiaomi/passport/MiPassportUIControllerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.finddevice"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public Np(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/passport/k;->Qc()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/k;->LS:Lcom/xiaomi/passport/MiPassportUIControllerService;

    invoke-static {v0, p1}, Lcom/xiaomi/passport/utils/x;->FN(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    return-void
.end method

.method public Nq(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
    .locals 4

    const/16 v0, 0xc

    new-instance v1, Lcom/xiaomi/accountsdk/account/data/z;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tj:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/z;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/passport/utils/x;->FK(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/z;->YG(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/data/z;->YL(I)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/z;->build()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/xiaomi/passport/k;->LS:Lcom/xiaomi/passport/MiPassportUIControllerService;

    invoke-static {v2, v0}, Lcom/xiaomi/passport/MiPassportUIControllerService;->Pw(Lcom/xiaomi/passport/MiPassportUIControllerService;Ljava/lang/Exception;)I

    move-result v0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/data/z;->YL(I)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/z;->build()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/xiaomi/passport/k;->LS:Lcom/xiaomi/passport/MiPassportUIControllerService;

    invoke-static {v2, v0}, Lcom/xiaomi/passport/MiPassportUIControllerService;->Px(Lcom/xiaomi/passport/MiPassportUIControllerService;Ljava/lang/RuntimeException;)V

    const-string/jumbo v2, "MiPassportUIControllerS"

    const-string/jumbo v3, "runtime exception"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/data/z;->YL(I)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/z;->build()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    const-string/jumbo v2, "MiPassportUIControllerS"

    const-string/jumbo v3, "wrong password"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->aac()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/z;->YJ(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->aaa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/z;->YH(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->aab()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/data/z;->YI(Z)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/z;->YL(I)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/z;->build()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0

    :catch_3
    move-exception v0

    const-string/jumbo v2, "MiPassportUIControllerS"

    const-string/jumbo v3, "need notification"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->aae()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/data/z;->YK(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/z;->YL(I)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/z;->build()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0

    :catch_4
    move-exception v0

    const-string/jumbo v2, "MiPassportUIControllerS"

    const-string/jumbo v3, "need steps2 login"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->aaf()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/z;->YJ(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->aag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/data/z;->YM(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/z;->YL(I)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/z;->build()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    const-string/jumbo v2, "MiPassportUIControllerS"

    const-string/jumbo v3, "need Captcha"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->aad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/data/z;->YH(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/z;->YL(I)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/z;->build()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0
.end method

.method public Nr(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
    .locals 8

    const/16 v6, 0xc

    new-instance v7, Lcom/xiaomi/accountsdk/account/data/z;

    iget-object v0, p1, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->userId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->Tt:Ljava/lang/String;

    invoke-direct {v7, v0, v1}, Lcom/xiaomi/accountsdk/account/data/z;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p1, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->userId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->Tv:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->Ts:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-boolean v3, p1, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->Tw:Z

    iget-object v4, p1, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->Tu:Ljava/lang/String;

    iget-object v5, p1, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->Tt:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/passport/utils/x;->FM(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v7, v0}, Lcom/xiaomi/accountsdk/account/data/z;->YG(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/z;->YL(I)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/z;->build()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v6

    :goto_0
    invoke-virtual {v7, v0}, Lcom/xiaomi/accountsdk/account/data/z;->YL(I)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/z;->build()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/passport/k;->LS:Lcom/xiaomi/passport/MiPassportUIControllerService;

    invoke-static {v1, v0}, Lcom/xiaomi/passport/MiPassportUIControllerService;->Pw(Lcom/xiaomi/passport/MiPassportUIControllerService;Ljava/lang/Exception;)I

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/passport/k;->LS:Lcom/xiaomi/passport/MiPassportUIControllerService;

    invoke-static {v1, v0}, Lcom/xiaomi/passport/MiPassportUIControllerService;->Px(Lcom/xiaomi/passport/MiPassportUIControllerService;Ljava/lang/RuntimeException;)V

    const-string/jumbo v1, "MiPassportUIControllerS"

    const-string/jumbo v2, "runtime exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Lcom/xiaomi/accountsdk/account/data/z;->YL(I)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/z;->build()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "MiPassportUIControllerS"

    const-string/jumbo v2, "wrong step2 code"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xb

    goto :goto_0
.end method

.method public Ns(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v0, v1, v2}, Lcom/xiaomi/accountsdk/request/m;->aek(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/f;->adU()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/xiaomi/accountsdk/account/data/K;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/account/data/K;-><init>()V

    const-string/jumbo v0, "userId"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/account/data/K;->ZC(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/K;

    move-result-object v2

    const-string/jumbo v0, "serviceToken"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/account/data/K;->ZB(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/K;

    move-result-object v2

    const-string/jumbo v0, "passportsecurity_ph"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/account/data/K;->Zz(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/K;

    move-result-object v2

    const-string/jumbo v0, "passportsecurity_slh"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/account/data/K;->ZA(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/K;->build()Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiPassportUIControllerS"

    const-string/jumbo v2, "auth error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v3

    :catch_1
    move-exception v0

    const-string/jumbo v1, "MiPassportUIControllerS"

    const-string/jumbo v2, "access denied"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "MiPassportUIControllerS"

    const-string/jumbo v2, "network error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/passport/k;->LS:Lcom/xiaomi/passport/MiPassportUIControllerService;

    invoke-static {v1, v0}, Lcom/xiaomi/passport/MiPassportUIControllerService;->Px(Lcom/xiaomi/passport/MiPassportUIControllerService;Ljava/lang/RuntimeException;)V

    const-string/jumbo v1, "MiPassportUIControllerS"

    const-string/jumbo v2, "runtime exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method public Nt(Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
    .locals 5

    const/16 v0, 0xc

    new-instance v1, Lcom/xiaomi/accountsdk/account/data/z;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;->Ty:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/z;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;->Tx:Ljava/lang/String;

    iget-object v4, p1, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;->Ty:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/xiaomi/passport/utils/x;->FL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/z;->YG(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/data/z;->YL(I)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/z;->build()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/xiaomi/passport/k;->LS:Lcom/xiaomi/passport/MiPassportUIControllerService;

    invoke-static {v2, v0}, Lcom/xiaomi/passport/MiPassportUIControllerService;->Pw(Lcom/xiaomi/passport/MiPassportUIControllerService;Ljava/lang/Exception;)I

    move-result v0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/data/z;->YL(I)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/z;->build()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/xiaomi/passport/k;->LS:Lcom/xiaomi/passport/MiPassportUIControllerService;

    invoke-static {v2, v0}, Lcom/xiaomi/passport/MiPassportUIControllerService;->Px(Lcom/xiaomi/passport/MiPassportUIControllerService;Ljava/lang/RuntimeException;)V

    const-string/jumbo v2, "MiPassportUIControllerS"

    const-string/jumbo v3, "runtime exception"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/data/z;->YL(I)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/z;->build()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->aac()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/z;->YJ(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->aaa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/data/z;->YH(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/z;->YL(I)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/z;->build()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0

    :catch_3
    move-exception v0

    const-string/jumbo v2, "MiPassportUIControllerS"

    const-string/jumbo v3, "need notification"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->aae()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/data/z;->YK(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/z;->YL(I)Lcom/xiaomi/accountsdk/account/data/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/z;->build()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0
.end method
