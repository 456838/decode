.class public Lcom/xiaomi/phonenum/utils/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static acS:Lcom/xiaomi/phonenum/utils/n;


# instance fields
.field private acT:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/phonenum/utils/p;->amM()Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/phonenum/utils/i;->acS:Lcom/xiaomi/phonenum/utils/n;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :goto_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/phonenum/utils/i;->acT:Ljavax/crypto/spec/SecretKeySpec;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "aes key is null"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/xiaomi/phonenum/utils/i;->acS:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v1, "AESCoder"

    const-string/jumbo v2, "aesKey is invalid"

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/phonenum/utils/n;->amC(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private amA([B)[B
    .locals 4

    :try_start_0
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0}, Lcom/xiaomi/phonenum/utils/i;->amy()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaomi/phonenum/utils/i;->acT:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;

    const-string/jumbo v2, "fail to encrypt by aescoder"

    invoke-direct {v1, p0, v2, v0}, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;-><init>(Lcom/xiaomi/phonenum/utils/i;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private amx([B)[B
    .locals 4

    :try_start_0
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0}, Lcom/xiaomi/phonenum/utils/i;->amy()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/xiaomi/phonenum/utils/i;->acT:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    const-string/jumbo v1, "no block data"

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;

    const-string/jumbo v2, "fail to decrypt by aescoder"

    invoke-direct {v1, p0, v2, v0}, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;-><init>(Lcom/xiaomi/phonenum/utils/i;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private amy()[B
    .locals 1

    const-string/jumbo v0, "0102030405060708"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public amw(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/phonenum/utils/i;->amx([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/xiaomi/phonenum/utils/i;->acS:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v1, "AESCoder"

    const-string/jumbo v2, "decrypt failed for empty data"

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/phonenum/utils/n;->amC(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;

    const-string/jumbo v2, "fail to decrypt by aescoder"

    invoke-direct {v1, p0, v2, v0}, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;-><init>(Lcom/xiaomi/phonenum/utils/i;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public amz(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/phonenum/utils/i;->amA([B)[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;

    const-string/jumbo v2, "fail to encrypt by aescoder"

    invoke-direct {v1, p0, v2, v0}, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;-><init>(Lcom/xiaomi/phonenum/utils/i;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
