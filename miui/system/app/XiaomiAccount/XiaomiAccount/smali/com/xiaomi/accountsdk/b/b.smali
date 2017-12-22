.class public Lcom/xiaomi/accountsdk/b/b;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source ""


# static fields
.field private static abz:[B


# instance fields
.field private abA:Z

.field private abB:[B

.field private abC:Lorg/apache/http/params/HttpParams;

.field protected abD:[Lcom/xiaomi/accountsdk/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/b/b;->abz:[B

    return-void
.end method

.method public constructor <init>([Lcom/xiaomi/accountsdk/b/a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/b/b;->abA:Z

    const-string/jumbo v0, "multipart/form-data"

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/b/b;->setContentType(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/accountsdk/b/b;->abD:[Lcom/xiaomi/accountsdk/b/a;

    iput-object v1, p0, Lcom/xiaomi/accountsdk/b/b;->abC:Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method private static ald()[B
    .locals 5

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/xiaomi/accountsdk/b/b;->abz:[B

    sget-object v4, Lcom/xiaomi/accountsdk/b/b;->abz:[B

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-byte v3, v3, v4

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method protected ale()[B
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/b/b;->abB:[B

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/accountsdk/b/b;->abC:Lorg/apache/http/params/HttpParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/b/b;->abC:Lorg/apache/http/params/HttpParams;

    const-string/jumbo v1, "http.method.multipart.boundary"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/b/b;->abB:[B

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/b/b;->abB:[B

    return-object v0

    :cond_2
    invoke-static {}, Lcom/xiaomi/accountsdk/b/b;->ald()[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/b/b;->abB:[B

    goto :goto_0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/b/b;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/b/b;->abA:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Content has been consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/b/b;->abA:Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/b/b;->abD:[Lcom/xiaomi/accountsdk/b/a;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/b/b;->abB:[B

    invoke-static {v0, v1, v2}, Lcom/xiaomi/accountsdk/b/a;->akM(Ljava/io/OutputStream;[Lcom/xiaomi/accountsdk/b/a;[B)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public getContentLength()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/b/b;->abD:[Lcom/xiaomi/accountsdk/b/a;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/b/b;->ale()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/b/a;->akN([Lcom/xiaomi/accountsdk/b/a;[B)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Multipart"

    const-string/jumbo v2, "An exception occurred while getting the length of the parts"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/b/b;->ale()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public isRepeatable()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/accountsdk/b/b;->abD:[Lcom/xiaomi/accountsdk/b/a;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/b/b;->abD:[Lcom/xiaomi/accountsdk/b/a;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/b/a;->isRepeatable()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/b/b;->abD:[Lcom/xiaomi/accountsdk/b/a;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/b/b;->ale()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/xiaomi/accountsdk/b/a;->akM(Ljava/io/OutputStream;[Lcom/xiaomi/accountsdk/b/a;[B)V

    return-void
.end method
