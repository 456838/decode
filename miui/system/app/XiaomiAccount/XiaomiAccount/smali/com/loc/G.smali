.class final Lcom/loc/G;
.super Ljava/lang/Thread;
.source "Unknown"


# instance fields
.field private synthetic alj:Lcom/loc/aS;


# direct methods
.method constructor <init>(Lcom/loc/aS;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/G;->alj:Lcom/loc/aS;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/loc/G;->alj:Lcom/loc/aS;

    iget-object v1, v0, Lcom/loc/aS;->aoH:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/loc/G;->alj:Lcom/loc/aS;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/loc/aS;->aBo(Lcom/loc/aS;Landroid/os/Looper;)Landroid/os/Looper;

    iget-object v0, p0, Lcom/loc/G;->alj:Lcom/loc/aS;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v2}, Lcom/loc/aS;->aBp(Lcom/loc/aS;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lcom/loc/G;->alj:Lcom/loc/aS;

    new-instance v2, Lcom/loc/bK;

    iget-object v3, p0, Lcom/loc/G;->alj:Lcom/loc/aS;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/loc/bK;-><init>(Lcom/loc/aS;B)V

    invoke-static {v0, v2}, Lcom/loc/aS;->aBq(Lcom/loc/aS;Lcom/loc/bK;)Lcom/loc/bK;

    iget-object v0, p0, Lcom/loc/G;->alj:Lcom/loc/aS;

    iget-object v2, p0, Lcom/loc/G;->alj:Lcom/loc/aS;

    invoke-static {v2}, Lcom/loc/aS;->aBr(Lcom/loc/aS;)Lcom/loc/bK;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/loc/aS;->aBs(Lcom/loc/aS;Landroid/telephony/PhoneStateListener;)V

    iget-object v0, p0, Lcom/loc/G;->alj:Lcom/loc/aS;

    new-instance v2, Lcom/loc/bp;

    iget-object v3, p0, Lcom/loc/G;->alj:Lcom/loc/aS;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/loc/bp;-><init>(Lcom/loc/aS;B)V

    invoke-static {v0, v2}, Lcom/loc/aS;->aBt(Lcom/loc/aS;Lcom/loc/bp;)Lcom/loc/bp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/loc/G;->alj:Lcom/loc/aS;

    iget-object v2, p0, Lcom/loc/G;->alj:Lcom/loc/aS;

    invoke-static {v2}, Lcom/loc/aS;->aBu(Lcom/loc/aS;)Lcom/loc/bp;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/loc/aS;->aBv(Lcom/loc/aS;Landroid/location/GpsStatus$NmeaListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/loc/G;->alj:Lcom/loc/aS;

    iget-boolean v0, v0, Lcom/loc/aS;->e:Z

    if-nez v0, :cond_0

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
