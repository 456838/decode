.class Lcom/loc/bH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aro:Landroid/content/Context;

.field final synthetic arp:Lcom/loc/O;

.field final synthetic arq:Lcom/loc/a;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/loc/a;Landroid/content/Context;Lcom/loc/O;Z)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bH;->arq:Lcom/loc/a;

    iput-object p2, p0, Lcom/loc/bH;->aro:Landroid/content/Context;

    iput-object p3, p0, Lcom/loc/bH;->arp:Lcom/loc/O;

    iput-boolean p4, p0, Lcom/loc/bH;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lcom/loc/bx;

    iget-object v2, p0, Lcom/loc/bH;->aro:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/loc/bx;-><init>(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/loc/bH;->arp:Lcom/loc/O;

    invoke-virtual {v0, v2}, Lcom/loc/bx;->aDV(Lcom/loc/O;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v0, p0, Lcom/loc/bH;->c:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    new-instance v0, Lcom/loc/i;

    iget-object v2, p0, Lcom/loc/bH;->aro:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/loc/i;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/loc/bM;

    invoke-direct {v2}, Lcom/loc/bM;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/loc/bM;->aEM(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/loc/bM;->a(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/loc/bM;->b(Z)V

    invoke-virtual {v0, v2}, Lcom/loc/i;->auj(Lcom/loc/bM;)V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, p0, Lcom/loc/bH;->arq:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->aue(Lcom/loc/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/aG;->aAk(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
.end method
