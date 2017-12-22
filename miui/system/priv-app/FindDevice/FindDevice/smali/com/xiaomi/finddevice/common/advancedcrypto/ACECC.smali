.class public Lcom/xiaomi/finddevice/common/advancedcrypto/ACECC;
.super Ljava/lang/Object;
.source "ACECC.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string/jumbo v0, "advanced_crypto_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ecdsaSign([BLcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "key"    # Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;

    .prologue
    const/4 v3, 0x0

    .line 11
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "data == null || key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCPrivateKey;->getEncoded()[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECC;->ecdsaSignNative([B[B)[B

    move-result-object v0

    .line 16
    .local v0, "signatrue":[B
    if-nez v0, :cond_2

    .line 17
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Failed to sign. "

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 18
    new-array v0, v3, [B

    .line 20
    :cond_2
    return-object v0
.end method

.method private static native ecdsaSignNative([B[B)[B
.end method
