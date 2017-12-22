.class Lcom/loc/aU;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic apj:Lcom/loc/aW;


# direct methods
.method constructor <init>(Lcom/loc/aW;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/aU;->apj:Lcom/loc/aW;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/aU;->apj:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCC(Lcom/loc/aW;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/loc/aU;->apj:Lcom/loc/aW;

    iget-boolean v0, v0, Lcom/loc/aW;->apJ:Z

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/loc/aU;->apj:Lcom/loc/aW;

    iget-boolean v0, v0, Lcom/loc/aW;->apJ:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    :goto_2
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/aU;->apj:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCD(Lcom/loc/aW;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "run"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/aU;->apj:Lcom/loc/aW;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/aW;->apJ:Z

    iget-object v0, p0, Lcom/loc/aU;->apj:Lcom/loc/aW;

    new-instance v1, Ljava/net/ServerSocket;

    const v2, 0xaaa9

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, v0, Lcom/loc/aW;->apI:Ljava/net/ServerSocket;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/loc/aU;->apj:Lcom/loc/aW;

    iget-object v1, p0, Lcom/loc/aU;->apj:Lcom/loc/aW;

    iget-object v1, v1, Lcom/loc/aW;->apI:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/aW;->apK:Ljava/net/Socket;

    iget-object v0, p0, Lcom/loc/aU;->apj:Lcom/loc/aW;

    iget-object v1, p0, Lcom/loc/aU;->apj:Lcom/loc/aW;

    iget-object v1, v1, Lcom/loc/aW;->apK:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/loc/aW;->aCE(Lcom/loc/aW;Ljava/net/Socket;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
