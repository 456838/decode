.class public Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;
.super Ljava/util/LinkedList;
.source "TrackManagerStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationRecordList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lcom/xiaomi/finddevice/v2/track/LocationRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method

.method public static fromJSON(Lorg/json/JSONArray;)Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;
    .locals 5
    .param p0, "array"    # Lorg/json/JSONArray;

    .prologue
    .line 115
    new-instance v2, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;

    invoke-direct {v2}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;-><init>()V

    .line 116
    .local v2, "list":Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 117
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 118
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 119
    .local v3, "o":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 120
    invoke-static {v3}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->build()Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v3    # "o":Lorg/json/JSONObject;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 107
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 108
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    .line 109
    .local v1, "r":Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 111
    .end local v1    # "r":Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    :cond_0
    return-object v0
.end method
