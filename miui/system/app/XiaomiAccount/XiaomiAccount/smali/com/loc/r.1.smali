.class final Lcom/loc/r;
.super Landroid/content/BroadcastReceiver;
.source "Unknown"


# instance fields
.field final synthetic akE:Lcom/loc/aS;


# direct methods
.method private constructor <init>(Lcom/loc/aS;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/r;->akE:Lcom/loc/aS;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/aS;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/r;-><init>(Lcom/loc/aS;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/loc/r;->akE:Lcom/loc/aS;

    invoke-static {v1}, Lcom/loc/aS;->aBw(Lcom/loc/aS;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/r;->akE:Lcom/loc/aS;

    invoke-static {v1}, Lcom/loc/aS;->aBx(Lcom/loc/aS;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/r;->akE:Lcom/loc/aS;

    invoke-static {v1}, Lcom/loc/aS;->aBy(Lcom/loc/aS;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/r;->akE:Lcom/loc/aS;

    invoke-static {v1}, Lcom/loc/aS;->aBw(Lcom/loc/aS;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/loc/r;->akE:Lcom/loc/aS;

    invoke-static {v1}, Lcom/loc/aS;->aBy(Lcom/loc/aS;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/loc/r;->akE:Lcom/loc/aS;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/loc/aS;->aBz(Lcom/loc/aS;J)J

    if-nez v2, :cond_3

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Lcom/loc/aM;

    invoke-direct {v0, p0}, Lcom/loc/aM;-><init>(Lcom/loc/r;)V

    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p0, Lcom/loc/r;->akE:Lcom/loc/aS;

    invoke-static {v1}, Lcom/loc/aS;->aBx(Lcom/loc/aS;)Ljava/util/Timer;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/loc/r;->akE:Lcom/loc/aS;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/loc/aS;->aBp(Lcom/loc/aS;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v1, p0, Lcom/loc/r;->akE:Lcom/loc/aS;

    invoke-static {v1}, Lcom/loc/aS;->aBx(Lcom/loc/aS;)Ljava/util/Timer;

    move-result-object v1

    invoke-static {}, Lcom/loc/aS;->y()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    return-void

    :cond_3
    :try_start_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v3, p0, Lcom/loc/r;->akE:Lcom/loc/aS;

    invoke-static {v3}, Lcom/loc/aS;->aBy(Lcom/loc/aS;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    :try_start_6
    iget-object v1, p0, Lcom/loc/r;->akE:Lcom/loc/aS;

    invoke-static {v1}, Lcom/loc/aS;->aBx(Lcom/loc/aS;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iget-object v1, p0, Lcom/loc/r;->akE:Lcom/loc/aS;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/loc/aS;->aBp(Lcom/loc/aS;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
.end method
