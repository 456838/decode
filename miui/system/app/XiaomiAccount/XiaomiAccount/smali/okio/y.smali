.class Lokio/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/m;


# instance fields
.field final synthetic auP:Lokio/e;

.field final synthetic auQ:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lokio/e;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lokio/y;->auP:Lokio/e;

    iput-object p2, p0, Lokio/y;->auQ:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lokio/y;->auQ:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lokio/y;->auQ:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public timeout()Lokio/e;
    .locals 1

    iget-object v0, p0, Lokio/y;->auP:Lokio/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/y;->auQ:Ljava/io/OutputStream;

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
    .locals 8

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Lokio/i;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/p;->checkOffsetAndCount(JJJ)V

    :cond_0
    :goto_0
    cmp-long v0, p2, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lokio/y;->auP:Lokio/e;

    invoke-virtual {v0}, Lokio/e;->throwIfReached()V

    iget-object v0, p1, Lokio/i;->aux:Lokio/n;

    iget v1, v0, Lokio/n;->limit:I

    iget v4, v0, Lokio/n;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    iget-object v4, p0, Lokio/y;->auQ:Ljava/io/OutputStream;

    iget-object v5, v0, Lokio/n;->data:[B

    iget v6, v0, Lokio/n;->pos:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v4, v0, Lokio/n;->pos:I

    add-int/2addr v4, v1

    iput v4, v0, Lokio/n;->pos:I

    int-to-long v4, v1

    sub-long/2addr p2, v4

    iget-wide v4, p1, Lokio/i;->size:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lokio/i;->size:J

    iget v1, v0, Lokio/n;->pos:I

    iget v4, v0, Lokio/n;->limit:I

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, Lokio/n;->pop()Lokio/n;

    move-result-object v1

    iput-object v1, p1, Lokio/i;->aux:Lokio/n;

    invoke-static {v0}, Lokio/c;->aIv(Lokio/n;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method
