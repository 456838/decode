.class final Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/FrameReader;


# instance fields
.field private final client:Z

.field private final headerBlockReader:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

.field private final source:Lokio/r;


# direct methods
.method constructor <init>(Lokio/r;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    new-instance v0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;-><init>(Lokio/r;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->client:Z

    return-void
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readGoAway(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aJd()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v1}, Lokio/r;->aJd()I

    move-result v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromSpdyGoAway(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v1, Lokio/ByteString;->aus:Lokio/ByteString;

    invoke-interface {p1, v0, v2, v1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    return-void

    :cond_0
    const-string/jumbo v0, "TYPE_GOAWAY length: %d != 8"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    const-string/jumbo v0, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readHeaders(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aJd()I

    move-result v0

    const v2, 0x7fffffff

    and-int v3, v0, v2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    add-int/lit8 v2, p3, -0x4

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v5

    const/4 v4, -0x1

    sget-object v6, Lcom/squareup/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    move-object v0, p1

    move v2, v1

    invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    return-void
.end method

.method private readPing(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p3, v2, :cond_1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v2}, Lokio/r;->aJd()I

    move-result v3

    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->client:Z

    and-int/lit8 v2, v3, 0x1

    if-eq v2, v0, :cond_2

    move v2, v1

    :goto_0
    if-eq v4, v2, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {p1, v0, v3, v1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->ping(ZII)V

    return-void

    :cond_1
    const-string/jumbo v2, "TYPE_PING length: %d != 4"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method private readRstStream(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aJd()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v1}, Lokio/r;->aJd()I

    move-result v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromSpdy3Rst(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v0, v2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void

    :cond_0
    const-string/jumbo v0, "TYPE_RST_STREAM length: %d != 8"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    const-string/jumbo v0, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readSettings(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v2}, Lokio/r;->aJd()I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    add-int/lit8 v2, v2, 0x4

    if-ne p3, v2, :cond_0

    new-instance v4, Lcom/squareup/okhttp/internal/framed/Settings;

    invoke-direct {v4}, Lcom/squareup/okhttp/internal/framed/Settings;-><init>()V

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_1

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_2

    :goto_1
    invoke-interface {p1, v0, v4}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/framed/Settings;)V

    return-void

    :cond_0
    const-string/jumbo v2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v5, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v5}, Lokio/r;->aJd()I

    move-result v5

    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v6}, Lokio/r;->aJd()I

    move-result v6

    const/high16 v7, -0x1000000

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x18

    const v8, 0xffffff

    and-int/2addr v5, v8

    invoke-virtual {v4, v5, v7, v6}, Lcom/squareup/okhttp/internal/framed/Settings;->set(III)Lcom/squareup/okhttp/internal/framed/Settings;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private readSynReply(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aJd()I

    move-result v0

    const v2, 0x7fffffff

    and-int v3, v0, v2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    add-int/lit8 v2, p3, -0x4

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v5

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    move v2, v1

    :goto_0
    const/4 v4, -0x1

    sget-object v6, Lcom/squareup/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private readSynStream(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .locals 7

    const v5, 0x7fffffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v2}, Lokio/r;->aJd()I

    move-result v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v3}, Lokio/r;->aJd()I

    move-result v4

    and-int v3, v2, v5

    and-int/2addr v4, v5

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v2}, Lokio/r;->aJc()S

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    add-int/lit8 v5, p3, -0xa

    invoke-virtual {v2, v5}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v5

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    and-int/lit8 v6, p2, 0x2

    if-nez v6, :cond_0

    move v1, v0

    :cond_0
    sget-object v6, Lcom/squareup/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    return-void

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method private readWindowUpdate(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .locals 8

    const v2, 0x7fffffff

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aJd()I

    move-result v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v1}, Lokio/r;->aJd()I

    move-result v1

    and-int/2addr v0, v2

    and-int/2addr v1, v2

    int-to-long v2, v1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-string/jumbo v0, "windowSizeIncrement was 0"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    const-string/jumbo v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-interface {p1, v0, v2, v3}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->close()V

    return-void
.end method

.method public nextFrame(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aJd()I

    move-result v3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aJd()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/high16 v0, -0x80000000

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const/high16 v5, -0x1000000

    and-int/2addr v5, v4

    ushr-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v4, v6

    if-nez v0, :cond_1

    const v0, 0x7fffffff

    and-int/2addr v0, v3

    and-int/lit8 v3, v5, 0x1

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    invoke-interface {p1, v1, v0, v3, v4}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->data(ZILokio/r;I)V

    return v2

    :catch_0
    move-exception v0

    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/high16 v0, 0x7fff0000

    and-int/2addr v0, v3

    ushr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, v3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/r;

    int-to-long v4, v4

    invoke-interface {v0, v4, v5}, Lokio/r;->skip(J)V

    return v2

    :cond_2
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "version != 3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-direct {p0, p1, v5, v4}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->readSynStream(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    return v2

    :pswitch_2
    invoke-direct {p0, p1, v5, v4}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->readSynReply(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    return v2

    :pswitch_3
    invoke-direct {p0, p1, v5, v4}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->readRstStream(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    return v2

    :pswitch_4
    invoke-direct {p0, p1, v5, v4}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->readSettings(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    return v2

    :pswitch_5
    invoke-direct {p0, p1, v5, v4}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->readPing(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    return v2

    :pswitch_6
    invoke-direct {p0, p1, v5, v4}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->readGoAway(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    return v2

    :pswitch_7
    invoke-direct {p0, p1, v5, v4}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->readHeaders(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    return v2

    :pswitch_8
    invoke-direct {p0, p1, v5, v4}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->readWindowUpdate(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    return v2

    :cond_3
    move v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 0

    return-void
.end method
