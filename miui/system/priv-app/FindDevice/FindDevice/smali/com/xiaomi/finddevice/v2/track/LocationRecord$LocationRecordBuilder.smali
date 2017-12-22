.class public Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
.super Ljava/lang/Object;
.source "LocationRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/track/LocationRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationRecordBuilder"
.end annotation


# instance fields
.field public accuracy:F

.field public encodedBinary:Ljava/lang/String;

.field public encodedJSON:Lorg/json/JSONObject;

.field public flags:I

.field public lati:D

.field public longi:D

.field public provider:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-wide v0, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->longi:D

    .line 80
    iput-wide v0, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->lati:D

    .line 81
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->accuracy:F

    .line 63
    return-void
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 115
    new-instance v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;-><init>()V

    .line 116
    .local v0, "recordData":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    const-string/jumbo v1, "provider"

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->provider:Ljava/lang/String;

    .line 117
    const-string/jumbo v1, "time"

    iget-wide v2, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->time:J

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->time:J

    .line 118
    const-string/jumbo v1, "longi"

    iget-wide v2, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->longi:D

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->longi:D

    .line 119
    const-string/jumbo v1, "lati"

    iget-wide v2, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->lati:D

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->lati:D

    .line 120
    const-string/jumbo v1, "acc"

    iget v2, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->accuracy:F

    float-to-double v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->accuracy:F

    .line 121
    const-string/jumbo v1, "encoded_json"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string/jumbo v1, "encoded_json"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->encodedJSON:Lorg/json/JSONObject;

    .line 126
    :goto_0
    const-string/jumbo v1, "encoded_binary"

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->encodedBinary:Ljava/lang/String;

    .line 127
    const-string/jumbo v1, "flags"

    iget v2, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->flags:I

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->flags:I

    .line 128
    return-object v0

    .line 124
    :cond_0
    iput-object v4, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->encodedJSON:Lorg/json/JSONObject;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;-><init>(Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;Lcom/xiaomi/finddevice/v2/track/LocationRecord;)V

    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 93
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "provider"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v2, "time"

    iget-wide v4, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->time:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 97
    const-string/jumbo v2, "longi"

    iget-wide v4, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->longi:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v2, "lati"

    iget-wide v4, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->lati:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v2, "acc"

    iget v3, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->accuracy:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v2, "encoded_json"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->encodedJSON:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v2, "encoded_binary"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->encodedBinary:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v2, "flags"

    iget v3, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->flags:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Should not happen. "

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
