.class public Lcom/xiaomi/finddevice/v2/command/command/LostCommand;
.super Lcom/xiaomi/finddevice/v2/command/command/LockCommand;
.source "LostCommand.java"


# instance fields
.field private mSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "skey"    # Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;-><init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)V

    .line 22
    return-void
.end method

.method private inferFineSmsGateway()Lcom/xiaomi/finddevice/common/SMSGateways;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    iget v2, p0, Lcom/xiaomi/finddevice/v2/command/command/LostCommand;->SMSfromSubId:I

    if-gez v2, :cond_0

    .line 77
    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Failed to infer a fine gateway. "

    aput-object v3, v2, v4

    const-string/jumbo v3, "SMSfromSubId < 0. "

    aput-object v3, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 78
    return-object v7

    .line 81
    :cond_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/finddevice/v2/command/command/LostCommand;->SMSfromSubId:I

    invoke-virtual {v2, v3}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "op":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Failed to infer a fine gateway. "

    aput-object v3, v2, v4

    const-string/jumbo v3, "Empty operator. "

    aput-object v3, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 84
    return-object v7

    .line 87
    :cond_1
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "opPattern":Ljava/lang/String;
    new-instance v2, Lcom/xiaomi/finddevice/common/SMSGateways;

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/command/command/LostCommand;->SMSfrom:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/xiaomi/finddevice/common/SMSGateways;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private inferSmsGateway()Lcom/xiaomi/finddevice/common/SMSGateways;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/command/LostCommand;->SMSfrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Failed to infer a gateway. "

    aput-object v2, v1, v3

    const-string/jumbo v2, "Empty SMSfrom. "

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 63
    return-object v5

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/command/LostCommand;->inferFineSmsGateway()Lcom/xiaomi/finddevice/common/SMSGateways;

    move-result-object v0

    .line 67
    .local v0, "smsGateways":Lcom/xiaomi/finddevice/common/SMSGateways;
    if-nez v0, :cond_1

    .line 68
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Failed to infer a fine gateway, build a worse one. "

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 69
    new-instance v0, Lcom/xiaomi/finddevice/common/SMSGateways;

    .end local v0    # "smsGateways":Lcom/xiaomi/finddevice/common/SMSGateways;
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/command/LostCommand;->SMSfrom:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/common/SMSGateways;-><init>(Ljava/lang/String;)V

    .line 72
    .restart local v0    # "smsGateways":Lcom/xiaomi/finddevice/common/SMSGateways;
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected onChangeFindDeviceStatus(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;)V
    .locals 8
    .param p1, "lockMsg"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;

    .prologue
    .line 45
    iget-object v7, p0, Lcom/xiaomi/finddevice/v2/command/command/LostCommand;->mSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;

    .line 48
    .local v7, "smsGateways":Lcom/xiaomi/finddevice/common/SMSGateways;
    if-nez v7, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/command/LostCommand;->inferSmsGateway()Lcom/xiaomi/finddevice/common/SMSGateways;

    move-result-object v7

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/LostCommand;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/LostCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 54
    iget-wide v2, p0, Lcom/xiaomi/finddevice/v2/command/command/LostCommand;->seq:J

    .line 55
    iget-wide v4, p0, Lcom/xiaomi/finddevice/v2/command/command/LostCommand;->timestamp:J

    .line 56
    const/4 v6, 0x1

    .line 52
    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->lostLocal(Landroid/content/Context;JJZLcom/xiaomi/finddevice/common/SMSGateways;)V

    .line 43
    return-void
.end method

.method protected onGetBinaryName()S
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x6

    return v0
.end method

.method protected onGetStringName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "lost"

    return-object v0
.end method

.method protected onInitWithPushData(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "pushData"    # Lorg/json/JSONObject;
    .param p2, "commandContent"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;->onInitWithPushData(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 33
    :try_start_0
    const-string/jumbo v3, "smsGateway"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "gatewayString":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "gatewayJSON":Lorg/json/JSONObject;
    new-instance v3, Lcom/xiaomi/finddevice/common/SMSGateways;

    invoke-direct {v3, v1}, Lcom/xiaomi/finddevice/common/SMSGateways;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Lcom/xiaomi/finddevice/v2/command/command/LostCommand;->mSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-void

    .line 36
    .end local v1    # "gatewayJSON":Lorg/json/JSONObject;
    .end local v2    # "gatewayString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    const-string/jumbo v4, "Bad smsGateway. "

    invoke-direct {v3, v4, v0}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
