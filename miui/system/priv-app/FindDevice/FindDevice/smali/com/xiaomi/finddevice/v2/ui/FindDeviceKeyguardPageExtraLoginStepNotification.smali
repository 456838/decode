.class public Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;
.super Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;
.source "FindDeviceKeyguardPageExtraLoginStepNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;
    }
.end annotation


# instance fields
.field private mNotificationEndListener:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;

.field private mNotificationLoginEndFuture:Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;

.field private mNotificationWebView:Lcom/xiaomi/passport/uicontroller/NotificationWebView;


# direct methods
.method static synthetic -set0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;)Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->mNotificationLoginEndFuture:Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->onAuthEnd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "passToken"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->onLoginEnd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->onNeedReLogin()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;)V
    .locals 0
    .param p1, "future"    # Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;

    .prologue
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->processLoginEndTaskResult(Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "keyguard"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method private cancelNotificationEndListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->mNotificationEndListener:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->mNotificationEndListener:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;->cancel()V

    .line 181
    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->mNotificationEndListener:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;

    .line 178
    :cond_0
    return-void
.end method

.method private makeNotificationListener()Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->mNotificationEndListener:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Aleady a NotificationEndListener here. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->mNotificationEndListener:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;

    .line 175
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->mNotificationEndListener:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;

    return-object v0
.end method

.method private onAuthEnd(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->cancelNotificationEndListener()V

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Never reach here. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onLoginEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "passToken"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->cancelNotificationEndListener()V

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->performLoginEndTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private onNeedReLogin()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->cancelNotificationEndListener()V

    .line 100
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    .line 101
    const v1, 0x7f070040

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->switchToUnlockPageWithResult(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;)V

    .line 98
    return-void
.end method

.method private performLoginEndTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "passToken"    # Ljava/lang/String;

    .prologue
    .line 106
    const v1, 0x7f07003f

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->setStatusMessage(Ljava/lang/String;Z)V

    .line 107
    new-instance v1, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;->setUserId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;

    move-result-object v1

    .line 109
    const-string/jumbo v2, "micloudfind"

    .line 107
    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;->setServiceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;->setPassToken(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;->build()Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;

    move-result-object v0

    .line 114
    .local v0, "params":Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 113
    invoke-static {v1}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->getForMiuiSystemAccountService(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/MiPassportUIController;

    move-result-object v1

    .line 115
    new-instance v2, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$1;

    invoke-direct {v2, p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$1;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;)V

    .line 113
    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->onNotificationLoginEnd(Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginUICallback;)Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;

    move-result-object v1

    .line 112
    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->mNotificationLoginEndFuture:Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;

    .line 104
    return-void
.end method

.method private processLoginEndTaskResult(Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;)V
    .locals 13
    .param p1, "future"    # Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;

    .prologue
    const v12, 0x7f07001d

    .line 126
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 127
    .local v0, "accountInfo":Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    new-instance v11, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    invoke-direct {v11, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    invoke-direct {p0, v11}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->switchToUnlockPageWithResult(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "accountInfo":Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_1
    invoke-virtual {p1, v2}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;->interpretExecutionException(Ljava/util/concurrent/ExecutionException;)V
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 134
    :catch_1
    move-exception v9

    .line 135
    .local v9, "e1":Lcom/xiaomi/accountsdk/request/InvalidResponseException;
    new-instance v11, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    .line 136
    invoke-virtual {p0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 135
    invoke-direct {v11, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->switchToUnlockPageWithResult(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;)V

    goto :goto_0

    .line 156
    .end local v9    # "e1":Lcom/xiaomi/accountsdk/request/InvalidResponseException;
    :catch_2
    move-exception v3

    .line 157
    .local v3, "e1":Landroid/os/RemoteException;
    new-instance v11, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    .line 158
    const v12, 0x7f070023

    invoke-virtual {p0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 157
    invoke-direct {v11, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->switchToUnlockPageWithResult(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;)V

    goto :goto_0

    .line 153
    .end local v3    # "e1":Landroid/os/RemoteException;
    :catch_3
    move-exception v4

    .line 154
    .local v4, "e1":Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;
    new-instance v11, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    .line 155
    const v12, 0x7f07001a

    invoke-virtual {p0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 154
    invoke-direct {v11, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->switchToUnlockPageWithResult(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;)V

    goto :goto_0

    .line 150
    .end local v4    # "e1":Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;
    :catch_4
    move-exception v8

    .line 151
    .local v8, "e1":Lcom/xiaomi/accountsdk/request/AccessDeniedException;
    new-instance v11, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    .line 152
    const v12, 0x7f07001e

    invoke-virtual {p0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 151
    invoke-direct {v11, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->switchToUnlockPageWithResult(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;)V

    goto :goto_0

    .line 147
    .end local v8    # "e1":Lcom/xiaomi/accountsdk/request/AccessDeniedException;
    :catch_5
    move-exception v6

    .line 148
    .local v6, "e1":Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;
    new-instance v11, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    .line 149
    const v12, 0x7f070021

    invoke-virtual {p0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 148
    invoke-direct {v11, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->switchToUnlockPageWithResult(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;)V

    goto :goto_0

    .line 144
    .end local v6    # "e1":Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;
    :catch_6
    move-exception v5

    .line 145
    .local v5, "e1":Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;
    new-instance v11, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    .line 146
    const v12, 0x7f07001c

    invoke-virtual {p0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 145
    invoke-direct {v11, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->switchToUnlockPageWithResult(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;)V

    goto :goto_0

    .line 140
    .end local v5    # "e1":Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;
    :catch_7
    move-exception v10

    .line 141
    .local v10, "e1":Ljava/io/IOException;
    new-instance v11, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    .line 142
    const v12, 0x7f070019

    invoke-virtual {p0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 141
    invoke-direct {v11, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->switchToUnlockPageWithResult(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;)V

    .line 143
    invoke-static {p0, v10}, Lcom/xiaomi/finddevice/common/util/TimeUtil;->correctTimeIfNecessaryOnNetworkError(Landroid/content/Context;Ljava/io/IOException;)V

    goto :goto_0

    .line 137
    .end local v10    # "e1":Ljava/io/IOException;
    :catch_8
    move-exception v7

    .line 138
    .local v7, "e1":Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;
    new-instance v11, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    .line 139
    invoke-virtual {p0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 138
    invoke-direct {v11, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->switchToUnlockPageWithResult(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;)V

    goto/16 :goto_0

    .line 128
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v7    # "e1":Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;
    :catch_9
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v11, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    .line 130
    const v12, 0x7f070022

    invoke-virtual {p0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 129
    invoke-direct {v11, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->switchToUnlockPageWithResult(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;)V

    goto/16 :goto_0
.end method

.method private switchToUnlockPageWithResult(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;)V
    .locals 3
    .param p1, "result"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->getKeyguard()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    move-result-object v0

    const-string/jumbo v1, "UNLOCK"

    .line 166
    const/16 v2, 0x10

    .line 165
    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->switchToPage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 164
    return-void
.end method


# virtual methods
.method protected onAbort()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-super {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->onAbort()V

    .line 68
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->cancelNotificationEndListener()V

    .line 70
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->mNotificationLoginEndFuture:Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->mNotificationLoginEndFuture:Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;->cancel(Z)Z

    .line 72
    iput-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->mNotificationLoginEndFuture:Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;

    .line 65
    :cond_0
    return-void
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->mNotificationWebView:Lcom/xiaomi/passport/uicontroller/NotificationWebView;

    invoke-virtual {v0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->canGoBack()Z

    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->mNotificationWebView:Lcom/xiaomi/passport/uicontroller/NotificationWebView;

    invoke-virtual {v0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->goBack()V

    .line 82
    const/4 v0, 0x1

    return v0

    .line 84
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSwitchInto(ILjava/lang/Object;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->onSwitchInto(ILjava/lang/Object;)V

    move-object v1, p2

    .line 46
    check-cast v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;

    .line 49
    .local v1, "nextNotificationLoginContext":Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;
    new-instance v0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

    .line 50
    iget-object v2, v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->notificationUrl:Ljava/lang/String;

    const/4 v3, 0x1

    .line 49
    invoke-direct {v0, v2, v3}, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;-><init>(Ljava/lang/String;Z)V

    .line 52
    .local v0, "externalParams":Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;
    new-instance v2, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;

    invoke-direct {v2}, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->setContext(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->setExternalParams(Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;)Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;

    move-result-object v2

    .line 55
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->makeNotificationListener()Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->setNotificationEndListener(Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;)Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->build()Lcom/xiaomi/passport/uicontroller/NotificationWebView;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->mNotificationWebView:Lcom/xiaomi/passport/uicontroller/NotificationWebView;

    .line 58
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->mNotificationWebView:Lcom/xiaomi/passport/uicontroller/NotificationWebView;

    invoke-virtual {p0, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->setExtraContentView(Landroid/view/View;)V

    .line 59
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->mNotificationWebView:Lcom/xiaomi/passport/uicontroller/NotificationWebView;

    invoke-virtual {v2}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->loadNotificationUrl()Z

    .line 61
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->setStatusMessage(Ljava/lang/String;Z)V

    .line 42
    return-void
.end method
