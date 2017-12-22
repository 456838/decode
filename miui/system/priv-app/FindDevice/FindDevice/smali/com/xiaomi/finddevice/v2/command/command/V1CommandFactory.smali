.class public abstract Lcom/xiaomi/finddevice/v2/command/command/V1CommandFactory;
.super Lcom/xiaomi/finddevice/v2/command/command/CommandFactory;
.source "V1CommandFactory.java"


# static fields
.field private static final IMPORTANT_CMD_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/finddevice/v2/command/command/Command;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1CommandFactory;->IMPORTANT_CMD_SET:Ljava/util/Set;

    .line 31
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1CommandFactory;->IMPORTANT_CMD_SET:Ljava/util/Set;

    const-class v1, Lcom/xiaomi/finddevice/v2/command/command/WipeCommand;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method protected static getSignatureKeyByType(Ljava/lang/Object;Ljava/util/Map;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .locals 5
    .param p2, "spub1"    # Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .param p3, "spub2"    # Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/finddevice/v2/command/command/Command;",
            ">;>;",
            "Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;",
            "Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;",
            ")",
            "Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;
        }
    .end annotation

    .prologue
    .local p0, "type":Ljava/lang/Object;, "TT;"
    .local p1, "cmdTypeMap":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/lang/Class<+Lcom/xiaomi/finddevice/v2/command/command/Command;>;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 98
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 99
    .local v1, "msgCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaomi/finddevice/v2/command/command/Command;>;"
    if-nez v1, :cond_0

    .line 100
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Msg type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not recognized. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-direct {v2, v3}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 105
    .local v0, "key":Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    sget-object v2, Lcom/xiaomi/finddevice/v2/command/command/V1CommandFactory;->IMPORTANT_CMD_SET:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    move-object v0, p2

    .line 107
    .local v0, "key":Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "Important command. Signed with key1. "

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 113
    :goto_0
    return-object v0

    .line 109
    .local v0, "key":Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    :cond_1
    move-object v0, p3

    .line 110
    .local v0, "key":Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "Ordinary command. Signed with key2"

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected static getSignatureVerifierByKey(Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Ljava/security/Signature;
    .locals 4
    .param p0, "key"    # Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v2, 0x0

    .line 81
    .local v2, "verifier":Ljava/security/Signature;
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->getKeyDescription()Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;

    move-result-object v3

    iget-object v3, v3, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;->signAlgorithm:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 82
    .local v2, "verifier":Ljava/security/Signature;
    invoke-virtual {v2, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-object v2

    .line 85
    .end local v2    # "verifier":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    invoke-direct {v3, v0}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 83
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v1

    .line 84
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    invoke-direct {v3, v1}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static getSignatureVerifierByType(Ljava/lang/Object;Ljava/util/Map;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Ljava/security/Signature;
    .locals 2
    .param p2, "spub1"    # Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .param p3, "spub2"    # Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/finddevice/v2/command/command/Command;",
            ">;>;",
            "Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;",
            "Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;",
            ")",
            "Ljava/security/Signature;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "type":Ljava/lang/Object;, "TT;"
    .local p1, "cmdTypeMap":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/lang/Class<+Lcom/xiaomi/finddevice/v2/command/command/Command;>;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/finddevice/v2/command/command/V1CommandFactory;->getSignatureKeyByType(Ljava/lang/Object;Ljava/util/Map;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    move-result-object v0

    .line 72
    .local v0, "key":Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/command/command/V1CommandFactory;->getSignatureVerifierByKey(Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Ljava/security/Signature;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected decodeCipherPart([BLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;[B)Ljava/io/DataInputStream;
    .locals 10
    .param p1, "cipherPartContent"    # [B
    .param p2, "skey"    # Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x0

    .line 44
    .local v1, "decryptedContent":[B
    :try_start_0
    invoke-virtual {p2}, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->getKeyDescription()Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;

    move-result-object v8

    iget-object v8, v8, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;->encryptAlgorithm:Ljava/lang/String;

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 45
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v9, 0x2

    invoke-virtual {v0, v9, p2, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 46
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    .local v1, "decryptedContent":[B
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v8

    .line 57
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .local v1, "decryptedContent":[B
    :catch_0
    move-exception v5

    .line 58
    .local v5, "e":Ljavax/crypto/BadPaddingException;
    new-instance v8, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;

    invoke-direct {v8, v5}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 55
    .end local v5    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v6

    .line 56
    .local v6, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v8, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;

    invoke-direct {v8, v6}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 53
    .end local v6    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v2

    .line 54
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v8, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;

    invoke-direct {v8, v2}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 51
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v3

    .line 52
    .local v3, "e":Ljava/security/InvalidKeyException;
    new-instance v8, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;

    invoke-direct {v8, v3}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 49
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v7

    .line 50
    .local v7, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v8, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;

    invoke-direct {v8, v7}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 47
    .end local v7    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_5
    move-exception v4

    .line 48
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v8, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;

    invoke-direct {v8, v4}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method
