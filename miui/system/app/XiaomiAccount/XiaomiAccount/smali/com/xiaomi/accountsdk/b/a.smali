.class public abstract Lcom/xiaomi/accountsdk/b/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field protected static final abp:[B

.field protected static final abq:[B

.field protected static final abr:[B

.field protected static final abs:[B

.field protected static final abt:[B

.field protected static final abu:[B

.field private static final abv:[B

.field protected static final abw:[B

.field protected static final abx:[B


# instance fields
.field private aby:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "----------------314159265358979323846"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/b/a;->abp:[B

    sget-object v0, Lcom/xiaomi/accountsdk/b/a;->abp:[B

    sput-object v0, Lcom/xiaomi/accountsdk/b/a;->abv:[B

    const-string/jumbo v0, "\r\n"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/b/a;->abu:[B

    const-string/jumbo v0, "\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/b/a;->abx:[B

    const-string/jumbo v0, "--"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/b/a;->abw:[B

    const-string/jumbo v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/b/a;->abr:[B

    const-string/jumbo v0, "Content-Type: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/b/a;->abt:[B

    const-string/jumbo v0, "; charset="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/b/a;->abq:[B

    const-string/jumbo v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/b/a;->abs:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static akM(Ljava/io/OutputStream;[Lcom/xiaomi/accountsdk/b/a;[B)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parts may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "partBoundary may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lcom/xiaomi/accountsdk/b/a;->alc([B)V

    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/b/a;->akU(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/xiaomi/accountsdk/b/a;->abw:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lcom/xiaomi/accountsdk/b/a;->abw:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lcom/xiaomi/accountsdk/b/a;->abu:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static akN([Lcom/xiaomi/accountsdk/b/a;[B)J
    .locals 8

    const-wide/16 v4, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parts may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    move-wide v2, v4

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/b/a;->alc([B)V

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/b/a;->akS()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-gez v1, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    add-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/xiaomi/accountsdk/b/a;->abw:[B

    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Lcom/xiaomi/accountsdk/b/a;->abw:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Lcom/xiaomi/accountsdk/b/a;->abu:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public abstract akO()Ljava/lang/String;
.end method

.method public abstract akP()Ljava/lang/String;
.end method

.method protected akQ()[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/b/a;->aby:[B

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/b/a;->abv:[B

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/b/a;->aby:[B

    return-object v0
.end method

.method public abstract akR()Ljava/lang/String;
.end method

.method public akS()J
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/b/a;->akT()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/b/a;->ala(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/b/a;->akX(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/b/a;->akV(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/b/a;->alb(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/b/a;->akZ(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/b/a;->akY(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/b/a;->akT()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected abstract akT()J
.end method

.method public akU(Ljava/io/OutputStream;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/b/a;->ala(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/b/a;->akX(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/b/a;->akV(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/b/a;->alb(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/b/a;->akZ(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/b/a;->akW(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/b/a;->akY(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected akV(Ljava/io/OutputStream;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/b/a;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/xiaomi/accountsdk/b/a;->abu:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v1, Lcom/xiaomi/accountsdk/b/a;->abt:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/b/a;->akO()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/xiaomi/accountsdk/b/a;->abq:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method protected abstract akW(Ljava/io/OutputStream;)V
.end method

.method protected akX(Ljava/io/OutputStream;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/b/a;->abr:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lcom/xiaomi/accountsdk/b/a;->abx:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/b/a;->akP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lcom/xiaomi/accountsdk/b/a;->abx:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected akY(Ljava/io/OutputStream;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/b/a;->abu:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected akZ(Ljava/io/OutputStream;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/b/a;->abu:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lcom/xiaomi/accountsdk/b/a;->abu:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected ala(Ljava/io/OutputStream;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/b/a;->abw:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/b/a;->akQ()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lcom/xiaomi/accountsdk/b/a;->abu:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected alb(Ljava/io/OutputStream;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/b/a;->akR()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/xiaomi/accountsdk/b/a;->abu:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v1, Lcom/xiaomi/accountsdk/b/a;->abs:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method alc([B)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/b/a;->aby:[B

    return-void
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/b/a;->akP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
