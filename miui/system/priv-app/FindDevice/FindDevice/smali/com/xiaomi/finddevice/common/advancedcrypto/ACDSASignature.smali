.class public Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSASignature;
.super Ljava/security/SignatureSpi;
.source "ACDSASignature.java"


# instance fields
.field private mMessageDigest:Ljava/security/MessageDigest;

.field private mPublicKey:Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineGetParameter not supported, yet. "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineInitSign not supported, yet. "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 16
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;->build(Ljava/security/PublicKey;)Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSASignature;->mPublicKey:Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineSetParameter not supported, yet. "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineSign not supported, yet. "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSASignature;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 28
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSASignature;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 36
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 3
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "Update not called. "

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    iput-object v2, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    .line 55
    throw v0

    .line 54
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSASignature;->mPublicKey:Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;

    invoke-static {v0, p1, v1}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSA;->dsaVerify([B[BLcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 56
    iput-object v2, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    .line 54
    return v0
.end method

.method protected getMessageDigest()Ljava/security/MessageDigest;
    .locals 3

    .prologue
    .line 72
    :try_start_0
    const-string/jumbo v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "No SHA-1 support. "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
