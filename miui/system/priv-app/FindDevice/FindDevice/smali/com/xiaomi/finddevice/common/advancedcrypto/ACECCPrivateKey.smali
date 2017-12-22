.class public Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;
.super Ljava/lang/Object;
.source "ACECCPrivateKey.java"

# interfaces
.implements Ljava/security/PrivateKey;


# instance fields
.field private mPKCS8Bytes:[B


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
    .param p1, "PKCS8Bytes"    # [B

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;->mPKCS8Bytes:[B

    .line 47
    return-void
.end method

.method public static build(Ljava/security/PrivateKey;)Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;
    .locals 2
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 38
    const-string/jumbo v0, "ACECC"

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Key algorithm is not ACECC. "

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    const-string/jumbo v0, "PKCS#8"

    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Key format is not PKCS#8. "

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;->build([B)Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static build([B)Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;
    .locals 2
    .param p0, "PKCS8Bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;->isValidPKCS8Bytes([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException;

    const-string/jumbo v1, "Bad bytes for ACECCPrivateKey. "

    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    new-instance v0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;

    invoke-direct {v0, p0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;-><init>([B)V

    return-object v0
.end method

.method private static native isValidPKCS8Bytes([B)Z
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "ACECC"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;->mPKCS8Bytes:[B

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "PKCS#8"

    return-object v0
.end method
