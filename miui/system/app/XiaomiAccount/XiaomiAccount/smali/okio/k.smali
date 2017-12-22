.class public final Lokio/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/w;


# instance fields
.field private final auA:Ljava/util/zip/Inflater;

.field private auB:I

.field private final auz:Lokio/r;

.field private closed:Z


# direct methods
.method constructor <init>(Lokio/r;Ljava/util/zip/Inflater;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    iput-object p1, p0, Lokio/k;->auz:Lokio/r;

    iput-object p2, p0, Lokio/k;->auA:Ljava/util/zip/Inflater;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lokio/w;Ljava/util/zip/Inflater;)V
    .locals 1

    invoke-static {p1}, Lokio/h;->aIK(Lokio/w;)Lokio/r;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lokio/k;-><init>(Lokio/r;Ljava/util/zip/Inflater;)V

    return-void
.end method

.method private aJI()V
    .locals 4

    iget v0, p0, Lokio/k;->auB:I

    if-eqz v0, :cond_0

    iget v0, p0, Lokio/k;->auB:I

    iget-object v1, p0, Lokio/k;->auA:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lokio/k;->auB:I

    sub-int/2addr v1, v0

    iput v1, p0, Lokio/k;->auB:I

    iget-object v1, p0, Lokio/k;->auz:Lokio/r;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/r;->skip(J)V

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method public aJH()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lokio/k;->auA:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lokio/k;->aJI()V

    iget-object v0, p0, Lokio/k;->auA:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lokio/k;->auz:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aIW()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lokio/k;->auz:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aIT()Lokio/i;

    move-result-object v0

    iget-object v0, v0, Lokio/i;->aux:Lokio/n;

    iget v1, v0, Lokio/n;->limit:I

    iget v2, v0, Lokio/n;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lokio/k;->auB:I

    iget-object v1, p0, Lokio/k;->auA:Ljava/util/zip/Inflater;

    iget-object v2, v0, Lokio/n;->data:[B

    iget v0, v0, Lokio/n;->pos:I

    iget v3, p0, Lokio/k;->auB:I

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    return v4

    :cond_0
    return v4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lokio/k;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/k;->auA:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/k;->closed:Z

    iget-object v0, p0, Lokio/k;->auz:Lokio/r;

    invoke-interface {v0}, Lokio/r;->close()V

    return-void

    :cond_0
    return-void
.end method

.method public read(Lokio/i;J)J
    .locals 6

    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    cmp-long v2, p2, v4

    if-ltz v2, :cond_0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lokio/k;->closed:Z

    if-nez v0, :cond_2

    cmp-long v0, p2, v4

    if-nez v0, :cond_4

    return-wide v4

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_0
    iget-object v2, p0, Lokio/k;->auA:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_5

    if-nez v0, :cond_8

    :cond_4
    invoke-virtual {p0}, Lokio/k;->aJH()Z

    move-result v0

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p1, v1}, Lokio/i;->aJD(I)Lokio/n;

    move-result-object v1

    iget-object v2, p0, Lokio/k;->auA:Ljava/util/zip/Inflater;

    iget-object v3, v1, Lokio/n;->data:[B

    iget v4, v1, Lokio/n;->limit:I

    iget v5, v1, Lokio/n;->limit:I

    rsub-int v5, v5, 0x800

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    if-gtz v2, :cond_6

    iget-object v2, p0, Lokio/k;->auA:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_5
    invoke-direct {p0}, Lokio/k;->aJI()V

    iget v0, v1, Lokio/n;->pos:I

    iget v2, v1, Lokio/n;->limit:I

    if-eq v0, v2, :cond_7

    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_6
    iget v0, v1, Lokio/n;->limit:I

    add-int/2addr v0, v2

    iput v0, v1, Lokio/n;->limit:I

    iget-wide v0, p1, Lokio/i;->size:J

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p1, Lokio/i;->size:J

    int-to-long v0, v2

    return-wide v0

    :cond_7
    invoke-virtual {v1}, Lokio/n;->pop()Lokio/n;

    move-result-object v0

    iput-object v0, p1, Lokio/i;->aux:Lokio/n;

    invoke-static {v1}, Lokio/c;->aIv(Lokio/n;)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    :try_start_2
    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "source exhausted prematurely"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public timeout()Lokio/e;
    .locals 1

    iget-object v0, p0, Lokio/k;->auz:Lokio/r;

    invoke-interface {v0}, Lokio/r;->timeout()Lokio/e;

    move-result-object v0

    return-object v0
.end method
