.class public Lcom/xiaomi/finddevice/common/advancedcrypto/ACSha256withECDSASignature;
.super Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;
.source "ACSha256withECDSASignature.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECDSASignature;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMessageDigest()Ljava/security/MessageDigest;
    .locals 3

    .prologue
    .line 10
    :try_start_0
    const-string/jumbo v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 11
    :catch_0
    move-exception v0

    .line 12
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "No SHA-256 support. "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
