.class final Lokio/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/r;


# instance fields
.field public final auI:Lokio/i;

.field public final auJ:Lokio/w;

.field private closed:Z


# direct methods
.method public constructor <init>(Lokio/w;)V
    .locals 1

    new-instance v0, Lokio/i;

    invoke-direct {v0}, Lokio/i;-><init>()V

    invoke-direct {p0, p1, v0}, Lokio/o;-><init>(Lokio/w;Lokio/i;)V

    return-void
.end method

.method public constructor <init>(Lokio/w;Lokio/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p2, p0, Lokio/o;->auI:Lokio/i;

    iput-object p1, p0, Lokio/o;->auJ:Lokio/w;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic aJO(Lokio/o;)Z
    .locals 1

    iget-boolean v0, p0, Lokio/o;->closed:Z

    return v0
.end method


# virtual methods
.method public aIT()Lokio/i;
    .locals 1

    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    return-object v0
.end method

.method public aIW()Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lokio/o;->closed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v1}, Lokio/i;->aIW()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lokio/o;->auJ:Lokio/w;

    iget-object v2, p0, Lokio/o;->auI:Lokio/i;

    const-wide/16 v4, 0x800

    invoke-interface {v1, v2, v4, v5}, Lokio/w;->read(Lokio/i;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public aIX(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lokio/o;->aJN(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public aIY()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lokio/j;

    invoke-direct {v0, p0}, Lokio/j;-><init>(Lokio/o;)V

    return-object v0
.end method

.method public aJE(B)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/o;->aJF(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public aJF(BJ)J
    .locals 8

    const-wide/16 v6, 0x800

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    iget-boolean v0, p0, Lokio/o;->closed:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    iget-wide v2, v0, Lokio/i;->size:J

    cmp-long v0, p2, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lokio/o;->auJ:Lokio/w;

    iget-object v2, p0, Lokio/o;->auI:Lokio/i;

    invoke-interface {v0, v2, v6, v7}, Lokio/w;->read(Lokio/i;J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return-wide v4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v0, p1, p2, p3}, Lokio/i;->aJF(BJ)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_4

    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    iget-wide p2, v0, Lokio/i;->size:J

    iget-object v0, p0, Lokio/o;->auJ:Lokio/w;

    iget-object v1, p0, Lokio/o;->auI:Lokio/i;

    invoke-interface {v0, v1, v6, v7}, Lokio/w;->read(Lokio/i;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    return-wide v4

    :cond_4
    return-wide v0
.end method

.method public aJN(J)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lokio/o;->closed:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    iget-wide v4, v0, Lokio/i;->size:J

    cmp-long v0, v4, p1

    if-ltz v0, :cond_4

    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    iget-object v0, p0, Lokio/o;->auJ:Lokio/w;

    iget-object v3, p0, Lokio/o;->auI:Lokio/i;

    const-wide/16 v4, 0x800

    invoke-interface {v0, v3, v4, v5}, Lokio/w;->read(Lokio/i;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    return v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    return v1
.end method

.method public aJc()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/o;->aIX(J)V

    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v0}, Lokio/i;->aJc()S

    move-result v0

    return v0
.end method

.method public aJd()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/o;->aIX(J)V

    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v0}, Lokio/i;->aJd()I

    move-result v0

    return v0
.end method

.method public aJe()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/o;->aIX(J)V

    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v0}, Lokio/i;->aJe()S

    move-result v0

    return v0
.end method

.method public aJf()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/o;->aIX(J)V

    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v0}, Lokio/i;->aJf()I

    move-result v0

    return v0
.end method

.method public aJg()J
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lokio/o;->aIX(J)V

    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lokio/o;->aJN(J)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v0}, Lokio/i;->aJg()J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v2, p0, Lokio/o;->auI:Lokio/i;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lokio/i;->aJb(J)B

    move-result v2

    const/16 v3, 0x30

    if-ge v2, v3, :cond_4

    :cond_2
    if-eqz v0, :cond_5

    :cond_3
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "Expected leading [0-9] or \'-\' character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v3, 0x39

    if-gt v2, v3, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_3

    goto :goto_1
.end method

.method public aJh()J
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lokio/o;->aIX(J)V

    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lokio/o;->aJN(J)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v0}, Lokio/i;->aJh()J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v2, p0, Lokio/o;->auI:Lokio/i;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lokio/i;->aJb(J)B

    move-result v2

    const/16 v3, 0x30

    if-ge v2, v3, :cond_5

    :cond_2
    const/16 v3, 0x61

    if-ge v2, v3, :cond_6

    :cond_3
    const/16 v3, 0x41

    if-ge v2, v3, :cond_7

    :cond_4
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "Expected leading [0-9a-fA-F] character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/16 v3, 0x39

    if-gt v2, v3, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/16 v3, 0x66

    if-gt v2, v3, :cond_3

    goto :goto_1

    :cond_7
    const/16 v3, 0x46

    if-gt v2, v3, :cond_4

    goto :goto_1
.end method

.method public aJi(J)Lokio/ByteString;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lokio/o;->aIX(J)V

    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v0, p1, p2}, Lokio/i;->aJi(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public aJm()Ljava/lang/String;
    .locals 8

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/o;->aJE(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v1, Lokio/i;

    invoke-direct {v1}, Lokio/i;-><init>()V

    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v6, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v6}, Lokio/i;->size()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lokio/i;->aIZ(Lokio/i;JJ)Lokio/i;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v3}, Lokio/i;->size()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lokio/i;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->aID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v2, v0, v1}, Lokio/i;->aJn(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aJo()[B
    .locals 2

    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    iget-object v1, p0, Lokio/o;->auJ:Lokio/w;

    invoke-virtual {v0, v1}, Lokio/i;->aJx(Lokio/w;)J

    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v0}, Lokio/i;->aJo()[B

    move-result-object v0

    return-object v0
.end method

.method public aJp(J)[B
    .locals 1

    invoke-virtual {p0, p1, p2}, Lokio/o;->aIX(J)V

    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v0, p1, p2}, Lokio/i;->aJp(J)[B

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lokio/o;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/o;->closed:Z

    iget-object v0, p0, Lokio/o;->auJ:Lokio/w;

    invoke-interface {v0}, Lokio/w;->close()V

    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v0}, Lokio/i;->clear()V

    return-void

    :cond_0
    return-void
.end method

.method public read(Lokio/i;J)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_2

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
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lokio/o;->closed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    iget-wide v0, v0, Lokio/i;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lokio/o;->auJ:Lokio/w;

    iget-object v1, p0, Lokio/o;->auI:Lokio/i;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lokio/w;->read(Lokio/i;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    return-wide v4

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    iget-wide v0, v0, Lokio/i;->size:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v2, p1, v0, v1}, Lokio/i;->read(Lokio/i;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/o;->aIX(J)V

    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v0}, Lokio/i;->readByte()B

    move-result v0

    return v0
.end method

.method public skip(J)V
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lokio/o;->closed:Z

    if-nez v0, :cond_0

    :goto_0
    cmp-long v0, p1, v6

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    iget-wide v2, v0, Lokio/i;->size:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lokio/o;->auJ:Lokio/w;

    iget-object v2, p0, Lokio/o;->auI:Lokio/i;

    const-wide/16 v4, 0x800

    invoke-interface {v0, v2, v4, v5}, Lokio/w;->read(Lokio/i;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v0}, Lokio/i;->size()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v0, p0, Lokio/o;->auI:Lokio/i;

    invoke-virtual {v0, v2, v3}, Lokio/i;->skip(J)V

    sub-long/2addr p1, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method public timeout()Lokio/e;
    .locals 1

    iget-object v0, p0, Lokio/o;->auJ:Lokio/w;

    invoke-interface {v0}, Lokio/w;->timeout()Lokio/e;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/o;->auJ:Lokio/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
