.class public final Lcom/squareup/okhttp/FormEncodingBuilder;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CONTENT_TYPE:Lcom/squareup/okhttp/MediaType;


# instance fields
.field private final content:Lokio/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/FormEncodingBuilder;->CONTENT_TYPE:Lcom/squareup/okhttp/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/i;

    invoke-direct {v0}, Lokio/i;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->content:Lokio/i;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/FormEncodingBuilder;
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->content:Lokio/i;

    invoke-virtual {v0}, Lokio/i;->size()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    move v0, v6

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->content:Lokio/i;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lokio/i;->aJy(I)Lokio/i;

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->content:Lokio/i;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p1

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Lokio/i;Ljava/lang/String;IILjava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->content:Lokio/i;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lokio/i;->aJy(I)Lokio/i;

    iget-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->content:Lokio/i;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Lokio/i;Ljava/lang/String;IILjava/lang/String;ZZ)V

    return-object p0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public addEncoded(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/FormEncodingBuilder;
    .locals 8

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->content:Lokio/i;

    invoke-virtual {v0}, Lokio/i;->size()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-gtz v0, :cond_1

    move v0, v5

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->content:Lokio/i;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lokio/i;->aJy(I)Lokio/i;

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->content:Lokio/i;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p1

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Lokio/i;Ljava/lang/String;IILjava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->content:Lokio/i;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lokio/i;->aJy(I)Lokio/i;

    iget-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->content:Lokio/i;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p2

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Lokio/i;Ljava/lang/String;IILjava/lang/String;ZZ)V

    return-object p0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public build()Lcom/squareup/okhttp/RequestBody;
    .locals 2

    sget-object v0, Lcom/squareup/okhttp/FormEncodingBuilder;->CONTENT_TYPE:Lcom/squareup/okhttp/MediaType;

    iget-object v1, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->content:Lokio/i;

    invoke-virtual {v1}, Lokio/i;->snapshot()Lokio/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Lokio/ByteString;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    return-object v0
.end method
