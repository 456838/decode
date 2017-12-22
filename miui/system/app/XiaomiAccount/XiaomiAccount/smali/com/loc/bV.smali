.class final Lcom/loc/bV;
.super Ljava/lang/Thread;
.source "Unknown"


# instance fields
.field final synthetic arJ:Lcom/loc/q;


# direct methods
.method constructor <init>(Lcom/loc/q;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bV;->arJ:Lcom/loc/q;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/loc/bV;->arJ:Lcom/loc/q;

    iget-object v6, v0, Lcom/loc/q;->aki:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-boolean v0, Lcom/loc/q;->ajM:Z

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-boolean v0, Lcom/loc/q;->ajM:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/loc/bV;->arJ:Lcom/loc/q;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/q;->auI(Lcom/loc/q;Landroid/os/Looper;)Landroid/os/Looper;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/loc/bV;->arJ:Lcom/loc/q;

    new-instance v1, Lcom/loc/ba;

    iget-object v2, p0, Lcom/loc/bV;->arJ:Lcom/loc/q;

    invoke-direct {v1, v2}, Lcom/loc/ba;-><init>(Lcom/loc/q;)V

    invoke-static {v0, v1}, Lcom/loc/q;->auJ(Lcom/loc/q;Lcom/loc/ba;)Lcom/loc/ba;

    iget-object v0, p0, Lcom/loc/bV;->arJ:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->auL(Lcom/loc/q;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bV;->arJ:Lcom/loc/q;

    invoke-static {v1}, Lcom/loc/q;->auK(Lcom/loc/q;)Lcom/loc/ba;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    iget-object v0, p0, Lcom/loc/bV;->arJ:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->auL(Lcom/loc/q;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bV;->arJ:Lcom/loc/q;

    invoke-static {v1}, Lcom/loc/q;->auK(Lcom/loc/q;)Lcom/loc/ba;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/loc/bV;->arJ:Lcom/loc/q;

    new-instance v1, Lcom/loc/W;

    invoke-direct {v1, p0}, Lcom/loc/W;-><init>(Lcom/loc/bV;)V

    invoke-static {v0, v1}, Lcom/loc/q;->auM(Lcom/loc/q;Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lcom/loc/bV;->arJ:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->auL(Lcom/loc/q;)Landroid/location/LocationManager;

    move-result-object v0

    const-string/jumbo v1, "passive"

    const-wide/16 v2, 0x3e8

    invoke-static {}, Lcom/loc/q;->m()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/loc/bV;->arJ:Lcom/loc/q;

    invoke-static {v5}, Lcom/loc/q;->auN(Lcom/loc/q;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v6

    throw v0

    :catch_1
    move-exception v0

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2
.end method
