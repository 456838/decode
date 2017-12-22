.class public Lcom/xiaomi/finddevice/common/util/Md5;
.super Ljava/lang/Object;
.source "Md5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastMd5Digest(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "count"    # I

    .prologue
    .line 20
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/util/Md5;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "md5":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 22
    .local v0, "length":I
    if-le v0, p1, :cond_0

    .line 23
    sub-int v2, v0, p1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 25
    :cond_0
    return-object v1
.end method

.method public static getMd5Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pInput"    # Ljava/lang/String;

    .prologue
    .line 10
    :try_start_0
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 11
    .local v0, "lDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 13
    .local v2, "lHashInt":Ljava/math/BigInteger;
    const-string/jumbo v3, "%1$032X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 14
    .end local v0    # "lDigest":Ljava/security/MessageDigest;
    .end local v2    # "lHashInt":Ljava/math/BigInteger;
    :catch_0
    move-exception v1

    .line 15
    .local v1, "lException":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
