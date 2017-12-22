.class public Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;
.super Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;
.source "FindDeviceKeyguardPageUnlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;,
        Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;,
        Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;,
        Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;,
        Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;
    }
.end annotation


# instance fields
.field private mAddOrUpdateAccountErrorMessage:Ljava/lang/String;

.field private mAddOrUpdateAccountSuccess:Z

.field private mAddOrUpdateAccountTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;

.field private mCaptCode:Ljava/lang/String;

.field private mCaptIck:Ljava/lang/String;

.field private mChangeFindDeviceStatusToUnlockTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;

.field private mChangeStatusErrorMessage:Ljava/lang/String;

.field private mChangeStatusSuccess:Z

.field private mEmail:Ljava/lang/String;

.field private mNeedShowSyncDataSettings:Z

.field private mPassword:Ljava/lang/String;

.field private mPhone:Ljava/lang/String;

.field private mStep1LoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;

.field private mUpdateCaptchaTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;

.field private mUserId:Ljava/lang/String;

.field private mVerifyAccountCaptUrl:Ljava/lang/String;

.field private mVerifyAccountErrorMessage:Ljava/lang/String;

.field private mVerifyAccountSuccess:Z

.field private mVerifyAccountTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;

.field private mViewBack:Landroid/view/View;

.field private mViewCaptGroup:Landroid/view/View;

.field private mViewCaptImg:Landroid/widget/ImageView;

.field private mViewCaptInput:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

.field private mViewLogin:Landroid/view/View;

.field private mViewPassword:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

.field private mViewPrompt:Landroid/widget/TextView;

.field private mViewShowPassword:Landroid/widget/ImageView;

.field private mViewStatus:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mCaptCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mCaptIck:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mVerifyAccountCaptUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewLogin:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mAddOrUpdateAccountErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mAddOrUpdateAccountSuccess:Z

    return p1
.end method

.method static synthetic -set10(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mVerifyAccountSuccess:Z

    return p1
.end method

.method static synthetic -set11(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mVerifyAccountTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;

    return-object p1
.end method

.method static synthetic -set2(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mAddOrUpdateAccountTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;

    return-object p1
.end method

.method static synthetic -set3(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mChangeFindDeviceStatusToUnlockTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;

    return-object p1
.end method

.method static synthetic -set4(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mChangeStatusErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mChangeStatusSuccess:Z

    return p1
.end method

.method static synthetic -set6(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;)Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mStep1LoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;

    return-object p1
.end method

.method static synthetic -set7(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mUpdateCaptchaTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;

    return-object p1
.end method

.method static synthetic -set8(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mVerifyAccountCaptUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set9(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mVerifyAccountErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->performVerifyAccount()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->processAddOrUpdateAccountResult()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->processChangeFindDeviceStatusToUnlockResult()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Landroid/util/Pair;)V
    .locals 0
    .param p1, "captInfo"    # Landroid/util/Pair;

    .prologue
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->processUpdateCaptInfoResult(Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->processVerifyAccountResult()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->togglePasswordVisibility()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->updateCaptInfo()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "keyguard"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method private ShowSyncDataSettingsIfNecessary()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 436
    iget-boolean v4, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mNeedShowSyncDataSettings:Z

    if-eqz v4, :cond_0

    .line 437
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 438
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "extra_show_skip_login"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 439
    const-string/jumbo v4, "androidPackageName"

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.xiaomi.action.MICLOUD_SYNC_DATA_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 442
    const/high16 v4, 0x10800000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 446
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 450
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 452
    .local v2, "e":Ljava/lang/SecurityException;
    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "FAILED TO START syncDataSettings. "

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 447
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 449
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "FAILED TO START syncDataSettings. "

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 164
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewBack:Landroid/view/View;

    .line 165
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewPrompt:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewPassword:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    .line 167
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewShowPassword:Landroid/widget/ImageView;

    .line 168
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewLogin:Landroid/view/View;

    .line 169
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewStatus:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewCaptGroup:Landroid/view/View;

    .line 171
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewCaptInput:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    .line 172
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewCaptImg:Landroid/widget/ImageView;

    .line 163
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->updatePromptView()V

    .line 209
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewPassword:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->SingleItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->setStyle(Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;)V

    .line 210
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewShowPassword:Landroid/widget/ImageView;

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewCaptInput:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->LastItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->setStyle(Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;)V

    .line 207
    return-void
.end method

.method private performAddOrUpdateAccount(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 5
    .param p1, "accountInfo"    # Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .prologue
    const/4 v4, 0x0

    .line 316
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->setStatusMessage(Ljava/lang/String;Z)V

    .line 318
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mAddOrUpdateAccountTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;

    .line 319
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mAddOrUpdateAccountTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;

    .line 320
    invoke-static {}, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->get()Lcom/xiaomi/finddevice/common/FindDeviceExecutor;

    move-result-object v1

    .line 319
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 320
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 319
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 315
    return-void
.end method

.method private performChangeFindDeviceStatusToUnlock()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 335
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->setStatusMessage(Ljava/lang/String;Z)V

    .line 337
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mChangeFindDeviceStatusToUnlockTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;

    .line 338
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mChangeFindDeviceStatusToUnlockTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;

    .line 339
    invoke-static {}, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->get()Lcom/xiaomi/finddevice/common/FindDeviceExecutor;

    move-result-object v1

    .line 338
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    .line 339
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v4

    .line 338
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 334
    return-void
.end method

.method private performLogin(Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;)V
    .locals 6
    .param p1, "step1LoginContext"    # Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;

    .prologue
    const/16 v5, 0x10

    .line 276
    const v3, 0x7f070030

    invoke-virtual {p0, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->setStatusMessage(Ljava/lang/String;Z)V

    .line 278
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->getNextStep()Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NONE:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v3, v4, :cond_1

    .line 280
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->getLoginContext()Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;

    .line 282
    .local v0, "nextNoneLoginContext":Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;
    new-instance v3, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    iget-object v4, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;->accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-direct {v3, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    invoke-direct {p0, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->processLoginResult(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;)V

    .line 274
    .end local v0    # "nextNoneLoginContext":Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->getNextStep()Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->VERIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v3, v4, :cond_2

    .line 286
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->getLoginContext()Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    move-result-object v2

    .line 285
    check-cast v2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;

    .line 288
    .local v2, "nextVerificationLoginContext":Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getKeyguard()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    move-result-object v3

    const-string/jumbo v4, "EXTRA_UNLOCK_STEPS_VERIFICATION"

    invoke-virtual {v3, v4, v5, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->switchToPage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 291
    .end local v2    # "nextVerificationLoginContext":Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->getNextStep()Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NOTIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v3, v4, :cond_0

    .line 294
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->getLoginContext()Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    move-result-object v1

    .line 293
    check-cast v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;

    .line 296
    .local v1, "nextNotificationLoginContext":Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getKeyguard()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    move-result-object v3

    const-string/jumbo v4, "EXTRA_UNLOCK_STEPS_NOTIFICATION"

    invoke-virtual {v3, v4, v5, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->switchToPage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private performVerifyAccount()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    iget-boolean v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mNeedShowSyncDataSettings:Z

    if-nez v1, :cond_0

    .line 240
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/util/AccountHelper;->hasXiaomiAccountLogined(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mNeedShowSyncDataSettings:Z

    .line 243
    :cond_0
    const v1, 0x7f07002f

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->setStatusMessage(Ljava/lang/String;Z)V

    .line 245
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->preUnlockCheck()Z

    move-result v1

    if-nez v1, :cond_2

    .line 246
    invoke-direct {p0, v4, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->setStatusMessage(Ljava/lang/String;Z)V

    .line 247
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewLogin:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 248
    return-void

    :cond_1
    move v1, v3

    .line 240
    goto :goto_0

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewPassword:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mPassword:Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewCaptInput:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 255
    .local v0, "captInput":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v4

    :goto_1
    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mCaptCode:Ljava/lang/String;

    .line 257
    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;

    invoke-direct {v1, p0, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;)V

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mVerifyAccountTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;

    .line 258
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mVerifyAccountTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;

    invoke-static {}, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->get()Lcom/xiaomi/finddevice/common/FindDeviceExecutor;

    move-result-object v4

    new-array v3, v3, [Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 237
    return-void

    .line 255
    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private preUnlockCheck()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 382
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewPassword:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->setError(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewCaptInput:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->setError(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewPassword:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewPassword:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    const v1, 0x7f07002d

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->setError(Ljava/lang/CharSequence;)V

    .line 387
    return v2

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mVerifyAccountCaptUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewCaptInput:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 390
    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewCaptInput:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->setError(Ljava/lang/CharSequence;)V

    .line 393
    return v2

    .line 396
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private processAddOrUpdateAccountResult()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 324
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mAddOrUpdateAccountSuccess:Z

    if-nez v0, :cond_0

    .line 326
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    new-array v1, v4, [Ljava/lang/Object;

    .line 326
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mAddOrUpdateAccountErrorMessage:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 325
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->setStatusMessage(Ljava/lang/String;Z)V

    .line 328
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewLogin:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 323
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->performChangeFindDeviceStatusToUnlock()V

    goto :goto_0
.end method

.method private processChangeFindDeviceStatusToUnlockResult()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 343
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mChangeStatusSuccess:Z

    if-eqz v0, :cond_0

    .line 344
    invoke-static {p0}, Lmiui/cloud/finddevice/FindDeviceKeyguardController;->unlock(Landroid/content/Context;)V

    .line 345
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->ShowSyncDataSettingsIfNecessary()V

    .line 342
    :goto_0
    return-void

    .line 348
    :cond_0
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 349
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mChangeStatusErrorMessage:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 348
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-direct {p0, v0, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->setStatusMessage(Ljava/lang/String;Z)V

    .line 351
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewLogin:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processLoginResult(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;)V
    .locals 5
    .param p1, "loginResult"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    .prologue
    const/4 v4, 0x1

    .line 303
    iget-object v0, p1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;->accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;->accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-direct {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->performAddOrUpdateAccount(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    .line 302
    :goto_0
    return-void

    .line 309
    :cond_0
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    new-array v1, v4, [Ljava/lang/Object;

    .line 309
    iget-object v2, p1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;->errorMessage:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 308
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->setStatusMessage(Ljava/lang/String;Z)V

    .line 311
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewLogin:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processUpdateCaptInfoResult(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "captInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewCaptInput:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewCaptImg:Landroid/widget/ImageView;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mCaptIck:Ljava/lang/String;

    .line 375
    return-void
.end method

.method private processVerifyAccountResult()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 262
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mVerifyAccountSuccess:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mStep1LoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;

    invoke-direct {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->performLogin(Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;)V

    .line 261
    :goto_0
    return-void

    .line 266
    :cond_0
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 267
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mVerifyAccountErrorMessage:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 266
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-direct {p0, v0, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->setStatusMessage(Ljava/lang/String;Z)V

    .line 269
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->updateCaptInfo()V

    .line 270
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewLogin:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private registerViewListeners()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewBack:Landroid/view/View;

    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$1;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewLogin:Landroid/view/View;

    .line 184
    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$2;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewCaptImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$3;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewShowPassword:Landroid/widget/ImageView;

    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$4;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$4;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    return-void
.end method

.method private setStatusMessage(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "warn"    # Z

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f05000c

    const/4 v2, 0x0

    .line 416
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewStatus:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 417
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "mViewStatus == null"

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 418
    return-void

    .line 421
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewStatus:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 429
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method

.method private togglePasswordVisibility()V
    .locals 3

    .prologue
    const/16 v1, 0x90

    const/4 v0, 0x1

    .line 401
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewPassword:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->getInputType()I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    if-ne v2, v1, :cond_0

    .line 403
    .local v0, "visible":Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 405
    .local v0, "visible":Z
    :goto_1
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewPassword:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    .line 406
    if-eqz v0, :cond_2

    .line 405
    :goto_2
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->setInputType(I)V

    .line 408
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewShowPassword:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const v1, 0x7f020018

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 399
    return-void

    .line 401
    .end local v0    # "visible":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 403
    .local v0, "visible":Z
    :cond_1
    const/4 v0, 0x1

    .local v0, "visible":Z
    goto :goto_1

    .line 407
    :cond_2
    const/16 v1, 0x80

    goto :goto_2

    .line 409
    :cond_3
    const v1, 0x7f020017

    goto :goto_3
.end method

.method private updateCaptInfo()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 356
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewCaptGroup:Landroid/view/View;

    .line 357
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mVerifyAccountCaptUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    .line 356
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mVerifyAccountCaptUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewCaptGroup:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewCaptInput:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    invoke-virtual {v0, v4}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewCaptImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 362
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewPassword:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->SingleItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->setStyle(Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;)V

    .line 355
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 357
    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewCaptGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewPassword:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;

    sget-object v2, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->FirstItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    invoke-virtual {v0, v2}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->setStyle(Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;)V

    .line 366
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mUpdateCaptchaTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mUpdateCaptchaTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;->cancel(Z)Z

    .line 369
    :cond_2
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;

    invoke-direct {v0, p0, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mUpdateCaptchaTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;

    .line 370
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mUpdateCaptchaTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;

    invoke-static {}, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->get()Lcom/xiaomi/finddevice/common/FindDeviceExecutor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private updateData(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 215
    const-string/jumbo v0, "key_user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mUserId:Ljava/lang/String;

    .line 216
    const-string/jumbo v0, "key_email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mEmail:Ljava/lang/String;

    .line 217
    const-string/jumbo v0, "key_phone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mPhone:Ljava/lang/String;

    .line 214
    return-void
.end method

.method private updatePromptView()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 221
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mUserId:Ljava/lang/String;

    const/4 v5, 0x3

    const/16 v6, 0x2a

    invoke-static {v4, v5, v6}, Lmiui/cloud/util/SysHelper;->maskMiddle(Ljava/lang/CharSequence;IC)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "account":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mPhone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 225
    const v4, 0x7f07002a

    invoke-virtual {p0, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mPhone:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "phone":Ljava/lang/String;
    const-string/jumbo v4, "%s%s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v7

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .end local v3    # "phone":Ljava/lang/String;
    .local v1, "accountInfo":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mViewPrompt:Landroid/widget/TextView;

    const v5, 0x7f070028

    invoke-virtual {p0, v5}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    return-void

    .line 227
    .end local v1    # "accountInfo":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 228
    const v4, 0x7f070029

    invoke-virtual {p0, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mEmail:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "email":Ljava/lang/String;
    const-string/jumbo v4, "%s%s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v7

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "accountInfo":Ljava/lang/String;
    goto :goto_0

    .line 231
    .end local v1    # "accountInfo":Ljava/lang/String;
    .end local v2    # "email":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .restart local v1    # "accountInfo":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->updateData(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method protected onCreateEnterAnimation(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLeaveAnimation(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "li"    # Landroid/view/LayoutInflater;

    .prologue
    .line 129
    const v0, 0x7f030003

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-super {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onDestroy()V

    .line 109
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mUpdateCaptchaTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mUpdateCaptchaTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;

    invoke-virtual {v0, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;->cancel(Z)Z

    .line 111
    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mUpdateCaptchaTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$UpdateCaptchaTask;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mVerifyAccountTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mVerifyAccountTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;

    invoke-virtual {v0, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->cancel(Z)Z

    .line 115
    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mVerifyAccountTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mChangeFindDeviceStatusToUnlockTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mChangeFindDeviceStatusToUnlockTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;

    invoke-virtual {v0, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->cancel(Z)Z

    .line 119
    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mChangeFindDeviceStatusToUnlockTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mAddOrUpdateAccountTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mAddOrUpdateAccountTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;

    invoke-virtual {v0, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;->cancel(Z)Z

    .line 123
    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->mAddOrUpdateAccountTask:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;

    .line 107
    :cond_3
    return-void
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getKeyguard()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    move-result-object v0

    const-string/jumbo v1, "MESSAGE"

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->switchToPage(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onScreenOff()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onScreenOff()V

    .line 103
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getKeyguard()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    move-result-object v0

    const-string/jumbo v1, "MESSAGE"

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->switchToPage(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method protected onSetData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onSetData(Landroid/os/Bundle;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->updateData(Landroid/os/Bundle;)V

    .line 97
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->updatePromptView()V

    .line 94
    return-void
.end method

.method protected onSwitchInto(ILjava/lang/Object;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 88
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 89
    check-cast p2, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    .end local p2    # "extra":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->processLoginResult(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;)V

    .line 87
    :cond_0
    return-void
.end method

.method protected onViewCreated(Landroid/view/View;)V
    .locals 0
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onViewCreated(Landroid/view/View;)V

    .line 136
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->findViews()V

    .line 137
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->registerViewListeners()V

    .line 139
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->initViews()V

    .line 133
    return-void
.end method
