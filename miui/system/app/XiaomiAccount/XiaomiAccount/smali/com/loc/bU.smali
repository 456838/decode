.class Lcom/loc/bU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic arI:Lcom/loc/bB;


# direct methods
.method constructor <init>(Lcom/loc/bB;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bU;->arI:Lcom/loc/bB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/loc/bU;->arI:Lcom/loc/bB;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/bU;->arI:Lcom/loc/bB;

    invoke-static {v0}, Lcom/loc/bB;->aEc(Lcom/loc/bB;)Ljava/io/Writer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bU;->arI:Lcom/loc/bB;

    invoke-static {v0}, Lcom/loc/bB;->aEd(Lcom/loc/bB;)V

    iget-object v0, p0, Lcom/loc/bU;->arI:Lcom/loc/bB;

    invoke-static {v0}, Lcom/loc/bB;->aEe(Lcom/loc/bB;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    monitor-exit v1

    return-object v3

    :cond_0
    monitor-exit v1

    return-object v3

    :cond_1
    iget-object v0, p0, Lcom/loc/bU;->arI:Lcom/loc/bB;

    invoke-static {v0}, Lcom/loc/bB;->aEf(Lcom/loc/bB;)V

    iget-object v0, p0, Lcom/loc/bU;->arI:Lcom/loc/bB;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/loc/bB;->aEg(Lcom/loc/bB;I)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/loc/bU;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
