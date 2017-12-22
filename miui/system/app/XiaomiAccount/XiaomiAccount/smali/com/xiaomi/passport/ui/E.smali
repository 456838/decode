.class public abstract Lcom/xiaomi/passport/ui/E;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/passport/data/d;",
        ">;"
    }
.end annotation


# instance fields
.field protected mUserId:Ljava/lang/String;

.field private sP:Landroid/app/Activity;

.field protected sQ:Ljava/lang/String;

.field private sR:Lcom/xiaomi/passport/ui/C;

.field protected final sS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/E;->sP:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/E;->mUserId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/E;->sS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/E;->yg([Ljava/lang/Void;)Lcom/xiaomi/passport/data/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/passport/data/d;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/E;->yi(Lcom/xiaomi/passport/data/d;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/passport/data/d;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/E;->yj(Lcom/xiaomi/passport/data/d;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/E;->sP:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/E;->sP:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/E;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/ui/E;->sP:Landroid/app/Activity;

    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/E;->sP:Landroid/app/Activity;

    const v2, 0x7f0c0071

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/E;->sR:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/E;->sR:Lcom/xiaomi/passport/ui/C;

    new-instance v1, Lcom/xiaomi/passport/ui/bc;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/bc;-><init>(Lcom/xiaomi/passport/ui/E;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/C;->xE(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/E;->sR:Lcom/xiaomi/passport/ui/C;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/E;->sP:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "LoginProgress"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected varargs yg([Ljava/lang/Void;)Lcom/xiaomi/passport/data/d;
    .locals 11

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/E;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v6

    :cond_0
    iput-object v6, p0, Lcom/xiaomi/passport/ui/E;->sQ:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/E;->yh()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/E;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "LoginBaseTask"

    const-string/jumbo v1, "login failure, failed to get service token"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/passport/data/d;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/E;->sS:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/E;->mUserId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string/jumbo v0, "LoginBaseTask"

    const-string/jumbo v2, "login success"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/passport/data/d;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/E;->sS:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/E;->mUserId:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "LoginBaseTask"

    const-string/jumbo v2, "need notification"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v10, "need_notification"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->aae()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/xiaomi/passport/data/d;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/E;->sS:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/E;->mUserId:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "V3.0_login_failure"

    invoke-virtual {v1, v2, v10}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "LoginBaseTask"

    const-string/jumbo v2, "invalid username"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v9, "invalid_user_name"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v0, Lcom/xiaomi/passport/data/d;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/E;->sS:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/E;->mUserId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "V3.0_login_failure"

    invoke-virtual {v1, v2, v9}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0

    :catch_2
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "LoginBaseTask"

    const-string/jumbo v2, "need captcha or captcha wrong"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v9, "captcha_error"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->aad()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/xiaomi/passport/data/d;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/E;->sS:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/E;->mUserId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "V3.0_login_failure"

    invoke-virtual {v1, v2, v9}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0

    :catch_3
    move-exception v0

    :try_start_7
    const-string/jumbo v1, "LoginBaseTask"

    const-string/jumbo v2, "need verification"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v9, "need_step2"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->aag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->aaf()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v7

    new-instance v0, Lcom/xiaomi/passport/data/d;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/E;->sS:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/E;->mUserId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v9, :cond_6

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "V3.0_login_failure"

    invoke-virtual {v1, v2, v9}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v0

    :catch_4
    move-exception v0

    :try_start_9
    const-string/jumbo v1, "LoginBaseTask"

    const-string/jumbo v2, "auth failure"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v6, "authentication_failure"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    new-instance v0, Lcom/xiaomi/passport/data/d;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/E;->sS:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/E;->mUserId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "V3.0_login_failure"

    invoke-virtual {v1, v2, v6}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v0

    :catch_5
    move-exception v0

    :try_start_b
    const-string/jumbo v1, "LoginBaseTask"

    const-string/jumbo v2, "access denied"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v6, "access_denied"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    new-instance v0, Lcom/xiaomi/passport/data/d;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/E;->sS:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/E;->mUserId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "V3.0_login_failure"

    invoke-virtual {v1, v2, v6}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object v0

    :catch_6
    move-exception v0

    :try_start_d
    const-string/jumbo v1, "LoginBaseTask"

    const-string/jumbo v2, "IllegalDeviceException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v1, "illegal_device_id"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    new-instance v0, Lcom/xiaomi/passport/data/d;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v2

    const-string/jumbo v3, "V3.0_login_failure"

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-object v0

    :catch_7
    move-exception v0

    :try_start_f
    const-string/jumbo v1, "LoginBaseTask"

    const-string/jumbo v2, "io exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v6, "network_error"
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    new-instance v0, Lcom/xiaomi/passport/data/d;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/E;->sS:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/E;->mUserId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "V3.0_login_failure"

    invoke-virtual {v1, v2, v6}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object v0

    :catch_8
    move-exception v0

    :try_start_11
    const-string/jumbo v1, "LoginBaseTask"

    const-string/jumbo v2, "SSLException exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v6, "ssl_hand_shake_exception"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    new-instance v0, Lcom/xiaomi/passport/data/d;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/E;->sS:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/E;->mUserId:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "V3.0_login_failure"

    invoke-virtual {v1, v2, v6}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-object v0

    :catch_9
    move-exception v0

    :try_start_13
    const-string/jumbo v1, "LoginBaseTask"

    const-string/jumbo v2, "invalid response"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v6, "server_error"
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    new-instance v0, Lcom/xiaomi/passport/data/d;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/E;->sS:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/E;->mUserId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "V3.0_login_failure"

    invoke-virtual {v1, v2, v6}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-object v0

    :catch_a
    move-exception v0

    :try_start_15
    const-string/jumbo v1, "LoginBaseTask"

    const-string/jumbo v2, "invalid pwd"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v9, "password_error"
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :try_start_16
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->aaa()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/xiaomi/passport/data/d;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/E;->sS:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/E;->mUserId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    if-eqz v9, :cond_d

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "V3.0_login_failure"

    invoke-virtual {v1, v2, v9}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_e

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v2

    const-string/jumbo v3, "V3.0_login_failure"

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v10

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v9

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object v1, v6

    goto :goto_0

    :catchall_4
    move-exception v0

    goto :goto_0
.end method

.method protected abstract yh()Lcom/xiaomi/accountsdk/account/data/AccountInfo;
.end method

.method protected yi(Lcom/xiaomi/passport/data/d;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/E;->sR:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/E;->sR:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/E;->sR:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/E;->sR:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method protected yj(Lcom/xiaomi/passport/data/d;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/E;->sR:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/E;->sR:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/E;->sP:Landroid/app/Activity;

    if-nez v0, :cond_2

    :cond_1
    iput-object v1, p0, Lcom/xiaomi/passport/ui/E;->sP:Landroid/app/Activity;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/ui/E;->sP:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/E;->yk(Lcom/xiaomi/passport/data/d;)V

    return-void
.end method

.method protected abstract yk(Lcom/xiaomi/passport/data/d;)V
.end method
