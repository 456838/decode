.class public Lcom/xiaomi/phonenum/utils/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static acI:Ljava/lang/String;

.field private static volatile acJ:Ljava/security/PublicKey;


# instance fields
.field private final acK:Ljavax/crypto/SecretKey;

.field private final acL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "-----BEGIN CERTIFICATE-----\nMIICDzCCAXigAwIBAgIEWMX4OjANBgkqhkiG9w0BAQUFADBMMQswCQYDVQQGEwJD\nTjEPMA0GA1UEChMGeGlhb21pMQ8wDQYDVQQLEwZ4aWFvbWkxGzAZBgNVBAMTEmFj\nY291bnQueGlhb21pLmNvbTAeFw0xNzAzMTMwMTM5MDZaFw0xODAzMTMwMTM5MDZa\nMEwxCzAJBgNVBAYTAkNOMQ8wDQYDVQQKEwZ4aWFvbWkxDzANBgNVBAsTBnhpYW9t\naTEbMBkGA1UEAxMSYWNjb3VudC54aWFvbWkuY29tMIGfMA0GCSqGSIb3DQEBAQUA\nA4GNADCBiQKBgQCRDQSxAwWUmA57Isfphgl7H+QHgw9qObsvZM0Xx1YeDzKYVB62\nypGPcPfxnvD0+EfpdhbsMQYeO495BPPzFk+TsFJl4aR47k9sstxrIu7AFeFbdvGg\nubcEu3y/cAk7CcFE7aqKaW7+WFJzLaPVTj6tn0IUe7lFpHXnBFkpzZMVxwIDAQAB\nMA0GCSqGSIb3DQEBBQUAA4GBAICkoEOZ9OtLeZDSQpTqzq8GfU19C/aJCD6Ex7sl\nYqqXVn/p6AozxihEyvIilM56hyaKlLzNJdxPVRYUim6nv6r+kOwE8i7yDRAfcaZD\nnbBeTATPI7E3iKXLF64gjm3Syq8Pw30Yi2azEdB9U+57GBRa0cxAU6wfhn5GSXM6\nW+j0\n-----END CERTIFICATE-----\n"

    sput-object v0, Lcom/xiaomi/phonenum/utils/d;->acI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/d;->ame()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/utils/d;->acK:Ljavax/crypto/SecretKey;

    iget-object v0, p0, Lcom/xiaomi/phonenum/utils/d;->acK:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/phonenum/utils/d;->amd()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/phonenum/utils/d;->amh(Ljava/lang/String;Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/utils/d;->acL:Ljava/lang/String;

    return-void
.end method

.method private static amd()Ljava/security/PublicKey;
    .locals 4

    sget-object v0, Lcom/xiaomi/phonenum/utils/d;->acJ:Ljava/security/PublicKey;

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lcom/xiaomi/phonenum/utils/d;->acI:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/phonenum/utils/d;->acJ:Ljava/security/PublicKey;

    sget-object v0, Lcom/xiaomi/phonenum/utils/d;->acJ:Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/phonenum/utils/d;->acJ:Ljava/security/PublicKey;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;

    invoke-direct {v1, v0}, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;

    invoke-direct {v1, v0}, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static ame()Ljavax/crypto/SecretKey;
    .locals 2

    :try_start_0
    const-string/jumbo v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;

    invoke-direct {v1, v0}, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static amf(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/xiaomi/phonenum/utils/i;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/phonenum/utils/i;-><init>([B)V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/xiaomi/phonenum/utils/i;->amz(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/phonenum/utils/AESCoder$CipherException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;

    invoke-direct {v1, v0}, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static amg(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/xiaomi/phonenum/utils/i;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/phonenum/utils/i;-><init>([B)V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/xiaomi/phonenum/utils/i;->amw(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/phonenum/utils/AESCoder$CipherException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;

    invoke-direct {v1, v0}, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static amh(Ljava/lang/String;Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "RSA/ECB/PKCS1Padding"

    invoke-static {p0, p1, v0}, Lcom/xiaomi/phonenum/utils/d;->ami(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ami(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/xiaomi/phonenum/utils/d;->amj([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;

    invoke-direct {v1, v0}, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static amj([BLjava/security/Key;Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;

    invoke-direct {v1, v0}, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;

    invoke-direct {v1, v0}, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;

    invoke-direct {v1, v0}, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;

    invoke-direct {v1, v0}, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;

    invoke-direct {v1, v0}, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public amb(Ljava/lang/String;)Lcom/xiaomi/phonenum/utils/u;
    .locals 2

    new-instance v0, Lcom/xiaomi/phonenum/utils/u;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/utils/u;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/phonenum/utils/d;->acK:Ljavax/crypto/SecretKey;

    invoke-static {p1, v1}, Lcom/xiaomi/phonenum/utils/d;->amf(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/phonenum/utils/u;->adc:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/phonenum/utils/d;->acL:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/phonenum/utils/u;->add:Ljava/lang/String;

    return-object v0
.end method

.method public amc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/utils/d;->acK:Ljavax/crypto/SecretKey;

    invoke-static {p1, v0}, Lcom/xiaomi/phonenum/utils/d;->amg(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
