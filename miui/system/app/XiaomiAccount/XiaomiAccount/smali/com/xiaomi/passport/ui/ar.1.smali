.class final Lcom/xiaomi/passport/ui/ar;
.super Lcom/xiaomi/passport/uicontroller/h;
.source ""


# instance fields
.field final synthetic ui:Lcom/xiaomi/passport/ui/s;

.field final synthetic uj:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/ar;->uj:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected yw(Lcom/xiaomi/passport/uicontroller/c;)V
    .locals 6

    const v2, 0x7f0c0096

    const/4 v1, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/s;->vi(Lcom/xiaomi/passport/ui/s;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-static {v3, v0}, Lcom/xiaomi/passport/ui/s;->vk(Lcom/xiaomi/passport/ui/s;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-static {v0, v5}, Lcom/xiaomi/passport/ui/s;->vg(Lcom/xiaomi/passport/ui/s;Lcom/xiaomi/passport/uicontroller/c;)Lcom/xiaomi/passport/uicontroller/c;

    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-virtual {v2, v0}, Lcom/xiaomi/passport/ui/s;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/passport/ui/s;->vm(Lcom/xiaomi/passport/ui/s;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/uicontroller/c;->MZ(Ljava/util/concurrent/ExecutionException;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_b
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

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-static {v2, v5}, Lcom/xiaomi/passport/ui/s;->vg(Lcom/xiaomi/passport/ui/s;Lcom/xiaomi/passport/uicontroller/c;)Lcom/xiaomi/passport/uicontroller/c;

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "QuickLoginFragment"

    const-string/jumbo v4, "remote exception"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v2, "QuickLoginFragment"

    const-string/jumbo v3, "illegal device id "

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f0c008f

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v1, "QuickLoginFragment"

    const-string/jumbo v2, "need notification"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->aae()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/passport/ui/ar;->uj:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-virtual {v3}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "accountAuthenticatorResponse"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v4, v3}, Lcom/xiaomi/passport/utils/o;->Ek(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/passport/ui/s;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-static {v0, v5}, Lcom/xiaomi/passport/ui/s;->vg(Lcom/xiaomi/passport/ui/s;Lcom/xiaomi/passport/uicontroller/c;)Lcom/xiaomi/passport/uicontroller/c;

    return-void

    :catch_4
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "QuickLoginFragment"

    const-string/jumbo v2, "need step2 login"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-static {v1}, Lcom/xiaomi/passport/ui/s;->ve(Lcom/xiaomi/passport/ui/s;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "authAccount"

    iget-object v2, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-static {v2}, Lcom/xiaomi/passport/ui/s;->vb(Lcom/xiaomi/passport/ui/s;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "booleanResult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/s;->uQ(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/s;->vj(Lcom/xiaomi/passport/ui/s;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-static {v0, v5}, Lcom/xiaomi/passport/ui/s;->vg(Lcom/xiaomi/passport/ui/s;Lcom/xiaomi/passport/uicontroller/c;)Lcom/xiaomi/passport/uicontroller/c;

    return-void

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->aag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/passport/ui/s;->mStep1Token:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->aaf()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/passport/ui/s;->qt:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/s;->uZ()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-static {v0, v5}, Lcom/xiaomi/passport/ui/s;->vg(Lcom/xiaomi/passport/ui/s;Lcom/xiaomi/passport/uicontroller/c;)Lcom/xiaomi/passport/uicontroller/c;

    return-void

    :catch_5
    move-exception v0

    :try_start_5
    const-string/jumbo v2, "QuickLoginFragment"

    const-string/jumbo v3, "wrong password"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->aaa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/passport/ui/s;->uN(Ljava/lang/String;)V

    const v0, 0x7f0c008a

    goto/16 :goto_1

    :catch_6
    move-exception v0

    const-string/jumbo v2, "QuickLoginFragment"

    const-string/jumbo v3, "access denied"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f0c008c

    goto/16 :goto_1

    :catch_7
    move-exception v0

    const-string/jumbo v2, "QuickLoginFragment"

    const-string/jumbo v3, "invalid response"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f0c0095

    goto/16 :goto_1

    :catch_8
    move-exception v0

    const-string/jumbo v2, "QuickLoginFragment"

    const-string/jumbo v3, "nonExist user name"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f0c008b

    goto/16 :goto_1

    :catch_9
    move-exception v0

    const-string/jumbo v2, "QuickLoginFragment"

    const-string/jumbo v3, "need captcha"

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-static {v2}, Lcom/xiaomi/passport/ui/s;->vc(Lcom/xiaomi/passport/ui/s;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->aad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/s;->uN(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-static {v0, v5}, Lcom/xiaomi/passport/ui/s;->vg(Lcom/xiaomi/passport/ui/s;Lcom/xiaomi/passport/uicontroller/c;)Lcom/xiaomi/passport/uicontroller/c;

    return-void

    :cond_2
    :try_start_6
    iget-object v2, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->aad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/passport/ui/s;->uN(Ljava/lang/String;)V

    const v0, 0x7f0c008d

    goto/16 :goto_1

    :catch_a
    move-exception v0

    const-string/jumbo v2, "QuickLoginFragment"

    const-string/jumbo v3, "network error"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f0c0093

    goto/16 :goto_1

    :catch_b
    move-exception v0

    const-string/jumbo v2, "QuickLoginFragment"

    const-string/jumbo v3, "network error"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f0c0094

    goto/16 :goto_1

    :catch_c
    move-exception v0

    const-string/jumbo v3, "QuickLoginFragment"

    const-string/jumbo v4, "interrupted"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-static {v0, v5}, Lcom/xiaomi/passport/ui/s;->vg(Lcom/xiaomi/passport/ui/s;Lcom/xiaomi/passport/uicontroller/c;)Lcom/xiaomi/passport/uicontroller/c;

    move v0, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/ar;->ui:Lcom/xiaomi/passport/ui/s;

    invoke-static {v1, v5}, Lcom/xiaomi/passport/ui/s;->vg(Lcom/xiaomi/passport/ui/s;Lcom/xiaomi/passport/uicontroller/c;)Lcom/xiaomi/passport/uicontroller/c;

    throw v0
.end method
