.class Lcom/loc/bT;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic arH:Lcom/loc/aW;


# direct methods
.method constructor <init>(Lcom/loc/aW;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCo(Lcom/loc/aW;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-boolean v0, v0, Lcom/loc/aW;->j:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCw(Lcom/loc/aW;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/loc/aW;->aCp(Lcom/loc/aW;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/loc/aW;->aCq(Lcom/loc/aW;Z)Z

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "run part1"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "run part3"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCw(Lcom/loc/aW;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCB(Lcom/loc/aW;)V

    goto :goto_1

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-boolean v0, v0, Lcom/loc/aW;->apB:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v2, v0, Lcom/loc/aW;->apC:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCw(Lcom/loc/aW;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_2
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v0, v1

    :goto_3
    :try_start_6
    iget-object v2, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v2}, Lcom/loc/aW;->aCx(Lcom/loc/aW;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v2}, Lcom/loc/aW;->aCy(Lcom/loc/aW;)V

    iget-object v2, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v2}, Lcom/loc/aW;->aCz(Lcom/loc/aW;)V

    iget-object v2, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v2, v0}, Lcom/loc/aW;->aCA(Lcom/loc/aW;Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCn(Lcom/loc/aW;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCw(Lcom/loc/aW;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCB(Lcom/loc/aW;)V

    goto :goto_1

    :cond_3
    :try_start_8
    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCr(Lcom/loc/aW;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v2, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v4}, Lcom/loc/aW;->aCv(Lcom/loc/aW;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/loc/aW;->aCu(Lcom/loc/aW;ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v2

    iput-object v2, v0, Lcom/loc/aW;->apD:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v3, v0, Lcom/loc/aW;->apC:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->apD:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v0, :cond_9

    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/loc/aW;->apB:Z

    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->apv:Ljava/util/Vector;

    if-nez v0, :cond_a

    :cond_6
    move-object v0, v1

    :cond_7
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_3
    move-exception v0

    :try_start_b
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "run part5"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCw(Lcom/loc/aW;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCB(Lcom/loc/aW;)V

    goto/16 :goto_1

    :cond_8
    :try_start_c
    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v2, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v3, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-boolean v3, v3, Lcom/loc/aW;->apu:Z

    invoke-static {v2, v3}, Lcom/loc/aW;->aCs(Lcom/loc/aW;Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v2

    iput-object v2, v0, Lcom/loc/aW;->apD:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCt(Lcom/loc/aW;)Lcom/loc/X;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v2, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v2}, Lcom/loc/aW;->aCt(Lcom/loc/aW;)Lcom/loc/X;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v3, v3, Lcom/loc/aW;->apD:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/loc/X;->awA(Lcom/autonavi/aps/amapapi/model/AmapLoc;[Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v2

    iput-object v2, v0, Lcom/loc/aW;->apD:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_4

    :catch_4
    move-exception v0

    :try_start_d
    iget-object v2, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v3, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    const/16 v4, 0x8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/loc/aW;->aCu(Lcom/loc/aW;ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/aW;->apD:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "run part2"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v1}, Lcom/loc/aW;->aCw(Lcom/loc/aW;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_6
    throw v0

    :cond_9
    :try_start_e
    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->apD:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/loc/aW;->apE:J

    goto/16 :goto_5

    :cond_a
    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->apv:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->apv:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v2, v0

    move-object v0, v1

    :goto_7
    if-lez v2, :cond_7

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "location"

    iget-object v6, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v6, v6, Lcom/loc/aW;->apD:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput v0, v4, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->apv:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object v4, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v4, v4, Lcom/loc/aW;->apv:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_b
    :try_start_f
    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->apC:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_c
    iget-object v0, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCB(Lcom/loc/aW;)V

    goto/16 :goto_1

    :cond_d
    iget-object v1, p0, Lcom/loc/bT;->arH:Lcom/loc/aW;

    invoke-static {v1}, Lcom/loc/aW;->aCB(Lcom/loc/aW;)V

    goto :goto_6
.end method
