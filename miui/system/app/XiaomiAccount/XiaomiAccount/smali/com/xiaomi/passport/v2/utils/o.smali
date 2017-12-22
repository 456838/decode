.class final Lcom/xiaomi/passport/v2/utils/o;
.super Lcom/xiaomi/passport/uicontroller/h;
.source ""


# instance fields
.field final synthetic GG:Lcom/xiaomi/passport/v2/utils/f;

.field final synthetic GH:Lcom/xiaomi/passport/v2/utils/h;

.field final synthetic GI:Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/f;Lcom/xiaomi/passport/v2/utils/h;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/o;->GG:Lcom/xiaomi/passport/v2/utils/f;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/utils/o;->GH:Lcom/xiaomi/passport/v2/utils/h;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/utils/o;->GI:Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected yw(Lcom/xiaomi/passport/uicontroller/c;)V
    .locals 9

    const v3, 0x7f0c0096

    const/4 v2, -0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iget-object v4, p0, Lcom/xiaomi/passport/v2/utils/o;->GG:Lcom/xiaomi/passport/v2/utils/f;

    new-instance v5, Lcom/xiaomi/passport/v2/utils/p;

    iget-object v6, p0, Lcom/xiaomi/passport/v2/utils/o;->GH:Lcom/xiaomi/passport/v2/utils/h;

    invoke-direct {v5, p0, v6}, Lcom/xiaomi/passport/v2/utils/p;-><init>(Lcom/xiaomi/passport/v2/utils/o;Lcom/xiaomi/passport/v2/utils/h;)V

    new-instance v6, Lcom/xiaomi/passport/v2/utils/q;

    iget-object v7, p0, Lcom/xiaomi/passport/v2/utils/o;->GH:Lcom/xiaomi/passport/v2/utils/h;

    invoke-direct {v6, p0, v7}, Lcom/xiaomi/passport/v2/utils/q;-><init>(Lcom/xiaomi/passport/v2/utils/o;Lcom/xiaomi/passport/v2/utils/h;)V

    invoke-virtual {v4, v0, v5, v6}, Lcom/xiaomi/passport/v2/utils/f;->Lu(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Lcom/xiaomi/passport/v2/utils/g;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/o;->GG:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    invoke-static {}, Lcom/xiaomi/passport/utils/b;->Da()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/uicontroller/c;->MZ(Ljava/util/concurrent/ExecutionException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/xiaomi/passport/v2/utils/o;->GG:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v3}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    invoke-static {}, Lcom/xiaomi/passport/utils/b;->Da()V

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/xiaomi/passport/utils/w;->FA(Ljava/lang/String;)V

    :cond_1
    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/o;->GH:Lcom/xiaomi/passport/v2/utils/h;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/v2/utils/h;->yr(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v4, "LoginUIController"

    const-string/jumbo v5, "remote exception"

    invoke-static {v4, v5, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move v1, v3

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v3, "LoginUIController"

    const-string/jumbo v4, "illegal device id "

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "illegal_device_id"

    const v1, 0x7f0c008f

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v2, "LoginUIController"

    const-string/jumbo v3, "need notification"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/xiaomi/passport/v2/utils/o;->GH:Lcom/xiaomi/passport/v2/utils/h;

    iget-object v3, p0, Lcom/xiaomi/passport/v2/utils/o;->GI:Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tj:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->aae()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/xiaomi/passport/v2/utils/h;->yu(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/o;->GG:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    invoke-static {}, Lcom/xiaomi/passport/utils/b;->Da()V

    return-void

    :catch_4
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "LoginUIController"

    const-string/jumbo v3, "need step2 login"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Lcom/xiaomi/accountsdk/account/data/x;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/account/data/x;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/passport/v2/utils/o;->GI:Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/account/data/x;->YF(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/x;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->aaf()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/account/data/x;->YA(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/data/x;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/passport/v2/utils/o;->GI:Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/account/data/x;->YB(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/x;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->aag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/account/data/x;->YC(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/x;->build()Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/passport/v2/utils/o;->GH:Lcom/xiaomi/passport/v2/utils/h;

    invoke-interface {v2, v0}, Lcom/xiaomi/passport/v2/utils/h;->yq(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/o;->GG:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    invoke-static {}, Lcom/xiaomi/passport/utils/b;->Da()V

    return-void

    :catch_5
    move-exception v3

    :try_start_4
    const-string/jumbo v0, "LoginUIController"

    const-string/jumbo v4, "wrong password"

    invoke-static {v0, v4, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "password_error"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->aaa()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/o;->GH:Lcom/xiaomi/passport/v2/utils/h;

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->aaa()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/xiaomi/passport/v2/utils/h;->yt(Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->aab()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0c008a

    goto/16 :goto_1

    :cond_3
    const v1, 0x7f0c00ae

    goto/16 :goto_1

    :catch_6
    move-exception v0

    :try_start_6
    const-string/jumbo v3, "LoginUIController"

    const-string/jumbo v4, "access denied"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "access_denied"

    const v1, 0x7f0c008c

    goto/16 :goto_1

    :catch_7
    move-exception v0

    const-string/jumbo v3, "LoginUIController"

    const-string/jumbo v4, "invalid response"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "server_error"

    const v1, 0x7f0c0095

    goto/16 :goto_1

    :catch_8
    move-exception v0

    const-string/jumbo v3, "LoginUIController"

    const-string/jumbo v4, "nonExist user name"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f0c008b

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto/16 :goto_1

    :catch_9
    move-exception v3

    const-string/jumbo v0, "LoginUIController"

    const-string/jumbo v4, "need captcha"

    invoke-static {v0, v4}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "captcha_error"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/o;->GH:Lcom/xiaomi/passport/v2/utils/h;

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->aad()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/xiaomi/passport/v2/utils/h;->yt(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v1, v2

    goto/16 :goto_1

    :catch_a
    move-exception v0

    :try_start_8
    const-string/jumbo v3, "LoginUIController"

    const-string/jumbo v4, "network error"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "network_error"

    const v1, 0x7f0c0093

    goto/16 :goto_1

    :catch_b
    move-exception v0

    const-string/jumbo v2, "LoginUIController"

    const-string/jumbo v4, "interrupted"

    invoke-static {v2, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/o;->GG:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    invoke-static {}, Lcom/xiaomi/passport/utils/b;->Da()V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/o;->GH:Lcom/xiaomi/passport/v2/utils/h;

    invoke-interface {v0, v3}, Lcom/xiaomi/passport/v2/utils/h;->yr(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    iget-object v2, p0, Lcom/xiaomi/passport/v2/utils/o;->GG:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v2}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    invoke-static {}, Lcom/xiaomi/passport/utils/b;->Da()V

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/xiaomi/passport/utils/w;->FA(Ljava/lang/String;)V

    :cond_4
    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2
.end method
