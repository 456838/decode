.class public abstract Lokio/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/m;


# instance fields
.field private final delegate:Lokio/m;


# direct methods
.method public constructor <init>(Lokio/m;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lokio/d;->delegate:Lokio/m;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lokio/d;->delegate:Lokio/m;

    invoke-interface {v0}, Lokio/m;->close()V

    return-void
.end method

.method public final delegate()Lokio/m;
    .locals 1

    iget-object v0, p0, Lokio/d;->delegate:Lokio/m;

    return-object v0
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lokio/d;->delegate:Lokio/m;

    invoke-interface {v0}, Lokio/m;->flush()V

    return-void
.end method

.method public timeout()Lokio/e;
    .locals 1

    iget-object v0, p0, Lokio/d;->delegate:Lokio/m;

    invoke-interface {v0}, Lokio/m;->timeout()Lokio/e;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/d;->delegate:Lokio/m;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/i;J)V
    .locals 2

    iget-object v0, p0, Lokio/d;->delegate:Lokio/m;

    invoke-interface {v0, p1, p2, p3}, Lokio/m;->write(Lokio/i;J)V

    return-void
.end method
