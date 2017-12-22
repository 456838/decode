.class Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;
.super Landroid/os/AsyncTask;
.source "FindDeviceKeyguardPageUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyAccountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;


# direct methods
.method private constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    .prologue
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 460
    check-cast p1, [Landroid/content/Context;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 20
    .param p1, "params"    # [Landroid/content/Context;

    .prologue
    .line 461
    const/4 v1, 0x0

    aget-object v10, p1, v1

    .line 463
    .local v10, "appContext":Landroid/content/Context;
    invoke-static {v10}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v1

    .line 462
    iget-object v3, v1, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    .line 466
    .local v3, "deviceId":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-get3(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "micloudfind"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-static {v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-get2(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-static {v5}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-get0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-static {v6}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-get1(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 465
    invoke-static/range {v1 .. v8}, Lcom/xiaomi/accountsdk/account/XMPassport;->loginByPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v9

    .line 467
    .local v9, "accountInfo":Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set10(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    new-instance v2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;

    invoke-direct {v2, v9}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set6(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;)Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v9    # "accountInfo":Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 496
    :catch_0
    move-exception v14

    .line 497
    .local v14, "e":Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set10(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z

    .line 498
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    new-instance v2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;

    invoke-direct {v2, v14}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;-><init>(Ljava/lang/Exception;)V

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set6(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;)Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;

    goto :goto_0

    .line 493
    .end local v14    # "e":Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;
    :catch_1
    move-exception v17

    .line 494
    .local v17, "e":Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set10(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z

    .line 495
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const v4, 0x7f07001d

    invoke-virtual {v2, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set9(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 490
    .end local v17    # "e":Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
    :catch_2
    move-exception v16

    .line 491
    .local v16, "e":Lcom/xiaomi/accountsdk/request/AccessDeniedException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set10(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z

    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const v4, 0x7f07001e

    invoke-virtual {v2, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set9(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 486
    .end local v16    # "e":Lcom/xiaomi/accountsdk/request/AccessDeniedException;
    :catch_3
    move-exception v19

    .line 487
    .local v19, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set10(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z

    .line 488
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const v4, 0x7f070019

    invoke-virtual {v2, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set9(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;

    .line 489
    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcom/xiaomi/finddevice/common/util/TimeUtil;->correctTimeIfNecessaryOnNetworkError(Landroid/content/Context;Ljava/io/IOException;)V

    goto :goto_0

    .line 482
    .end local v19    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v13

    .line 483
    .local v13, "e":Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set10(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z

    .line 484
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const v4, 0x7f07001f

    invoke-virtual {v2, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set9(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-virtual {v13}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->getCaptchaUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set8(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 479
    .end local v13    # "e":Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;
    :catch_5
    move-exception v15

    .line 480
    .local v15, "e":Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set10(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z

    .line 481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    new-instance v2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;

    invoke-direct {v2, v15}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;-><init>(Ljava/lang/Exception;)V

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set6(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;)Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;

    goto/16 :goto_0

    .line 476
    .end local v15    # "e":Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;
    :catch_6
    move-exception v12

    .line 477
    .local v12, "e":Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set10(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const v4, 0x7f070021

    invoke-virtual {v2, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set9(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 472
    .end local v12    # "e":Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;
    :catch_7
    move-exception v11

    .line 473
    .local v11, "e":Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set10(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z

    .line 474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const v4, 0x7f07001c

    invoke-virtual {v2, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set9(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-virtual {v11}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->getCaptchaUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set8(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 469
    .end local v11    # "e":Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;
    :catch_8
    move-exception v18

    .line 470
    .local v18, "e":Lcom/xiaomi/accountsdk/request/InvalidResponseException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set10(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const v4, 0x7f07001d

    invoke-virtual {v2, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set9(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 504
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set11(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;

    .line 506
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$VerifyAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-wrap4(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V

    .line 504
    return-void
.end method
