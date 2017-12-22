.class public final Lokio/A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/m;


# instance fields
.field private final auS:Lokio/u;

.field private final auT:Ljava/util/zip/Deflater;

.field private closed:Z


# direct methods
.method public constructor <init>(Lokio/m;Ljava/util/zip/Deflater;)V
    .locals 1

    invoke-static {p1}, Lokio/h;->aIL(Lokio/m;)Lokio/u;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lokio/A;-><init>(Lokio/u;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method constructor <init>(Lokio/u;Ljava/util/zip/Deflater;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    iput-object p1, p0, Lokio/A;->auS:Lokio/u;

    iput-object p2, p0, Lokio/A;->auT:Ljava/util/zip/Deflater;

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

.method private aJY(Z)V
    .locals 7
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    iget-object v0, p0, Lokio/A;->auS:Lokio/u;

    invoke-interface {v0}, Lokio/u;->aIT()Lokio/i;

    move-result-object v1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lokio/i;->aJD(I)Lokio/n;

    move-result-object v2

    if-nez p1, :cond_1

    iget-object v0, p0, Lokio/A;->auT:Ljava/util/zip/Deflater;

    iget-object v3, v2, Lokio/n;->data:[B

    iget v4, v2, Lokio/n;->limit:I

    iget v5, v2, Lokio/n;->limit:I

    rsub-int v5, v5, 0x800

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    :goto_1
    if-gtz v0, :cond_2

    iget-object v0, p0, Lokio/A;->auT:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v2, Lokio/n;->pos:I

    iget v3, v2, Lokio/n;->limit:I

    if-eq v0, v3, :cond_3

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lokio/A;->auT:Ljava/util/zip/Deflater;

    iget-object v3, v2, Lokio/n;->data:[B

    iget v4, v2, Lokio/n;->limit:I

    iget v5, v2, Lokio/n;->limit:I

    rsub-int v5, v5, 0x800

    const/4 v6, 0x2

    invoke-virtual {v0, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    goto :goto_1

    :cond_2
    iget v3, v2, Lokio/n;->limit:I

    add-int/2addr v3, v0

    iput v3, v2, Lokio/n;->limit:I

    iget-wide v2, v1, Lokio/i;->size:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, v1, Lokio/i;->size:J

    iget-object v0, p0, Lokio/A;->auS:Lokio/u;

    invoke-interface {v0}, Lokio/u;->aIU()Lokio/u;

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lokio/n;->pop()Lokio/n;

    move-result-object v0

    iput-object v0, v1, Lokio/i;->aux:Lokio/n;

    invoke-static {v2}, Lokio/c;->aIv(Lokio/n;)V

    goto :goto_2
.end method


# virtual methods
.method aJZ()V
    .locals 1

    iget-object v0, p0, Lokio/A;->auT:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokio/A;->aJY(Z)V

    return-void
.end method

.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lokio/A;->closed:Z

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lokio/A;->aJZ()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lokio/A;->auT:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    :try_start_2
    iget-object v0, p0, Lokio/A;->auS:Lokio/u;

    invoke-interface {v0}, Lokio/u;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    :cond_1
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokio/A;->closed:Z

    if-nez v0, :cond_3

    :goto_3
    return-void

    :cond_2
    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lokio/p;->aJR(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public flush()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lokio/A;->aJY(Z)V

    iget-object v0, p0, Lokio/A;->auS:Lokio/u;

    invoke-interface {v0}, Lokio/u;->flush()V

    return-void
.end method

.method public timeout()Lokio/e;
    .locals 1

    iget-object v0, p0, Lokio/A;->auS:Lokio/u;

    invoke-interface {v0}, Lokio/u;->timeout()Lokio/e;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/A;->auS:Lokio/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/i;J)V
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    iget-wide v0, p1, Lokio/i;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/p;->checkOffsetAndCount(JJJ)V

    :goto_0
    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p1, Lokio/i;->aux:Lokio/n;

    iget v1, v0, Lokio/n;->limit:I

    iget v4, v0, Lokio/n;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    iget-object v4, p0, Lokio/A;->auT:Ljava/util/zip/Deflater;

    iget-object v5, v0, Lokio/n;->data:[B

    iget v7, v0, Lokio/n;->pos:I

    invoke-virtual {v4, v5, v7, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    invoke-direct {p0, v6}, Lokio/A;->aJY(Z)V

    iget-wide v4, p1, Lokio/i;->size:J

    int-to-long v8, v1

    sub-long/2addr v4, v8

    iput-wide v4, p1, Lokio/i;->size:J

    iget v4, v0, Lokio/n;->pos:I

    add-int/2addr v4, v1

    iput v4, v0, Lokio/n;->pos:I

    iget v4, v0, Lokio/n;->pos:I

    iget v5, v0, Lokio/n;->limit:I

    if-eq v4, v5, :cond_1

    :goto_2
    int-to-long v0, v1

    sub-long/2addr p2, v0

    goto :goto_0

    :cond_0
    move v0, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lokio/n;->pop()Lokio/n;

    move-result-object v4

    iput-object v4, p1, Lokio/i;->aux:Lokio/n;

    invoke-static {v0}, Lokio/c;->aIv(Lokio/n;)V

    goto :goto_2

    :cond_2
    return-void
.end method
