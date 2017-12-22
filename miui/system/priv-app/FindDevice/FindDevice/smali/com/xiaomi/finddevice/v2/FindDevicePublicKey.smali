.class public Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
.super Ljava/lang/Object;
.source "FindDevicePublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;
    }
.end annotation


# instance fields
.field private mKey:Ljava/security/PublicKey;

.field private mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hexKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;

    .line 29
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;->keyType:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->constructKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "hexKey"    # Ljava/lang/String;
    .param p2, "jsonKeyDescription"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v1, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;

    invoke-direct {v1}, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;

    const-string/jumbo v2, "keyType"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;->keyType:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;

    const-string/jumbo v2, "signLength"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;->signLen:I

    .line 39
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;

    const-string/jumbo v2, "signAlgorithm"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;->signAlgorithm:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;

    iget-object v1, v1, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;->keyType:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->constructKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;

    const-string/jumbo v2, "Bad key description. "

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "hexKey"    # Ljava/lang/String;
    .param p2, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p1, p2}, Lcom/xiaomi/finddevice/common/util/KeyTool;->hexToPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->mKey:Ljava/security/PublicKey;

    .line 50
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->mKey:Ljava/security/PublicKey;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;

    const-string/jumbo v1, "Bad key type or hex. "

    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->mKey:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->mKey:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->mKey:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyDescription()Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;

    return-object v0
.end method

.method public getKeyDescriptionJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v0, "desValues":Ljava/util/Map;
    const-string/jumbo v1, "keyType"

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;

    iget-object v2, v2, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;->keyType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v1, "signLength"

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;

    iget v2, v2, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;->signLen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v1, "signAlgorithm"

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;

    iget-object v2, v2, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;->signAlgorithm:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {v0}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    return-object v1
.end method
