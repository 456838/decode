.class public Lcom/xiaomi/finddevice/common/advancedcrypto/ACHex;
.super Ljava/lang/Object;
.source "ACHex.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string/jumbo v0, "advanced_crypto_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native bin2hex([B)Ljava/lang/String;
.end method

.method public static native hex2bin(Ljava/lang/String;)[B
.end method
