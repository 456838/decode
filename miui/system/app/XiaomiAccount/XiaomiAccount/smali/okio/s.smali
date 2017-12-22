.class public Lokio/s;
.super Lokio/e;
.source ""


# instance fields
.field private auM:Lokio/e;


# direct methods
.method public constructor <init>(Lokio/e;)V
    .locals 2

    invoke-direct {p0}, Lokio/e;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lokio/s;->auM:Lokio/e;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final aJU(Lokio/e;)Lokio/s;
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lokio/s;->auM:Lokio/e;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearDeadline()Lokio/e;
    .locals 1

    iget-object v0, p0, Lokio/s;->auM:Lokio/e;

    invoke-virtual {v0}, Lokio/e;->clearDeadline()Lokio/e;

    move-result-object v0

    return-object v0
.end method

.method public clearTimeout()Lokio/e;
    .locals 1

    iget-object v0, p0, Lokio/s;->auM:Lokio/e;

    invoke-virtual {v0}, Lokio/e;->clearTimeout()Lokio/e;

    move-result-object v0

    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 2

    iget-object v0, p0, Lokio/s;->auM:Lokio/e;

    invoke-virtual {v0}, Lokio/e;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lokio/e;
    .locals 1

    iget-object v0, p0, Lokio/s;->auM:Lokio/e;

    invoke-virtual {v0, p1, p2}, Lokio/e;->deadlineNanoTime(J)Lokio/e;

    move-result-object v0

    return-object v0
.end method

.method public final delegate()Lokio/e;
    .locals 1

    iget-object v0, p0, Lokio/s;->auM:Lokio/e;

    return-object v0
.end method

.method public hasDeadline()Z
    .locals 1

    iget-object v0, p0, Lokio/s;->auM:Lokio/e;

    invoke-virtual {v0}, Lokio/e;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public throwIfReached()V
    .locals 1

    iget-object v0, p0, Lokio/s;->auM:Lokio/e;

    invoke-virtual {v0}, Lokio/e;->throwIfReached()V

    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/e;
    .locals 1

    iget-object v0, p0, Lokio/s;->auM:Lokio/e;

    invoke-virtual {v0, p1, p2, p3}, Lokio/e;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/e;

    move-result-object v0

    return-object v0
.end method

.method public timeoutNanos()J
    .locals 2

    iget-object v0, p0, Lokio/s;->auM:Lokio/e;

    invoke-virtual {v0}, Lokio/e;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
