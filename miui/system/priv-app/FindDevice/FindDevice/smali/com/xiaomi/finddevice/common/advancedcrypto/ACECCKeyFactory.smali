.class public Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "ACECCKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
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
    .line 20
    instance-of v1, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v2, "Support only PKCS8EncodedKeySpec. "

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_0
    :try_start_0
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;->build([B)Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 2
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineGeneratePublic not supported, yet. "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 33
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
    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineTranslateKey not supported, yet. "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
