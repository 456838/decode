.class public Lcom/xiaomi/finddevice/v2/track/LocationRecord;
.super Ljava/lang/Object;
.source "LocationRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    }
.end annotation


# instance fields
.field private final mData:Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;


# direct methods
.method private constructor <init>(Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;)V
    .locals 0
    .param p1, "data"    # Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->mData:Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;Lcom/xiaomi/finddevice/v2/track/LocationRecord;)V
    .locals 0
    .param p1, "data"    # Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    .prologue
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;-><init>(Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;)V

    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->mData:Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    iget v0, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->accuracy:F

    return v0
.end method

.method public getEncodedBinary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->mData:Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->encodedBinary:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->mData:Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->encodedJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->mData:Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    iget v0, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->flags:I

    return v0
.end method

.method public toBuilder()Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->mData:Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->mData:Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
