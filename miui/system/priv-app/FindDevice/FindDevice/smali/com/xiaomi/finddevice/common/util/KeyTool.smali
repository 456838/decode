.class public Lcom/xiaomi/finddevice/common/util/KeyTool;
.super Ljava/lang/Object;
.source "KeyTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 79
    if-nez p0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "bytes can not be null. "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACHex;->bin2hex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 69
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "hex can not be null. "

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACHex;->hex2bin(Ljava/lang/String;)[B

    move-result-object v0

    .line 72
    .local v0, "keyBytes":[B
    if-nez v0, :cond_1

    .line 73
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Bad hex string. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 75
    :cond_1
    return-object v0
.end method

.method public static hexToPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 8
    .param p0, "hex"    # Ljava/lang/String;
    .param p1, "keyType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 50
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/util/KeyTool;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 51
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 52
    return-object v6

    .line 56
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 57
    .local v3, "kf":Ljava/security/KeyFactory;
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 61
    .end local v3    # "kf":Ljava/security/KeyFactory;
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    new-array v4, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "Bad key bytes. "

    aput-object v5, v4, v7

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 63
    return-object v6

    .line 58
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v1

    .line 59
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-array v4, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "Bad key type. "

    aput-object v5, v4, v7

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 60
    return-object v6
.end method

.method public static hexToPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 8
    .param p0, "hex"    # Ljava/lang/String;
    .param p1, "keyType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 32
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/util/KeyTool;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 33
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 34
    return-object v6

    .line 38
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 39
    .local v3, "kf":Ljava/security/KeyFactory;
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 43
    .end local v3    # "kf":Ljava/security/KeyFactory;
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    new-array v4, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "Bad key bytes. "

    aput-object v5, v4, v7

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 45
    return-object v6

    .line 40
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v1

    .line 41
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-array v4, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "Bad key type. "

    aput-object v5, v4, v7

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 42
    return-object v6
.end method

.method public static isValidStandardSignature([B)Z
    .locals 4
    .param p0, "signature"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 128
    return v2

    .line 131
    :cond_0
    aget-byte v0, p0, v2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 133
    return v2

    .line 136
    :cond_1
    aget-byte v0, p0, v3

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    .line 138
    return v2

    .line 141
    :cond_2
    return v3
.end method

.method public static nakedSignatureToStandardSignature([B)[B
    .locals 13
    .param p0, "signature"    # [B

    .prologue
    const/4 v12, 0x0

    .line 86
    array-length v11, p0

    div-int/lit8 v8, v11, 0x2

    .line 88
    .local v8, "rslen":I
    invoke-static {p0, v12, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 89
    .local v6, "r":[B
    array-length v11, p0

    invoke-static {p0, v8, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 91
    .local v9, "s":[B
    const/16 v0, 0x30

    .line 92
    .local v0, "HEADER":B
    const/4 v1, 0x2

    .line 93
    .local v1, "INT_TYPE":B
    const/4 v2, 0x0

    .line 95
    .local v2, "PADDING":B
    array-length v11, v6

    int-to-byte v7, v11

    .line 96
    .local v7, "rlen":B
    array-length v11, v9

    int-to-byte v10, v11

    .line 97
    .local v10, "slen":B
    array-length v11, v6

    if-lez v11, :cond_0

    aget-byte v11, v6, v12

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_0

    add-int/lit8 v11, v7, 0x1

    int-to-byte v7, v11

    .line 98
    :cond_0
    array-length v11, v9

    if-lez v11, :cond_1

    aget-byte v11, v9, v12

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_1

    add-int/lit8 v11, v10, 0x1

    int-to-byte v10, v11

    .line 100
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 103
    .local v4, "dos":Ljava/io/DataOutputStream;
    const/16 v11, 0x30

    :try_start_0
    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 104
    add-int/lit8 v11, v7, 0x4

    add-int/2addr v11, v10

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 105
    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 106
    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 107
    array-length v11, v6

    if-le v7, v11, :cond_2

    .line 108
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 110
    :cond_2
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 111
    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 112
    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 113
    array-length v11, v9

    if-le v10, v11, :cond_3

    .line 114
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 116
    :cond_3
    invoke-virtual {v4, v9}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-static {v4}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 122
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    return-object v11

    .line 117
    :catch_0
    move-exception v5

    .line 118
    .local v5, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v11, Ljava/lang/RuntimeException;

    const-string/jumbo v12, "Never happed. "

    invoke-direct {v11, v12, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 120
    invoke-static {v4}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 119
    throw v11
.end method

.method public static privateKeyToHex(Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;

    .prologue
    .line 28
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/util/KeyTool;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static publicKeyToHex(Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/security/PublicKey;

    .prologue
    .line 24
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/util/KeyTool;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
