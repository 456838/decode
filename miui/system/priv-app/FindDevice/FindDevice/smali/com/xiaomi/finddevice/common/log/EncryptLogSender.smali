.class public Lcom/xiaomi/finddevice/common/log/EncryptLogSender;
.super Ljava/lang/Object;
.source "EncryptLogSender.java"

# interfaces
.implements Lmiui/cloud/common/XLogger$LogSender;


# static fields
.field private static final SYM_ENCRYPT_ALGORITHM_IV:[B


# instance fields
.field private mEncryptedSecrectKey:Ljava/lang/String;

.field private mSecretKey:Ljavax/crypto/SecretKey;

.field private mWrappedLogSender:Lmiui/cloud/common/XLogger$LogSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "\u0000\u0000\u0000\u0000\u0000\u0000xiaomi.com"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/xiaomi/finddevice/common/log/EncryptLogSender;->SYM_ENCRYPT_ALGORITHM_IV:[B

    .line 24
    return-void
.end method

.method public constructor <init>(Lmiui/cloud/common/XLogger$LogSender;Ljava/lang/String;)V
    .locals 18
    .param p1, "wrappedLogSender"    # Lmiui/cloud/common/XLogger$LogSender;
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/finddevice/common/log/EncryptLogSender;->mWrappedLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 52
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    .line 53
    .local v9, "keyBytes":[B
    const/4 v11, 0x0

    .line 55
    .local v11, "kf":Ljava/security/KeyFactory;
    :try_start_0
    const-string/jumbo v13, "RSA"

    invoke-static {v13}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 60
    .local v11, "kf":Ljava/security/KeyFactory;
    const/4 v12, 0x0

    .line 62
    .local v12, "publicKeyParsed":Ljava/security/PublicKey;
    :try_start_1
    new-instance v13, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v13, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v11, v13}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v12

    .line 63
    .local v12, "publicKeyParsed":Ljava/security/PublicKey;
    invoke-interface {v12}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "RSA"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 64
    new-instance v13, Ljava/lang/IllegalArgumentException;

    .line 65
    const-string/jumbo v14, "The input publicKey is not a %s public key. "

    .line 64
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    .line 65
    const-string/jumbo v16, "RSA"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    .line 64
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    .end local v12    # "publicKeyParsed":Ljava/security/PublicKey;
    :catch_0
    move-exception v5

    .line 68
    .local v5, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "The input publicKey is not valid. "

    invoke-direct {v13, v14, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 56
    .end local v5    # "e":Ljava/security/spec/InvalidKeySpecException;
    .local v11, "kf":Ljava/security/KeyFactory;
    :catch_1
    move-exception v4

    .line 57
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 71
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .local v11, "kf":Ljava/security/KeyFactory;
    .restart local v12    # "publicKeyParsed":Ljava/security/PublicKey;
    :cond_0
    const/4 v10, 0x0

    .line 73
    .local v10, "keyGen":Ljavax/crypto/KeyGenerator;
    :try_start_2
    const-string/jumbo v13, "AES"

    invoke-static {v13}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    .line 77
    .local v10, "keyGen":Ljavax/crypto/KeyGenerator;
    const/16 v13, 0x100

    invoke-virtual {v10, v13}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 78
    invoke-virtual {v10}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/xiaomi/finddevice/common/log/EncryptLogSender;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 80
    const/4 v2, 0x0

    .line 82
    .local v2, "cipher":Ljavax/crypto/Cipher;
    :try_start_3
    const-string/jumbo v13, "RSA/ECB/PKCS1Padding"

    invoke-static {v13}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 83
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v13, 0x1

    invoke-virtual {v2, v13, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_3

    .line 94
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/finddevice/common/log/EncryptLogSender;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v13}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v13

    .line 95
    const/4 v14, 0x2

    .line 94
    invoke-static {v13, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v13

    .line 93
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/xiaomi/finddevice/common/log/EncryptLogSender;->mEncryptedSecrectKey:Ljava/lang/String;
    :try_end_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_6

    .line 48
    return-void

    .line 74
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .local v10, "keyGen":Ljavax/crypto/KeyGenerator;
    :catch_2
    move-exception v4

    .line 75
    .restart local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 88
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .local v10, "keyGen":Ljavax/crypto/KeyGenerator;
    :catch_3
    move-exception v3

    .line 89
    .local v3, "e":Ljava/security/InvalidKeyException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "The input publicKey is not valid. "

    invoke-direct {v13, v14, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 86
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v8

    .line 87
    .local v8, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 84
    .end local v8    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_5
    move-exception v4

    .line 85
    .restart local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 98
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_6
    move-exception v6

    .line 99
    .local v6, "e":Ljavax/crypto/BadPaddingException;
    new-instance v13, Ljava/lang/RuntimeException;

    const-string/jumbo v14, "Should never happen. "

    invoke-direct {v13, v14, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 96
    .end local v6    # "e":Ljavax/crypto/BadPaddingException;
    :catch_7
    move-exception v7

    .line 97
    .local v7, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v13, Ljava/lang/RuntimeException;

    const-string/jumbo v14, "Should never happen. "

    invoke-direct {v13, v14, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method

.method private encryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    const-string/jumbo v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 128
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :try_start_1
    iget-object v7, p0, Lcom/xiaomi/finddevice/common/log/EncryptLogSender;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 129
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v9, Lcom/xiaomi/finddevice/common/log/EncryptLogSender;->SYM_ENCRYPT_ALGORITHM_IV:[B

    invoke-direct {v8, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 128
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2

    .line 137
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 138
    const/4 v8, 0x2

    .line 137
    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v7

    return-object v7

    .line 123
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v6

    .line 124
    .local v6, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 121
    .end local v6    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_1
    move-exception v3

    .line 122
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 132
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :catch_2
    move-exception v1

    .line 133
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 130
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v2

    .line 131
    .local v2, "e":Ljava/security/InvalidKeyException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Should never happen. "

    invoke-direct {v7, v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 141
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v4

    .line 142
    .local v4, "e":Ljavax/crypto/BadPaddingException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Should never happen. "

    invoke-direct {v7, v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 139
    .end local v4    # "e":Ljavax/crypto/BadPaddingException;
    :catch_5
    move-exception v5

    .line 140
    .local v5, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Should never happen. "

    invoke-direct {v7, v8, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static getWithDefaultPublicKey(Lmiui/cloud/common/XLogger$LogSender;)Lcom/xiaomi/finddevice/common/log/EncryptLogSender;
    .locals 2
    .param p0, "wrappedLogSender"    # Lmiui/cloud/common/XLogger$LogSender;

    .prologue
    .line 40
    new-instance v0, Lcom/xiaomi/finddevice/common/log/EncryptLogSender;

    const-string/jumbo v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCV2gFH5NQcd1hRT5vRTGweHQZhYEtQgF821nVymHNaeSVSTEecTPpAP71djJlR7Fv9Hfaiy3ubkbre0VwFm7gbWkl4RXrEnTcOClXWUSb+lHfpPK0TmVoooYzL9ySVls8Y9U9PfF1RhgaEU0zjyewdYfGolgS/s9VK/TuLCP+YQwIDAQAB"

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/finddevice/common/log/EncryptLogSender;-><init>(Lmiui/cloud/common/XLogger$LogSender;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public sendLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "level"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 105
    move-object v1, p3

    .line 108
    .local v1, "encryptedMessage":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "#&^%s!!%s^&#"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/finddevice/common/log/EncryptLogSender;->mEncryptedSecrectKey:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {p0, p3}, Lcom/xiaomi/finddevice/common/log/EncryptLogSender;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/log/EncryptLogSender;->mWrappedLogSender:Lmiui/cloud/common/XLogger$LogSender;

    invoke-interface {v2, p1, p2, v1}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/log/EncryptLogSender;->mWrappedLogSender:Lmiui/cloud/common/XLogger$LogSender;

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/log/EncryptLogSender;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 111
    const-string/jumbo v4, "Failed to encrypt the message: %s. "

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 110
    const/4 v5, 0x6

    invoke-interface {v2, v5, v3, v4}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
