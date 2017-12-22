.class public Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;
.super Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;
.source "FindDeviceKeyguardPageExtraLoginStepVerification.java"


# instance fields
.field private mMetaLoginData:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;

.field private mTrust:Z

.field private mVCode:Ljava/lang/String;

.field private mVerifyFuture:Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;

.field private mViewEtVcode:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

.field private mViewTrustDevice:Landroid/widget/CheckBox;

.field private mViewVerifyButton:Landroid/widget/Button;


# direct methods
.method static synthetic -set0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;)Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mVerifyFuture:Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->performVerify()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;)V
    .locals 0
    .param p1, "future"    # Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;

    .prologue
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->processVerifyResult(Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "keyguard"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 83
    const/high16 v0, 0x7f090000

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewEtVcode:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    .line 84
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewTrustDevice:Landroid/widget/CheckBox;

    .line 85
    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewVerifyButton:Landroid/widget/Button;

    .line 82
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewEtVcode:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->SingleItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->setStyle(Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;)V

    .line 99
    return-void
.end method

.method private performVerify()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->preVerifyCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewTrustDevice:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mTrust:Z

    .line 109
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewEtVcode:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mVCode:Ljava/lang/String;

    .line 111
    const v1, 0x7f07003d

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->setStatusMessage(Ljava/lang/String;Z)V

    .line 112
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewVerifyButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    new-instance v1, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;-><init>()V

    .line 115
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mMetaLoginData:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->userId:Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->setUserId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object v1

    .line 116
    const-string/jumbo v2, "micloudfind"

    .line 114
    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->setServiceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mMetaLoginData:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->step1Token:Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->setStep1Token(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mMetaLoginData:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    .line 114
    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->setMetaLoginData(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object v1

    .line 119
    iget-boolean v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mTrust:Z

    .line 114
    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->setTrust(Z)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mVCode:Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->setStep2code(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->build()Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;

    move-result-object v0

    .line 124
    .local v0, "params":Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 123
    invoke-static {v1}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->getForMiuiSystemAccountService(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/MiPassportUIController;

    move-result-object v1

    .line 125
    new-instance v2, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification$2;

    invoke-direct {v2, p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification$2;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;)V

    .line 123
    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->loginByStep2(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginUICallback;)Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mVerifyFuture:Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;

    .line 103
    return-void
.end method

.method private preVerifyCheck()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 177
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewEtVcode:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->setStatusMessage(Ljava/lang/String;Z)V

    .line 179
    const/4 v0, 0x0

    return v0

    .line 181
    :cond_0
    return v1
.end method

.method private processVerifyResult(Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;)V
    .locals 16
    .param p1, "future"    # Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;

    .prologue
    .line 137
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 138
    .local v1, "accountInfo":Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->getKeyguard()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    move-result-object v12

    const-string/jumbo v13, "UNLOCK"

    .line 140
    new-instance v14, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    invoke-direct {v14, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    .line 139
    const/16 v15, 0x10

    .line 138
    invoke-virtual {v12, v13, v15, v14}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->switchToPage(Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "accountInfo":Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v3

    .line 146
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;->interpretExecutionException(Ljava/util/concurrent/ExecutionException;)V
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidStep2codeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 147
    :catch_1
    move-exception v10

    .line 148
    .local v10, "e1":Lcom/xiaomi/accountsdk/request/InvalidResponseException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewVerifyButton:Landroid/widget/Button;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    const v12, 0x7f07001d

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->setStatusMessage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 169
    .end local v10    # "e1":Lcom/xiaomi/accountsdk/request/InvalidResponseException;
    :catch_2
    move-exception v4

    .line 170
    .local v4, "e1":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewVerifyButton:Landroid/widget/Button;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 171
    const v12, 0x7f070023

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->setStatusMessage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 166
    .end local v4    # "e1":Landroid/os/RemoteException;
    :catch_3
    move-exception v7

    .line 167
    .local v7, "e1":Lcom/xiaomi/accountsdk/account/exception/InvalidStep2codeException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewVerifyButton:Landroid/widget/Button;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    const v12, 0x7f07003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->setStatusMessage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 163
    .end local v7    # "e1":Lcom/xiaomi/accountsdk/account/exception/InvalidStep2codeException;
    :catch_4
    move-exception v5

    .line 164
    .local v5, "e1":Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewVerifyButton:Landroid/widget/Button;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    const v12, 0x7f07001a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->setStatusMessage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 160
    .end local v5    # "e1":Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;
    :catch_5
    move-exception v9

    .line 161
    .local v9, "e1":Lcom/xiaomi/accountsdk/request/AccessDeniedException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewVerifyButton:Landroid/widget/Button;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 162
    const v12, 0x7f07001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->setStatusMessage(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 157
    .end local v9    # "e1":Lcom/xiaomi/accountsdk/request/AccessDeniedException;
    :catch_6
    move-exception v8

    .line 158
    .local v8, "e1":Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewVerifyButton:Landroid/widget/Button;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 159
    const v12, 0x7f070021

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->setStatusMessage(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 154
    .end local v8    # "e1":Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;
    :catch_7
    move-exception v6

    .line 155
    .local v6, "e1":Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewVerifyButton:Landroid/widget/Button;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    const v12, 0x7f07001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->setStatusMessage(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 150
    .end local v6    # "e1":Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;
    :catch_8
    move-exception v11

    .line 151
    .local v11, "e1":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewVerifyButton:Landroid/widget/Button;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    const v12, 0x7f070019

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->setStatusMessage(Ljava/lang/String;Z)V

    .line 153
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/xiaomi/finddevice/common/util/TimeUtil;->correctTimeIfNecessaryOnNetworkError(Landroid/content/Context;Ljava/io/IOException;)V

    goto/16 :goto_0

    .line 141
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v11    # "e1":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewVerifyButton:Landroid/widget/Button;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    const v12, 0x7f070022

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->setStatusMessage(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private registerViewListeners()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewVerifyButton:Landroid/widget/Button;

    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification$1;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method


# virtual methods
.method protected onAbort()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-super {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->onAbort()V

    .line 75
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mVerifyFuture:Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mVerifyFuture:Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;->cancel(Z)Z

    .line 77
    iput-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mVerifyFuture:Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;

    .line 72
    :cond_0
    return-void
.end method

.method protected onCreateExtraContentView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "li"    # Landroid/view/LayoutInflater;

    .prologue
    .line 44
    const/high16 v0, 0x7f030000

    .line 45
    const/4 v1, 0x1

    .line 44
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    return-void
.end method

.method protected onSwitchInto(ILjava/lang/Object;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->onSwitchInto(ILjava/lang/Object;)V

    .line 64
    check-cast p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;

    .line 63
    .end local p2    # "extra":Ljava/lang/Object;
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mMetaLoginData:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;

    .line 66
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewEtVcode:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewTrustDevice:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->mViewVerifyButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    return-void
.end method

.method protected onViewCreated(Landroid/view/View;)V
    .locals 0
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->onViewCreated(Landroid/view/View;)V

    .line 53
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->findViews()V

    .line 54
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->registerViewListeners()V

    .line 56
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepVerification;->initViews()V

    .line 50
    return-void
.end method
