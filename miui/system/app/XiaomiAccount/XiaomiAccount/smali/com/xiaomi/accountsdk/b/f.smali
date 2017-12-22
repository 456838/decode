.class public Lcom/xiaomi/accountsdk/b/f;
.super Lcom/xiaomi/accountsdk/b/c;
.source ""


# static fields
.field private static final abI:[B


# instance fields
.field private abJ:Lcom/xiaomi/accountsdk/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "; filename="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/b/f;->abI:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/accountsdk/b/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaomi/accountsdk/b/f;-><init>(Ljava/lang/String;Lcom/xiaomi/accountsdk/b/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/accountsdk/b/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p3, :cond_0

    const-string/jumbo p3, "application/octet-stream"

    :cond_0
    if-nez p4, :cond_1

    const-string/jumbo p4, "ISO-8859-1"

    :cond_1
    const-string/jumbo v0, "binary"

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/xiaomi/accountsdk/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p2, p0, Lcom/xiaomi/accountsdk/b/f;->abJ:Lcom/xiaomi/accountsdk/b/d;

    return-void
.end method


# virtual methods
.method protected akT()J
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/b/f;->abJ:Lcom/xiaomi/accountsdk/b/d;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/b/d;->alh()J

    move-result-wide v0

    return-wide v0
.end method

.method protected akW(Ljava/io/OutputStream;)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/b/f;->akT()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/xiaomi/accountsdk/b/f;->abJ:Lcom/xiaomi/accountsdk/b/d;

    invoke-interface {v1}, Lcom/xiaomi/accountsdk/b/d;->alg()Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method protected akX(Ljava/io/OutputStream;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/accountsdk/b/c;->akX(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/b/f;->abJ:Lcom/xiaomi/accountsdk/b/d;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/b/d;->alf()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/xiaomi/accountsdk/b/f;->abI:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v1, Lcom/xiaomi/accountsdk/b/f;->abx:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lcom/xiaomi/accountsdk/b/f;->abx:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method
