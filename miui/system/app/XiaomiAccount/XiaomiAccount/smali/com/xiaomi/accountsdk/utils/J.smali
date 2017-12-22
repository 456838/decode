.class public Lcom/xiaomi/accountsdk/utils/J;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aab:Ljava/lang/String;

.field private aac:Ljava/lang/String;

.field private aad:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajm(Ljava/lang/String;)Lcom/xiaomi/accountsdk/utils/J;
    .locals 3

    const-string/jumbo v0, ":"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/utils/AESStringDef$InvalidAESDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid encrypt string format,the correct format is version:iv:content but original string is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/utils/AESStringDef$InvalidAESDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/xiaomi/accountsdk/utils/J;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/J;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/xiaomi/accountsdk/utils/J;->aad:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/xiaomi/accountsdk/utils/J;->aab:Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/xiaomi/accountsdk/utils/J;->aac:Ljava/lang/String;

    return-object v1
.end method

.method public static ajp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/utils/J;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/utils/AESStringDef$InvalidAESDataException;

    const-string/jumbo v1, "invalid AES data"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/utils/AESStringDef$InvalidAESDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/xiaomi/accountsdk/utils/J;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/J;-><init>()V

    iput-object p0, v0, Lcom/xiaomi/accountsdk/utils/J;->aad:Ljava/lang/String;

    iput-object p1, v0, Lcom/xiaomi/accountsdk/utils/J;->aab:Ljava/lang/String;

    iput-object p2, v0, Lcom/xiaomi/accountsdk/utils/J;->aac:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public ajn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/J;->aab:Ljava/lang/String;

    return-object v0
.end method

.method public ajo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/J;->aac:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/J;->aad:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "%s:%s:%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/utils/J;->aad:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/utils/J;->aab:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/utils/J;->aac:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
