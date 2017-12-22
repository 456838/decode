.class public abstract Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;
.super Ljava/security/SignatureSpi;
.source "ACECDSASignature.java"


# instance fields
.field private mMessageDigest:Ljava/security/MessageDigest;

.field private mPrivateKey:Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
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
    .line 71
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
    .line 25
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;->build(Ljava/security/PrivateKey;)Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;->mPrivateKey:Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Lcom/xiaomi/finddevice/common/advancedcrypto/ACBadKeyBytesException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    .line 19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineInitVerify not supported, yet. "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineSetParameter not supported, yet. "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "Update not called. "

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    iput-object v2, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    .line 54
    throw v0

    .line 53
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;->mPrivateKey:Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECC;->ecdsaSign([BLcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 55
    iput-object v2, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    .line 53
    return-object v0
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
    .line 33
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 32
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
    .line 41
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;->mMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 40
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineVerify not supported, yet. "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getMessageDigest()Ljava/security/MessageDigest;
.end method
