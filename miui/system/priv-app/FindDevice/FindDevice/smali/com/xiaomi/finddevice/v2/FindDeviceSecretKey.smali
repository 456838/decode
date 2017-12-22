.class public Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
.super Lcom/xiaomi/finddevice/v2/FindDeviceKey;
.source "FindDeviceSecretKey.java"

# interfaces
.implements Ljavax/crypto/SecretKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;
    }
.end annotation


# instance fields
.field private mKey:Ljava/security/Key;

.field private mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;


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
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceKey;-><init>()V

    .line 28
    new-instance v0, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->constructKey(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "hexKey"    # Ljava/lang/String;
    .param p2, "jsonKeyDescription"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceKey;-><init>()V

    .line 35
    new-instance v1, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;

    invoke-direct {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;

    const-string/jumbo v2, "encryptAlgorithm"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;->encryptAlgorithm:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->constructKey(Ljava/lang/String;)V

    .line 33
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;

    const-string/jumbo v2, "Bad key description. "

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "hexKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p1}, Lcom/xiaomi/finddevice/common/util/KeyTool;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 48
    .local v0, "keyBytes":[B
    if-eqz v0, :cond_0

    .line 50
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->mKey:Ljava/security/Key;

    .line 46
    return-void

    .line 52
    :cond_0
    new-instance v1, Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;

    const-string/jumbo v2, "Bad key hex. "

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceKey$BadKeyInfoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->mKey:Ljava/security/Key;

    invoke-interface {v0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->mKey:Ljava/security/Key;

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->mKey:Ljava/security/Key;

    invoke-interface {v0}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyDescription()Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;

    return-object v0
.end method

.method public getKeyDescriptionJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v0, "desValues":Ljava/util/Map;
    const-string/jumbo v1, "encryptAlgorithm"

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->mKeyDescription:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;

    iget-object v2, v2, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;->encryptAlgorithm:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {v0}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    return-object v1
.end method

.method public getKeyHexString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->mKey:Ljava/security/Key;

    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 78
    const-string/jumbo v2, "AES"

    .line 77
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/util/KeyTool;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
