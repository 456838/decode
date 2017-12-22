.class public Lcom/xiaomi/finddevice/adapter/SmsManagerAdapter;
.super Ljava/lang/Object;
.source "SmsManagerAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendSmsBySlot(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "slotId"    # I
    .param p1, "sms"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 10
    new-array v1, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "Send %s to %s by slot %s. "

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    aput-object p2, v5, v9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    .local v0, "smsManager":Lmiui/telephony/SmsManager;
    if-ltz p0, :cond_0

    .line 14
    new-array v1, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "Try SmsManager.getDefault(slotId). "

    aput-object v4, v1, v8

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 15
    invoke-static {p0}, Lmiui/telephony/SmsManager;->getDefault(I)Lmiui/telephony/SmsManager;

    move-result-object v0

    .line 17
    .end local v0    # "smsManager":Lmiui/telephony/SmsManager;
    :cond_0
    if-nez v0, :cond_1

    .line 18
    new-array v1, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "Try SmsManager.getDefault(). "

    aput-object v4, v1, v8

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lmiui/telephony/SmsManager;->getDefault()Lmiui/telephony/SmsManager;

    move-result-object v0

    .line 21
    :cond_1
    if-nez v0, :cond_2

    .line 22
    new-array v1, v9, [Ljava/lang/Object;

    const-string/jumbo v2, "Failed to get a SmsManager. "

    aput-object v2, v1, v8

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 23
    return-void

    .line 26
    :cond_2
    invoke-virtual {v0, p1}, Lmiui/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "smsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, p2

    move-object v4, v2

    move-object v5, v2

    .line 27
    invoke-virtual/range {v0 .. v5}, Lmiui/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 9
    return-void
.end method
