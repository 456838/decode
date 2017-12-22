.class public final Lokio/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/w;


# instance fields
.field private auj:I

.field private final auk:Lokio/r;

.field private final aul:Ljava/util/zip/Inflater;

.field private final aum:Lokio/k;

.field private final aun:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lokio/w;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lokio/a;->auj:I

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lokio/a;->aun:Ljava/util/zip/CRC32;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lokio/a;->aul:Ljava/util/zip/Inflater;

    invoke-static {p1}, Lokio/h;->aIK(Lokio/w;)Lokio/r;

    move-result-object v0

    iput-object v0, p0, Lokio/a;->auk:Lokio/r;

    new-instance v0, Lokio/k;

    iget-object v1, p0, Lokio/a;->auk:Lokio/r;

    iget-object v2, p0, Lokio/a;->aul:Ljava/util/zip/Inflater;

    invoke-direct {v0, v1, v2}, Lokio/k;-><init>(Lokio/r;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lokio/a;->aum:Lokio/k;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private aIq()V
    .locals 10

    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    const-wide/16 v2, 0xa

    invoke-interface {v0, v2, v3}, Lokio/r;->aIX(J)V

    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aIT()Lokio/i;

    move-result-object v0

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Lokio/i;->aJb(J)B

    move-result v7

    shr-int/lit8 v0, v7, 0x1

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-nez v6, :cond_1

    :goto_1
    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aJc()S

    move-result v0

    const-string/jumbo v1, "ID1ID2"

    const/16 v2, 0x1f8b

    invoke-direct {p0, v1, v2, v0}, Lokio/a;->aIt(Ljava/lang/String;II)V

    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    const-wide/16 v2, 0x8

    invoke-interface {v0, v2, v3}, Lokio/r;->skip(J)V

    shr-int/lit8 v0, v7, 0x2

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    :goto_2
    shr-int/lit8 v0, v7, 0x3

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    :goto_3
    shr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    :goto_4
    if-nez v6, :cond_b

    :goto_5
    return-void

    :cond_0
    const/4 v0, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aIT()Lokio/i;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/a;->aIs(Lokio/i;JJ)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    const-wide/16 v2, 0x2

    invoke-interface {v0, v2, v3}, Lokio/r;->aIX(J)V

    if-nez v6, :cond_3

    :goto_6
    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aIT()Lokio/i;

    move-result-object v0

    invoke-virtual {v0}, Lokio/i;->aJe()S

    move-result v8

    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    int-to-long v2, v8

    invoke-interface {v0, v2, v3}, Lokio/r;->aIX(J)V

    if-nez v6, :cond_4

    :goto_7
    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    int-to-long v2, v8

    invoke-interface {v0, v2, v3}, Lokio/r;->skip(J)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aIT()Lokio/i;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/a;->aIs(Lokio/i;JJ)V

    goto :goto_6

    :cond_4
    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aIT()Lokio/i;

    move-result-object v1

    const-wide/16 v2, 0x0

    int-to-long v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/a;->aIs(Lokio/i;JJ)V

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lokio/r;->aJE(B)J

    move-result-wide v8

    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_6
    if-nez v6, :cond_7

    :goto_8
    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    invoke-interface {v0, v2, v3}, Lokio/r;->skip(J)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aIT()Lokio/i;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/a;->aIs(Lokio/i;JJ)V

    goto :goto_8

    :cond_8
    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lokio/r;->aJE(B)J

    move-result-wide v8

    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_9
    if-nez v6, :cond_a

    :goto_9
    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    invoke-interface {v0, v2, v3}, Lokio/r;->skip(J)V

    goto/16 :goto_4

    :cond_a
    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aIT()Lokio/i;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/a;->aIs(Lokio/i;JJ)V

    goto :goto_9

    :cond_b
    const-string/jumbo v0, "FHCRC"

    iget-object v1, p0, Lokio/a;->auk:Lokio/r;

    invoke-interface {v1}, Lokio/r;->aJe()S

    move-result v1

    iget-object v2, p0, Lokio/a;->aun:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-direct {p0, v0, v1, v2}, Lokio/a;->aIt(Ljava/lang/String;II)V

    iget-object v0, p0, Lokio/a;->aun:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    goto/16 :goto_5
.end method

.method private aIr()V
    .locals 4

    const-string/jumbo v0, "CRC"

    iget-object v1, p0, Lokio/a;->auk:Lokio/r;

    invoke-interface {v1}, Lokio/r;->aJf()I

    move-result v1

    iget-object v2, p0, Lokio/a;->aun:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lokio/a;->aIt(Ljava/lang/String;II)V

    const-string/jumbo v0, "ISIZE"

    iget-object v1, p0, Lokio/a;->auk:Lokio/r;

    invoke-interface {v1}, Lokio/r;->aJf()I

    move-result v1

    iget-object v2, p0, Lokio/a;->aul:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lokio/a;->aIt(Ljava/lang/String;II)V

    return-void
.end method

.method private aIs(Lokio/i;JJ)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lokio/i;->aux:Lokio/n;

    :goto_0
    iget v3, v0, Lokio/n;->limit:I

    iget v6, v0, Lokio/n;->pos:I

    sub-int/2addr v3, v6

    int-to-long v6, v3

    cmp-long v3, p2, v6

    if-gez v3, :cond_0

    move v3, v1

    :goto_1
    if-nez v3, :cond_1

    iget v3, v0, Lokio/n;->limit:I

    iget v6, v0, Lokio/n;->pos:I

    sub-int/2addr v3, v6

    int-to-long v6, v3

    sub-long/2addr p2, v6

    iget-object v0, v0, Lokio/n;->auG:Lokio/n;

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_2
    cmp-long v0, p4, v4

    if-gtz v0, :cond_2

    move v0, v1

    :goto_3
    if-nez v0, :cond_3

    iget v0, v3, Lokio/n;->pos:I

    int-to-long v6, v0

    add-long/2addr v6, p2

    long-to-int v0, v6

    iget v6, v3, Lokio/n;->limit:I

    sub-int/2addr v6, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lokio/a;->aun:Ljava/util/zip/CRC32;

    iget-object v8, v3, Lokio/n;->data:[B

    invoke-virtual {v7, v8, v0, v6}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v6, v6

    sub-long/2addr p4, v6

    iget-object v0, v3, Lokio/n;->auG:Lokio/n;

    move-object v3, v0

    move-wide p2, v4

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    return-void
.end method

.method private aIt(Ljava/lang/String;II)V
    .locals 5

    if-ne p3, p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "%s: actual 0x%08x != expected 0x%08x"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lokio/a;->aum:Lokio/k;

    invoke-virtual {v0}, Lokio/k;->close()V

    return-void
.end method

.method public read(Lokio/i;J)J
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v6, 0x2

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    cmp-long v2, p2, v4

    if-ltz v2, :cond_0

    move v0, v1

    :cond_0
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

    :cond_1
    cmp-long v0, p2, v4

    if-nez v0, :cond_2

    return-wide v4

    :cond_2
    iget v0, p0, Lokio/a;->auj:I

    if-eqz v0, :cond_4

    :goto_0
    iget v0, p0, Lokio/a;->auj:I

    if-eq v0, v1, :cond_5

    :goto_1
    iget v0, p0, Lokio/a;->auj:I

    if-eq v0, v6, :cond_7

    :cond_3
    return-wide v8

    :cond_4
    invoke-direct {p0}, Lokio/a;->aIq()V

    iput v1, p0, Lokio/a;->auj:I

    goto :goto_0

    :cond_5
    iget-wide v2, p1, Lokio/i;->size:J

    iget-object v0, p0, Lokio/a;->aum:Lokio/k;

    invoke-virtual {v0, p1, p2, p3}, Lokio/k;->read(Lokio/i;J)J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-eqz v0, :cond_6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lokio/a;->aIs(Lokio/i;JJ)V

    return-wide v4

    :cond_6
    iput v6, p0, Lokio/a;->auj:I

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lokio/a;->aIr()V

    const/4 v0, 0x3

    iput v0, p0, Lokio/a;->auj:I

    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    invoke-interface {v0}, Lokio/r;->aIW()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lokio/e;
    .locals 1

    iget-object v0, p0, Lokio/a;->auk:Lokio/r;

    invoke-interface {v0}, Lokio/r;->timeout()Lokio/e;

    move-result-object v0

    return-object v0
.end method
