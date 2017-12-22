.class final Lcom/squareup/okhttp/internal/framed/Hpack$Writer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final out:Lokio/i;


# direct methods
.method constructor <init>(Lokio/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/Hpack$Writer;->out:Lokio/i;

    return-void
.end method


# virtual methods
.method writeByteString(Lokio/ByteString;)V
    .locals 3

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Hpack$Writer;->out:Lokio/i;

    invoke-virtual {v0, p1}, Lokio/i;->aJr(Lokio/ByteString;)Lokio/i;

    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/framed/Header;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->aIF()Lokio/ByteString;

    move-result-object v4

    # getter for: Lcom/squareup/okhttp/internal/framed/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Hpack;->access$200()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Hpack$Writer;->out:Lokio/i;

    invoke-virtual {v0, v2}, Lokio/i;->aJy(I)Lokio/i;

    invoke-virtual {p0, v4}, Lcom/squareup/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/framed/Header;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0xf

    invoke-virtual {p0, v0, v4, v2}, Lcom/squareup/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/framed/Header;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    goto :goto_1
.end method

.method writeInt(III)V
    .locals 3

    if-lt p1, p2, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Hpack$Writer;->out:Lokio/i;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Lokio/i;->aJy(I)Lokio/i;

    sub-int v0, p1, p2

    :goto_0
    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Hpack$Writer;->out:Lokio/i;

    invoke-virtual {v1, v0}, Lokio/i;->aJy(I)Lokio/i;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Hpack$Writer;->out:Lokio/i;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Lokio/i;->aJy(I)Lokio/i;

    return-void

    :cond_1
    and-int/lit8 v1, v0, 0x7f

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Hpack$Writer;->out:Lokio/i;

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, Lokio/i;->aJy(I)Lokio/i;

    ushr-int/lit8 v0, v0, 0x7

    goto :goto_0
.end method
