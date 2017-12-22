.class public Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;
.super Ljava/lang/Object;
.source "TrackManagerStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;
    }
.end annotation


# instance fields
.field public SMSTicketIssueCount:I

.field public SMSUploadTicketLastIssueTime:J

.field public locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;

.field public locationRecords:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;

.field public lostTime:J

.field public sessionId:J

.field public sessionKey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

.field public sessionUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locationRecords:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->SMSUploadTicketLastIssueTime:J

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->SMSTicketIssueCount:I

    .line 16
    return-void
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;
    .locals 11
    .param p0, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 62
    new-instance v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    invoke-direct {v4}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;-><init>()V

    .line 63
    .local v4, "status":Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;
    const-string/jumbo v5, "session_id"

    iget-wide v6, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionId:J

    invoke-virtual {p0, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionId:J

    .line 64
    const-string/jumbo v5, "session_key"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 66
    :try_start_0
    const-string/jumbo v5, "session_key_description"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 67
    .local v3, "keyDes":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 68
    new-instance v5, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    const-string/jumbo v6, "session_key"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionKey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v3    # "keyDes":Lorg/json/JSONObject;
    :goto_0
    const-string/jumbo v5, "session_user_id"

    invoke-virtual {p0, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionUserId:Ljava/lang/String;

    .line 79
    const-string/jumbo v5, "lost_time"

    iget-wide v6, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->lostTime:J

    invoke-virtual {p0, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->lostTime:J

    .line 80
    const-string/jumbo v5, "sms_gateways"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    :try_start_1
    new-instance v5, Lcom/xiaomi/finddevice/common/SMSGateways;

    const-string/jumbo v6, "sms_gateways"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/xiaomi/finddevice/common/SMSGateways;-><init>(Lorg/json/JSONObject;)V

    .line 82
    iput-object v5, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    :goto_1
    const-string/jumbo v5, "location_records"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 91
    .local v0, "arr":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 92
    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;->fromJSON(Lorg/json/JSONArray;)Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locationRecords:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;

    .line 94
    :cond_0
    const-string/jumbo v5, "sms_upload_ticket_last_issue_time"

    iget-wide v6, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->SMSUploadTicketLastIssueTime:J

    invoke-virtual {p0, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->SMSUploadTicketLastIssueTime:J

    .line 95
    const-string/jumbo v5, "sms_ticket_issue_count"

    iget v6, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->SMSTicketIssueCount:I

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->SMSTicketIssueCount:I

    .line 96
    return-object v4

    .line 70
    .end local v0    # "arr":Lorg/json/JSONArray;
    .restart local v3    # "keyDes":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    new-instance v5, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    const-string/jumbo v6, "session_key"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object v5, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionKey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
    :try_end_2
    .catch Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 72
    .end local v3    # "keyDes":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "Bad key info encountered when building sessionKey. "

    aput-object v6, v5, v9

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    .end local v1    # "e":Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
    :cond_2
    iput-object v8, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionKey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    goto :goto_0

    .line 84
    :catch_1
    move-exception v2

    .line 85
    .local v2, "e":Lorg/json/JSONException;
    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "Bad SMSGateways data. "

    aput-object v6, v5, v9

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_1

    .line 88
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3
    iput-object v8, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;

    goto :goto_1
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 40
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "session_id"

    iget-wide v4, p0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionId:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 43
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionKey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    if-eqz v2, :cond_0

    .line 44
    const-string/jumbo v2, "session_key"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionKey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->getKeyHexString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string/jumbo v2, "session_key_description"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionKey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->getKeyDescriptionJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    :cond_0
    const-string/jumbo v2, "session_user_id"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string/jumbo v2, "lost_time"

    iget-wide v4, p0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->lostTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;

    if-eqz v2, :cond_1

    .line 50
    const-string/jumbo v2, "sms_gateways"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/common/SMSGateways;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_1
    const-string/jumbo v2, "location_records"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locationRecords:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;->toJSON()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string/jumbo v2, "sms_upload_ticket_last_issue_time"

    iget-wide v4, p0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->SMSUploadTicketLastIssueTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v2, "sms_ticket_issue_count"

    iget v3, p0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->SMSTicketIssueCount:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Should not happen. "

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Total records: %s. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locationRecords:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
