.class final Lokio/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/u;


# instance fields
.field public final auC:Lokio/i;

.field public final auD:Lokio/m;

.field private closed:Z


# direct methods
.method public constructor <init>(Lokio/m;)V
    .locals 1

    new-instance v0, Lokio/i;

    invoke-direct {v0}, Lokio/i;-><init>()V

    invoke-direct {p0, p1, v0}, Lokio/l;-><init>(Lokio/m;Lokio/i;)V

    return-void
.end method

.method public constructor <init>(Lokio/m;Lokio/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p2, p0, Lokio/l;->auC:Lokio/i;

    iput-object p1, p0, Lokio/l;->auD:Lokio/m;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public aIT()Lokio/i;
    .locals 1

    iget-object v0, p0, Lokio/l;->auC:Lokio/i;

    return-object v0
.end method

.method public aIU()Lokio/u;
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lokio/l;->closed:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lokio/l;->auC:Lokio/i;

    invoke-virtual {v1}, Lokio/i;->aJa()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lokio/l;->auD:Lokio/m;

    iget-object v1, p0, Lokio/l;->auC:Lokio/i;

    invoke-interface {v0, v1, v2, v3}, Lokio/m;->write(Lokio/i;J)V

    :cond_1
    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aIV()Lokio/u;
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lokio/l;->closed:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lokio/l;->auC:Lokio/i;

    invoke-virtual {v1}, Lokio/i;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lokio/l;->auD:Lokio/m;

    iget-object v1, p0, Lokio/l;->auC:Lokio/i;

    invoke-interface {v0, v1, v2, v3}, Lokio/m;->write(Lokio/i;J)V

    :cond_1
    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aJA(I)Lokio/u;
    .locals 2

    iget-boolean v0, p0, Lokio/l;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/l;->auC:Lokio/i;

    invoke-virtual {v0, p1}, Lokio/i;->aJA(I)Lokio/i;

    invoke-virtual {p0}, Lokio/l;->aIU()Lokio/u;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aJB(J)Lokio/u;
    .locals 3

    iget-boolean v0, p0, Lokio/l;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/l;->auC:Lokio/i;

    invoke-virtual {v0, p1, p2}, Lokio/i;->aJB(J)Lokio/i;

    invoke-virtual {p0}, Lokio/l;->aIU()Lokio/u;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aJC(J)Lokio/u;
    .locals 3

    iget-boolean v0, p0, Lokio/l;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/l;->auC:Lokio/i;

    invoke-virtual {v0, p1, p2}, Lokio/i;->aJC(J)Lokio/i;

    invoke-virtual {p0}, Lokio/l;->aIU()Lokio/u;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aJr(Lokio/ByteString;)Lokio/u;
    .locals 2

    iget-boolean v0, p0, Lokio/l;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/l;->auC:Lokio/i;

    invoke-virtual {v0, p1}, Lokio/i;->aJr(Lokio/ByteString;)Lokio/i;

    invoke-virtual {p0}, Lokio/l;->aIU()Lokio/u;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aJs(Ljava/lang/String;)Lokio/u;
    .locals 2

    iget-boolean v0, p0, Lokio/l;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/l;->auC:Lokio/i;

    invoke-virtual {v0, p1}, Lokio/i;->aJs(Ljava/lang/String;)Lokio/i;

    invoke-virtual {p0}, Lokio/l;->aIU()Lokio/u;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aJx(Lokio/w;)J
    .locals 6

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lokio/l;->auC:Lokio/i;

    const-wide/16 v4, 0x800

    invoke-interface {p1, v2, v4, v5}, Lokio/w;->read(Lokio/i;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lokio/l;->aIU()Lokio/u;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-wide v0
.end method

.method public aJy(I)Lokio/u;
    .locals 2

    iget-boolean v0, p0, Lokio/l;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/l;->auC:Lokio/i;

    invoke-virtual {v0, p1}, Lokio/i;->aJy(I)Lokio/i;

    invoke-virtual {p0}, Lokio/l;->aIU()Lokio/u;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aJz(I)Lokio/u;
    .locals 2

    iget-boolean v0, p0, Lokio/l;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/l;->auC:Lokio/i;

    invoke-virtual {v0, p1}, Lokio/i;->aJz(I)Lokio/i;

    invoke-virtual {p0}, Lokio/l;->aIU()Lokio/u;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v3, p0, Lokio/l;->closed:Z

    if-nez v3, :cond_3

    :try_start_0
    iget-object v3, p0, Lokio/l;->auC:Lokio/i;

    iget-wide v4, v3, Lokio/i;->size:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    move v0, v2

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lokio/l;->auD:Lokio/m;

    iget-object v3, p0, Lokio/l;->auC:Lokio/i;

    iget-object v4, p0, Lokio/l;->auC:Lokio/i;

    iget-wide v4, v4, Lokio/i;->size:J

    invoke-interface {v0, v3, v4, v5}, Lokio/m;->write(Lokio/i;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lokio/l;->auD:Lokio/m;

    invoke-interface {v0}, Lokio/m;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lokio/l;->closed:Z

    if-nez v0, :cond_4

    :goto_2
    return-void

    :cond_3
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lokio/p;->aJR(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public flush()V
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lokio/l;->closed:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lokio/l;->auC:Lokio/i;

    iget-wide v2, v1, Lokio/i;->size:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lokio/l;->auD:Lokio/m;

    iget-object v1, p0, Lokio/l;->auC:Lokio/i;

    iget-object v2, p0, Lokio/l;->auC:Lokio/i;

    iget-wide v2, v2, Lokio/i;->size:J

    invoke-interface {v0, v1, v2, v3}, Lokio/m;->write(Lokio/i;J)V

    :cond_1
    iget-object v0, p0, Lokio/l;->auD:Lokio/m;

    invoke-interface {v0}, Lokio/m;->flush()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lokio/e;
    .locals 1

    iget-object v0, p0, Lokio/l;->auD:Lokio/m;

    invoke-interface {v0}, Lokio/m;->timeout()Lokio/e;

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

    iget-object v1, p0, Lokio/l;->auD:Lokio/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write([B)Lokio/u;
    .locals 2

    iget-boolean v0, p0, Lokio/l;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/l;->auC:Lokio/i;

    invoke-virtual {v0, p1}, Lokio/i;->write([B)Lokio/i;

    invoke-virtual {p0}, Lokio/l;->aIU()Lokio/u;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)Lokio/u;
    .locals 2

    iget-boolean v0, p0, Lokio/l;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/l;->auC:Lokio/i;

    invoke-virtual {v0, p1, p2, p3}, Lokio/i;->write([BII)Lokio/i;

    invoke-virtual {p0}, Lokio/l;->aIU()Lokio/u;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lokio/i;J)V
    .locals 2

    iget-boolean v0, p0, Lokio/l;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/l;->auC:Lokio/i;

    invoke-virtual {v0, p1, p2, p3}, Lokio/i;->write(Lokio/i;J)V

    invoke-virtual {p0}, Lokio/l;->aIU()Lokio/u;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
