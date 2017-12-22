.class Lokio/B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/w;


# instance fields
.field final synthetic auU:Lokio/w;

.field final synthetic auV:Lokio/g;


# direct methods
.method constructor <init>(Lokio/g;Lokio/w;)V
    .locals 0

    iput-object p1, p0, Lokio/B;->auV:Lokio/g;

    iput-object p2, p0, Lokio/B;->auU:Lokio/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lokio/B;->auU:Lokio/w;

    invoke-interface {v0}, Lokio/w;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lokio/B;->auV:Lokio/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/g;->exit(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lokio/B;->auV:Lokio/g;

    invoke-virtual {v1, v0}, Lokio/g;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokio/B;->auV:Lokio/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/g;->exit(Z)V

    throw v0
.end method

.method public read(Lokio/i;J)J
    .locals 4

    iget-object v0, p0, Lokio/B;->auV:Lokio/g;

    invoke-virtual {v0}, Lokio/g;->enter()V

    :try_start_0
    iget-object v0, p0, Lokio/B;->auU:Lokio/w;

    invoke-interface {v0, p1, p2, p3}, Lokio/w;->read(Lokio/i;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    iget-object v2, p0, Lokio/B;->auV:Lokio/g;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lokio/g;->exit(Z)V

    return-wide v0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lokio/B;->auV:Lokio/g;

    invoke-virtual {v1, v0}, Lokio/g;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokio/B;->auV:Lokio/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/g;->exit(Z)V

    throw v0
.end method

.method public timeout()Lokio/e;
    .locals 1

    iget-object v0, p0, Lokio/B;->auV:Lokio/g;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/B;->auU:Lokio/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
