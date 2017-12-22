.class Lokio/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/m;


# instance fields
.field final synthetic auo:Lokio/m;

.field final synthetic aup:Lokio/g;


# direct methods
.method constructor <init>(Lokio/g;Lokio/m;)V
    .locals 0

    iput-object p1, p0, Lokio/b;->aup:Lokio/g;

    iput-object p2, p0, Lokio/b;->auo:Lokio/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lokio/b;->aup:Lokio/g;

    invoke-virtual {v0}, Lokio/g;->enter()V

    :try_start_0
    iget-object v0, p0, Lokio/b;->auo:Lokio/m;

    invoke-interface {v0}, Lokio/m;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lokio/b;->aup:Lokio/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/g;->exit(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lokio/b;->aup:Lokio/g;

    invoke-virtual {v1, v0}, Lokio/g;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokio/b;->aup:Lokio/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/g;->exit(Z)V

    throw v0
.end method

.method public flush()V
    .locals 3

    iget-object v0, p0, Lokio/b;->aup:Lokio/g;

    invoke-virtual {v0}, Lokio/g;->enter()V

    :try_start_0
    iget-object v0, p0, Lokio/b;->auo:Lokio/m;

    invoke-interface {v0}, Lokio/m;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lokio/b;->aup:Lokio/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/g;->exit(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lokio/b;->aup:Lokio/g;

    invoke-virtual {v1, v0}, Lokio/g;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokio/b;->aup:Lokio/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/g;->exit(Z)V

    throw v0
.end method

.method public timeout()Lokio/e;
    .locals 1

    iget-object v0, p0, Lokio/b;->aup:Lokio/g;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/b;->auo:Lokio/m;

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
    .locals 4

    iget-object v0, p0, Lokio/b;->aup:Lokio/g;

    invoke-virtual {v0}, Lokio/g;->enter()V

    :try_start_0
    iget-object v0, p0, Lokio/b;->auo:Lokio/m;

    invoke-interface {v0, p1, p2, p3}, Lokio/m;->write(Lokio/i;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lokio/b;->aup:Lokio/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/g;->exit(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lokio/b;->aup:Lokio/g;

    invoke-virtual {v1, v0}, Lokio/g;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokio/b;->aup:Lokio/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/g;->exit(Z)V

    throw v0
.end method
