.class Lcom/loc/V;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic alG:Lcom/loc/v;


# direct methods
.method constructor <init>(Lcom/loc/v;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/V;->alG:Lcom/loc/v;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/V;->alG:Lcom/loc/v;

    invoke-static {v0}, Lcom/loc/v;->avy(Lcom/loc/v;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/V;->alG:Lcom/loc/v;

    invoke-static {v0}, Lcom/loc/v;->avz(Lcom/loc/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/loc/V;->alG:Lcom/loc/v;

    iget-object v0, v0, Lcom/loc/v;->akQ:Landroid/os/Looper;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/loc/V;->alG:Lcom/loc/v;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, v0, Lcom/loc/v;->akQ:Landroid/os/Looper;

    iget-object v0, p0, Lcom/loc/V;->alG:Lcom/loc/v;

    invoke-static {v0}, Lcom/loc/v;->avA(Lcom/loc/v;)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "ListenerThread"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_5
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method
