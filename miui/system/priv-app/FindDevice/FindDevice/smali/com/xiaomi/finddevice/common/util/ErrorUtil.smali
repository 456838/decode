.class public Lcom/xiaomi/finddevice/common/util/ErrorUtil;
.super Ljava/lang/Object;
.source "ErrorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static failureExceptionTofailureCauseString(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/16 v7, 0xb4

    const/4 v8, 0x0

    .line 22
    const/16 v0, 0xb4

    .line 23
    .local v0, "MAX_EXTRA_MESSAGE_LEN":I
    const v1, 0x15000

    .line 25
    .local v1, "PASSWORD_RECENTLY_CHANGED_CODE":I
    const v2, 0x7f070007

    .line 26
    .local v2, "cause":I
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "extraMessage":Ljava/lang/String;
    const/4 v5, 0x1

    .line 29
    .local v5, "needTruncating":Z
    instance-of v6, p1, Ljava/io/IOException;

    if-eqz v6, :cond_1

    .line 30
    const v2, 0x7f070009

    .line 31
    const/4 v4, 0x0

    .line 32
    .local v4, "extraMessage":Ljava/lang/String;
    const/4 v5, 0x0

    .line 55
    .end local v4    # "extraMessage":Ljava/lang/String;
    .end local p1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v4, :cond_6

    .line 56
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 33
    .local v4, "extraMessage":Ljava/lang/String;
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_1
    instance-of v6, p1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;

    if-eqz v6, :cond_2

    .line 34
    const v2, 0x7f07000a

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    .line 36
    const/4 v5, 0x1

    goto :goto_0

    .line 37
    :cond_2
    instance-of v6, p1, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;

    if-eqz v6, :cond_4

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Landroid/accounts/OperationCanceledException;

    if-eqz v6, :cond_3

    .line 39
    const v2, 0x7f07000b

    .line 40
    const/4 v4, 0x0

    .line 45
    .end local v4    # "extraMessage":Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 42
    .restart local v4    # "extraMessage":Ljava/lang/String;
    :cond_3
    const v2, 0x7f07000c

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 46
    :cond_4
    instance-of v6, p1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;

    if-eqz v6, :cond_0

    .line 47
    check-cast p1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;

    .end local p1    # "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->getCode()I

    move-result v3

    .line 48
    .local v3, "code":I
    const v6, 0x15000

    if-ne v3, v6, :cond_5

    .line 49
    const v2, 0x7f070008

    .line 50
    const/4 v4, 0x0

    .line 52
    .end local v4    # "extraMessage":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 58
    .end local v3    # "code":I
    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_7

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 61
    :cond_7
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static handleBuildSMSCommandTelephonyError(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/command/command/Command;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cmd"    # Lcom/xiaomi/finddevice/v2/command/command/Command;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    iget-object v1, p1, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string/jumbo v1, "empty from address"

    invoke-static {p0, v1}, Lmiui/cloud/finddevice/FindDeviceNotification;->notifyUserTelephonyFault(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    :cond_0
    iget v1, p1, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfromSlotId:I

    if-gez v1, :cond_1

    .line 71
    const-string/jumbo v1, "bad from slot id %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p1, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfromSlotId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {p0, v1}, Lmiui/cloud/finddevice/FindDeviceNotification;->notifyUserTelephonyFault(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_4

    .line 76
    invoke-static {}, Lmiui/telephony/CloudTelephonyManager;->getMultiSimCount()I

    move-result v1

    if-ne v1, v5, :cond_3

    const/4 v0, 0x1

    .line 78
    .local v0, "kkSingleSIMPhone":Z
    :goto_0
    iget v1, p1, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfromSubId:I

    if-gez v1, :cond_2

    if-eqz v0, :cond_5

    .line 65
    :cond_2
    :goto_1
    return-void

    .line 76
    .end local v0    # "kkSingleSIMPhone":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "kkSingleSIMPhone":Z
    goto :goto_0

    .line 75
    .end local v0    # "kkSingleSIMPhone":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "kkSingleSIMPhone":Z
    goto :goto_0

    .line 80
    :cond_5
    const-string/jumbo v1, "bad from subscription id %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p1, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfromSubId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {p0, v1}, Lmiui/cloud/finddevice/FindDeviceNotification;->notifyUserTelephonyFault(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
