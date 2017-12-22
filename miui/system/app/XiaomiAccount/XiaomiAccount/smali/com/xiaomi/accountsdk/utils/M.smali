.class public Lcom/xiaomi/accountsdk/utils/M;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/accountsdk/utils/p;


# instance fields
.field private final aaf:I

.field protected aag:Ljava/lang/String;

.field private aah:Lcom/xiaomi/accountsdk/utils/C;

.field private aai:[B

.field private aaj:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/xiaomi/accountsdk/utils/M;->aaf:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/utils/M;->aaj:J

    iput-object p1, p0, Lcom/xiaomi/accountsdk/utils/M;->aag:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/accountsdk/utils/N;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/N;-><init>(Lcom/xiaomi/accountsdk/utils/M;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/M;->aah:Lcom/xiaomi/accountsdk/utils/C;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/M;->ajz()V

    return-void
.end method

.method static synthetic ajA(Lcom/xiaomi/accountsdk/utils/M;)[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/M;->aai:[B

    return-object v0
.end method

.method private ajz()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/utils/M;->aaj:J

    return-void
.end method


# virtual methods
.method public aic(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/M;->ajy()V

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/J;->ajm(Ljava/lang/String;)Lcom/xiaomi/accountsdk/utils/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/utils/J;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/xiaomi/accountsdk/request/CipherException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "aes encrypt format version is wrong"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/CipherException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/utils/AESStringDef$InvalidAESDataException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/CipherException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/CipherException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/utils/J;->ajn()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/accountsdk/utils/M;->aai:[B

    iget-object v1, p0, Lcom/xiaomi/accountsdk/utils/M;->aah:Lcom/xiaomi/accountsdk/utils/C;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/utils/J;->ajo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/utils/C;->aic(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/utils/AESStringDef$InvalidAESDataException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method public aid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/M;->ajy()V

    const/16 v0, 0x10

    :try_start_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/M;->aai:[B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/utils/M;->aai:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/M;->aah:Lcom/xiaomi/accountsdk/utils/C;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/utils/C;->aid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/utils/M;->aai:[B

    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/J;->ajp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/utils/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/utils/J;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/utils/AESStringDef$InvalidAESDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/CipherException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/CipherException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected ajy()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/accountsdk/utils/M;->aaj:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "this method can not call concurrently"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
