.class public Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSA;
.super Ljava/lang/Object;
.source "ACDSA.java"


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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dsaVerify([B[BLcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;)Z
    .locals 4
    .param p0, "data"    # [B
    .param p1, "signature"    # [B
    .param p2, "key"    # Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 12
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 13
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "data == null || signature == null || key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_1
    if-eqz p2, :cond_0

    .line 16
    new-array v0, v2, [Z

    aput-boolean v3, v0, v3

    .line 17
    .local v0, "rst":[Z
    invoke-virtual {p2}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAPublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {p0, p1, v1, v0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSA;->dsaVerifyNative([B[B[B[Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 18
    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "Failed to verify. "

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 19
    return v3

    .line 22
    :cond_2
    aget-boolean v1, v0, v3

    return v1
.end method

.method private static native dsaVerifyNative([B[B[B[Z)Z
.end method
