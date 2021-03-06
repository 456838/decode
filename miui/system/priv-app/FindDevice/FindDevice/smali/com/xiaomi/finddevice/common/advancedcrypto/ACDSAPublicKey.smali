.class public Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;
.super Ljava/lang/Object;
.source "ACDSAPublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private mX509Bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "advanced_crypto_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private constructor <init>([B)V
    .locals 0
    .param p1, "X509Bytes"    # [B

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;->mX509Bytes:[B

    .line 48
    return-void
.end method

.method public static build(Ljava/security/PublicKey;)Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;
    .locals 2
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 39
    const-string/jumbo v0, "ACDSA"

    invoke-interface {p0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Key algorithm is not ACDSA. "

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    const-string/jumbo v0, "X.509"

    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Key format is not X.509. "

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;->build([B)Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static build([B)Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;
    .locals 2
    .param p0, "X509Bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;->isValidX509Bytes([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException;

    const-string/jumbo v1, "Bad bytes for ACDSAPublicKey. "

    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    new-instance v0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;

    invoke-direct {v0, p0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;-><init>([B)V

    return-object v0
.end method

.method private static native isValidX509Bytes([B)Z
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "ACDSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;->mX509Bytes:[B

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "X.509"

    return-object v0
.end method
