.class Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;
.super Ljava/lang/Object;
.source "FindDeviceStatusFactory.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/FindDeviceStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FindDeviceStatusInner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;,
        Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;
    }
.end annotation


# instance fields
.field public createdServerTime:J

.field public extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

.field public session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

.field public status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

.field public version:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    .line 74
    new-instance v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->createdServerTime:J

    .line 36
    return-void
.end method

.method public static createFromServerJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;
    .locals 11
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "fid"    # Ljava/lang/String;
    .param p2, "responseDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 195
    new-instance v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;

    invoke-direct {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;-><init>()V

    .line 198
    .local v1, "status":Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;
    :try_start_0
    const-string/jumbo v5, "status"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "statusString":Ljava/lang/String;
    invoke-static {v4}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->getFromServerMark(Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    move-result-object v5

    .line 199
    iput-object v5, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 203
    .end local v4    # "statusString":Ljava/lang/String;
    :goto_0
    iget-object v5, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    if-nez v5, :cond_0

    .line 204
    new-instance v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;

    const-string/jumbo v6, "Non or bad status supplied. "

    invoke-direct {v5, v6}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 207
    :cond_0
    const-wide/16 v2, -0x1

    .line 209
    .local v2, "statusRefreshInterval":J
    :try_start_1
    const-string/jumbo v5, "statusRefreshInterval"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    .line 213
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_1

    .line 214
    const-wide/32 v2, 0x15180

    .line 216
    :cond_1
    iget-object v5, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 217
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v2

    .line 216
    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->refreshSuggestion:J

    .line 219
    iget-object v5, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    sget-object v6, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->OPENED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    if-eq v5, v6, :cond_2

    .line 220
    iget-object v5, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    sget-object v6, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOCKED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    if-ne v5, v6, :cond_3

    .line 224
    :cond_2
    const-string/jumbo v5, "version"

    invoke-virtual {p0, v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->version:Ljava/lang/String;

    .line 226
    invoke-static {p0, v1, p2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->loadSessionInfoFromServerJSON(Lorg/json/JSONObject;Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;Ljava/util/Date;)V

    .line 229
    :try_start_2
    iget-object v5, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    const-string/jumbo v6, "userId"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->userId:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 232
    :goto_1
    iget-object v5, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    iget-object v5, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->userId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 233
    new-instance v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;

    const-string/jumbo v6, "Non or bad user id supplied. "

    invoke-direct {v5, v6}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;

    const-string/jumbo v6, "Non or bad statusRefreshInterval supplied. "

    invoke-direct {v5, v6}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 221
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    iget-object v5, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    sget-object v6, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOST:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    if-eq v5, v6, :cond_2

    .line 248
    :goto_2
    return-object v1

    .line 237
    :cond_4
    iget-object v5, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    const-string/jumbo v6, "displayId"

    invoke-virtual {p0, v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->displayId:Ljava/lang/String;

    .line 239
    iget-object v5, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    iput-object p1, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->fid:Ljava/lang/String;

    .line 241
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->createdServerTime:J

    .line 244
    iget-object v5, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    const-string/jumbo v6, "securityEmail"

    invoke-virtual {p0, v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->email:Ljava/lang/String;

    .line 245
    iget-object v5, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    const-string/jumbo v6, "securityPhone"

    invoke-virtual {p0, v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->phone:Ljava/lang/String;

    goto :goto_2

    .line 230
    :catch_1
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    goto :goto_1

    .line 201
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "statusRefreshInterval":J
    :catch_2
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    goto/16 :goto_0
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;
    .locals 13
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 252
    new-instance v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;

    invoke-direct {v4}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;-><init>()V

    .line 254
    .local v4, "status":Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;
    const-string/jumbo v5, "version"

    invoke-virtual {p0, v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->version:Ljava/lang/String;

    .line 256
    const-string/jumbo v5, "status_gte_v4.5"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    const-string/jumbo v5, "status_gte_v4.5"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->getFromServerMark(Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .line 270
    :cond_0
    :goto_0
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    const-string/jumbo v6, "session_seq"

    iget-object v7, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-wide v8, v7, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->seq:J

    invoke-virtual {p0, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->seq:J

    .line 271
    const-string/jumbo v5, "session_key"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 273
    :try_start_0
    const-string/jumbo v5, "session_key_description"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 274
    .local v2, "keyDes":Lorg/json/JSONObject;
    if-nez v2, :cond_3

    .line 275
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    new-instance v6, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    const-string/jumbo v7, "session_key"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->key:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v2    # "keyDes":Lorg/json/JSONObject;
    :goto_1
    const-string/jumbo v5, "session_pub1"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 288
    :try_start_1
    const-string/jumbo v5, "session_pub1_description"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 289
    .restart local v2    # "keyDes":Lorg/json/JSONObject;
    if-nez v2, :cond_5

    .line 290
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    new-instance v6, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    const-string/jumbo v7, "session_pub1"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->pub1:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    :try_end_1
    .catch Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    .end local v2    # "keyDes":Lorg/json/JSONObject;
    :goto_2
    const-string/jumbo v5, "session_pub2"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 303
    :try_start_2
    const-string/jumbo v5, "session_pub2_description"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 304
    .restart local v2    # "keyDes":Lorg/json/JSONObject;
    if-nez v2, :cond_7

    .line 305
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    new-instance v6, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    const-string/jumbo v7, "session_pub2"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->pub2:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    :try_end_2
    .catch Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException; {:try_start_2 .. :try_end_2} :catch_2

    .line 315
    .end local v2    # "keyDes":Lorg/json/JSONObject;
    :goto_3
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    const-string/jumbo v6, "session_expire"

    iget-object v7, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-wide v8, v7, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->expireTime:J

    invoke-virtual {p0, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->expireTime:J

    .line 316
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    const-string/jumbo v6, "session_lost_id"

    iget-object v7, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-wide v8, v7, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->lostId:J

    invoke-virtual {p0, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->lostId:J

    .line 317
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    const-string/jumbo v6, "session_lost_time"

    iget-object v7, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-wide v8, v7, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->lostTime:J

    invoke-virtual {p0, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->lostTime:J

    .line 318
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    const-string/jumbo v6, "session_locate_device"

    iget-object v7, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-boolean v7, v7, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->locateDevice:Z

    invoke-virtual {p0, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->locateDevice:Z

    .line 319
    const-string/jumbo v5, "session_locate_sms_gateways"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 321
    :try_start_3
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    .line 322
    new-instance v6, Lcom/xiaomi/finddevice/common/SMSGateways;

    const-string/jumbo v7, "session_locate_sms_gateways"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/xiaomi/finddevice/common/SMSGateways;-><init>(Lorg/json/JSONObject;)V

    .line 321
    iput-object v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 329
    :goto_4
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    const-string/jumbo v6, "session_need_verify"

    invoke-virtual {p0, v6, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->needVerify:Z

    .line 331
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    const-string/jumbo v6, "extra_refresh_suggestion"

    iget-object v7, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    iget-wide v8, v7, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->refreshSuggestion:J

    invoke-virtual {p0, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->refreshSuggestion:J

    .line 332
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    const-string/jumbo v6, "extra_masked_userid"

    invoke-virtual {p0, v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->userId:Ljava/lang/String;

    .line 333
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    const-string/jumbo v6, "extra_display_id"

    invoke-virtual {p0, v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->displayId:Ljava/lang/String;

    .line 334
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    const-string/jumbo v6, "extra_fid"

    invoke-virtual {p0, v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->fid:Ljava/lang/String;

    .line 335
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    const-string/jumbo v6, "extra_email"

    invoke-virtual {p0, v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->email:Ljava/lang/String;

    .line 336
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    const-string/jumbo v6, "extra_phone"

    invoke-virtual {p0, v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->phone:Ljava/lang/String;

    .line 338
    const-string/jumbo v5, "created_server_time"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 340
    const-string/jumbo v5, ""

    iget-wide v6, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->createdServerTime:J

    invoke-virtual {p0, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->createdServerTime:J

    .line 346
    :goto_5
    return-object v4

    .line 258
    :cond_1
    const-string/jumbo v5, "status"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 259
    const-string/jumbo v5, "status"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->getFromServerMark(Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .line 262
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    if-nez v5, :cond_0

    const-string/jumbo v5, "inactive"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 264
    sget-object v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOCKED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    iput-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    goto/16 :goto_0

    .line 267
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    iput-object v10, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    goto/16 :goto_0

    .line 277
    .restart local v2    # "keyDes":Lorg/json/JSONObject;
    :cond_3
    :try_start_4
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    new-instance v6, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    const-string/jumbo v7, "session_key"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->key:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
    :try_end_4
    .catch Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 279
    .end local v2    # "keyDes":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "Bad key info encountered when building status.session.key. "

    aput-object v6, v5, v11

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 283
    .end local v0    # "e":Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
    :cond_4
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iput-object v10, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->key:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    goto/16 :goto_1

    .line 292
    .restart local v2    # "keyDes":Lorg/json/JSONObject;
    :cond_5
    :try_start_5
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    new-instance v6, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    const-string/jumbo v7, "session_pub1"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->pub1:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    :try_end_5
    .catch Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 294
    .end local v2    # "keyDes":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 295
    .restart local v0    # "e":Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "Bad key info encountered when building status.session.pub1. "

    aput-object v6, v5, v11

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 298
    .end local v0    # "e":Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
    :cond_6
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iput-object v10, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->pub1:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    goto/16 :goto_2

    .line 307
    .restart local v2    # "keyDes":Lorg/json/JSONObject;
    :cond_7
    :try_start_6
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    new-instance v6, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    const-string/jumbo v7, "session_pub2"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object v6, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->pub2:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    :try_end_6
    .catch Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 309
    .end local v2    # "keyDes":Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    .line 310
    .restart local v0    # "e":Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "Bad key info encountered when building status.session.pub2. "

    aput-object v6, v5, v11

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 313
    .end local v0    # "e":Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
    :cond_8
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iput-object v10, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->pub2:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    goto/16 :goto_3

    .line 323
    :catch_3
    move-exception v1

    .line 324
    .local v1, "e":Lorg/json/JSONException;
    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "Bad SMSGateways data. "

    aput-object v6, v5, v11

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 327
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_9
    iget-object v5, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iput-object v10, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;

    goto/16 :goto_4

    .line 342
    :cond_a
    const-string/jumbo v5, "created_server_time"

    iget-wide v6, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->createdServerTime:J

    invoke-virtual {p0, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->createdServerTime:J

    goto/16 :goto_5
.end method

.method private static loadSessionInfoFromServerJSON(Lorg/json/JSONObject;Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;Ljava/util/Date;)V
    .locals 24
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "status"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;
    .param p2, "resonseDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;
        }
    .end annotation

    .prologue
    .line 514
    const-wide/16 v16, -0x1

    .line 515
    .local v16, "sessionSeq":J
    const/4 v13, 0x0

    .line 516
    .local v13, "sessionPKey1String":Ljava/lang/String;
    const/4 v12, 0x0

    .line 517
    .local v12, "sessionPKey1Description":Lorg/json/JSONObject;
    const/4 v15, 0x0

    .line 518
    .local v15, "sessionPKey2String":Ljava/lang/String;
    const/4 v14, 0x0

    .line 519
    .local v14, "sessionPKey2Description":Lorg/json/JSONObject;
    const/4 v11, 0x0

    .line 520
    .local v11, "sessionKeyString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 521
    .local v10, "sessionKeyDescription":Lorg/json/JSONObject;
    const-wide/16 v8, -0x1

    .line 523
    .local v8, "sessionInterval":J
    :try_start_0
    const-string/jumbo v18, "baseSeq"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 524
    const-string/jumbo v18, "skey"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 525
    .local v11, "sessionKeyString":Ljava/lang/String;
    const-string/jumbo v18, "skeyDesc"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 526
    .local v10, "sessionKeyDescription":Lorg/json/JSONObject;
    const-string/jumbo v18, "spub1"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 527
    .local v13, "sessionPKey1String":Ljava/lang/String;
    const-string/jumbo v18, "spub1Desc"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 528
    .local v12, "sessionPKey1Description":Lorg/json/JSONObject;
    const-string/jumbo v18, "spub2"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 529
    .local v15, "sessionPKey2String":Ljava/lang/String;
    const-string/jumbo v18, "spub2Desc"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 530
    .local v14, "sessionPKey2Description":Lorg/json/JSONObject;
    const-string/jumbo v18, "sessionInterval"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 536
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    move-object/from16 v18, v0

    .line 537
    new-instance v19, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    move-object/from16 v0, v19

    invoke-direct {v0, v11, v10}, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 536
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->key:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
    :try_end_1
    .catch Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 543
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    move-object/from16 v18, v0

    new-instance v19, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    move-object/from16 v0, v19

    invoke-direct {v0, v13, v12}, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->pub1:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    .line 545
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    move-object/from16 v18, v0

    new-instance v19, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    move-object/from16 v0, v19

    invoke-direct {v0, v15, v14}, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->pub2:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    :try_end_2
    .catch Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException; {:try_start_2 .. :try_end_2} :catch_2

    .line 551
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    move-object/from16 v18, v0

    move-wide/from16 v0, v16

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->seq:J

    .line 552
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    .line 553
    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v8

    .line 552
    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->expireTime:J

    .line 555
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    move-object/from16 v18, v0

    sget-object v19, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOST:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 557
    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    move-object/from16 v18, v0

    const-string/jumbo v19, "lostModeSessionId"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->lostId:J

    .line 558
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    move-object/from16 v18, v0

    const-string/jumbo v19, "lostTime"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->lostTime:J

    .line 559
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    move-object/from16 v18, v0

    const-string/jumbo v19, "locateDevice"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->locateDevice:Z

    .line 561
    const-string/jumbo v4, "smsGateway"

    .line 562
    .local v4, "KEY_SMS_GATEWAY":Ljava/lang/String;
    const-string/jumbo v18, "smsGateway"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 563
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    move-object/from16 v18, v0

    new-instance v19, Lcom/xiaomi/finddevice/common/SMSGateways;

    const-string/jumbo v20, "smsGateway"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/xiaomi/finddevice/common/SMSGateways;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 574
    .end local v4    # "KEY_SMS_GATEWAY":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v18, "cmd"

    const-string/jumbo v19, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 575
    .local v5, "cmd":Ljava/lang/String;
    const-string/jumbo v18, "password-verify"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_1

    .line 576
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->needVerify:Z

    .line 512
    :cond_1
    return-void

    .line 531
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v10    # "sessionKeyDescription":Lorg/json/JSONObject;
    .end local v11    # "sessionKeyString":Ljava/lang/String;
    .end local v12    # "sessionPKey1Description":Lorg/json/JSONObject;
    .end local v13    # "sessionPKey1String":Ljava/lang/String;
    .end local v14    # "sessionPKey2Description":Lorg/json/JSONObject;
    .end local v15    # "sessionPKey2String":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 532
    .local v7, "e":Lorg/json/JSONException;
    new-instance v18, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 538
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v10    # "sessionKeyDescription":Lorg/json/JSONObject;
    .restart local v11    # "sessionKeyString":Ljava/lang/String;
    .restart local v12    # "sessionPKey1Description":Lorg/json/JSONObject;
    .restart local v13    # "sessionPKey1String":Ljava/lang/String;
    .restart local v14    # "sessionPKey2Description":Lorg/json/JSONObject;
    .restart local v15    # "sessionPKey2String":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 539
    .local v6, "e":Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
    new-instance v18, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;

    const-string/jumbo v19, "Bad session key supplied. "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 547
    .end local v6    # "e":Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
    :catch_2
    move-exception v6

    .line 548
    .restart local v6    # "e":Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
    new-instance v18, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;

    const-string/jumbo v19, "Bad session public key supplied. "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 565
    .end local v6    # "e":Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
    .restart local v4    # "KEY_SMS_GATEWAY":Ljava/lang/String;
    :cond_2
    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 568
    .end local v4    # "KEY_SMS_GATEWAY":Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 569
    .restart local v7    # "e":Lorg/json/JSONException;
    new-instance v18, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
.end method


# virtual methods
.method public changeSessionStatusToLOCKED()V
    .locals 2

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t switch to LOCKED status. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOCKED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .line 411
    return-void
.end method

.method public changeSessionStatusToLOST(JJZLcom/xiaomi/finddevice/common/SMSGateways;)V
    .locals 3
    .param p1, "sessionId"    # J
    .param p3, "lostTime"    # J
    .param p5, "needLocateDevice"    # Z
    .param p6, "gateways"    # Lcom/xiaomi/finddevice/common/SMSGateways;

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t switch to LOST status. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iput-wide p1, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->lostId:J

    .line 426
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iput-wide p3, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->lostTime:J

    .line 427
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iput-boolean p5, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->locateDevice:Z

    .line 428
    if-eqz p6, :cond_1

    .line 430
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iput-object p6, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;

    .line 432
    :cond_1
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOST:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .line 420
    return-void
.end method

.method public changeSessionStatusToOPENED()V
    .locals 2

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t switch to OPENED status. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_0
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->OPENED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .line 403
    return-void
.end method

.method public clearNeedVerify()V
    .locals 2

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t clear need-verify. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->needVerify:Z

    .line 436
    return-void
.end method

.method public getCreatedServerTime()J
    .locals 2

    .prologue
    .line 371
    iget-wide v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->createdServerTime:J

    return-wide v0
.end method

.method public getExtraInfo()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    return-object v0
.end method

.method public getSession()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    return-object v0
.end method

.method public getStatus()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    return-object v0
.end method

.method public increaseSeq(J)V
    .locals 3
    .param p1, "newSeq"    # J

    .prologue
    .line 396
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-wide v0, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->seq:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 397
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "newSeq < session.seq"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iput-wide p1, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->seq:J

    .line 395
    return-void
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->isLockStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)Z

    move-result v0

    return v0
.end method

.method public isLost()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->isLostStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)Z

    move-result v0

    return v0
.end method

.method public isVersionMatch()Z
    .locals 2

    .prologue
    .line 376
    const-string/jumbo v0, "v4.6"

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 446
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 449
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "version"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->version:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    if-eqz v2, :cond_0

    .line 454
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    sget-object v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOST:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    if-ne v2, v3, :cond_5

    .line 455
    const-string/jumbo v2, "status"

    sget-object v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOCKED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->getServerTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    :goto_0
    const-string/jumbo v2, "status_gte_v4.5"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->getServerTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    :cond_0
    const-string/jumbo v2, "session_seq"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-wide v4, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->seq:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 464
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-object v2, v2, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->key:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    if-eqz v2, :cond_1

    .line 465
    const-string/jumbo v2, "session_key"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-object v3, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->key:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->getKeyHexString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 466
    const-string/jumbo v2, "session_key_description"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-object v3, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->key:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->getKeyDescriptionJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-object v2, v2, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->pub1:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    if-eqz v2, :cond_2

    .line 469
    const-string/jumbo v2, "session_pub1"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-object v3, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->pub1:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    invoke-static {v3}, Lcom/xiaomi/finddevice/common/util/KeyTool;->publicKeyToHex(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string/jumbo v2, "session_pub1_description"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-object v3, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->pub1:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->getKeyDescriptionJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-object v2, v2, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->pub2:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    if-eqz v2, :cond_3

    .line 473
    const-string/jumbo v2, "session_pub2"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-object v3, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->pub2:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    invoke-static {v3}, Lcom/xiaomi/finddevice/common/util/KeyTool;->publicKeyToHex(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    const-string/jumbo v2, "session_pub2_description"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-object v3, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->pub2:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->getKeyDescriptionJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    :cond_3
    const-string/jumbo v2, "session_expire"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-wide v4, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->expireTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 477
    const-string/jumbo v2, "session_lost_id"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-wide v4, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->lostId:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 478
    const-string/jumbo v2, "session_lost_time"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-wide v4, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->lostTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 479
    const-string/jumbo v2, "session_locate_device"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-boolean v3, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->locateDevice:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 480
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-object v2, v2, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;

    if-eqz v2, :cond_4

    .line 481
    const-string/jumbo v2, "session_locate_sms_gateways"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-object v3, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/common/SMSGateways;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    :cond_4
    const-string/jumbo v2, "session_need_verify"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->session:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;

    iget-boolean v3, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->needVerify:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 485
    const-string/jumbo v2, "extra_refresh_suggestion"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    iget-wide v4, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->refreshSuggestion:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 486
    const-string/jumbo v2, "extra_masked_userid"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    iget-object v3, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    const-string/jumbo v2, "extra_display_id"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    iget-object v3, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->displayId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    const-string/jumbo v2, "extra_fid"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    iget-object v3, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->fid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    const-string/jumbo v2, "extra_email"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    iget-object v3, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->email:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    const-string/jumbo v2, "extra_phone"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->extraInfo:Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;

    iget-object v3, v3, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    const-string/jumbo v2, "created_server_time"

    iget-wide v4, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->createdServerTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 494
    return-object v1

    .line 457
    :cond_5
    const-string/jumbo v2, "status"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->status:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->getServerTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Should not happen. "

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
