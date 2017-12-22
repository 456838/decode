.class public Lcom/xiaomi/finddevice/common/advancedcrypto/ACAsymKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "ACAsymKeyFactory.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "advanced_crypto_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method

.method public static generatePrivateKey([B)Ljava/security/PrivateKey;
    .locals 4
    .param p0, "PKCS8Bytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 75
    if-nez p0, :cond_0

    .line 76
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "PKCS8Bytes == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACAsymKeyFactory;->getPrivateKeyType([B)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v2, "ACECCPrivate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;->build([B)Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Should never reach here. "

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    .end local v0    # "e":Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException;
    :cond_1
    return-object v3
.end method

.method public static generatePublicKey([B)Ljava/security/PublicKey;
    .locals 4
    .param p0, "X509Bytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 56
    if-nez p0, :cond_0

    .line 57
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "X509Bytes == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACAsymKeyFactory;->getPublicKeyType([B)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v2, "ACDSAPublic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;->build([B)Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Should never reach here. "

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    .end local v0    # "e":Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException;
    :cond_1
    return-object v3
.end method

.method private static native getPrivateKeyType([B)Ljava/lang/String;
.end method

.method private static native getPublicKeyType([B)Ljava/lang/String;
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 34
    instance-of v1, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v2, "Support only PKCS8EncodedKeySpec"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_0
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACAsymKeyFactory;->generatePrivateKey([B)Ljava/security/PrivateKey;

    move-result-object v0

    .line 39
    .local v0, "key":Ljava/security/PrivateKey;
    if-nez v0, :cond_1

    .line 40
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v2, "Unsupported key type. "

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_1
    return-object v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 21
    instance-of v1, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v2, "Support only X509EncodedKeySpec"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_0
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACAsymKeyFactory;->generatePublicKey([B)Ljava/security/PublicKey;

    move-result-object v0

    .line 26
    .local v0, "key":Ljava/security/PublicKey;
    if-nez v0, :cond_1

    .line 27
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v2, "Unsupported key type. "

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_1
    return-object v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineGetKeySpec not supported, yet. "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineTranslateKey not supported, yet. "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
