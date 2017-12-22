.class Lcom/loc/bS;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic arG:Lcom/loc/X;


# direct methods
.method private constructor <init>(Lcom/loc/X;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/X;Lcom/loc/al;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/bS;-><init>(Lcom/loc/X;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    invoke-static {v2}, Lcom/loc/X;->awV(Lcom/loc/X;)Lcom/loc/ci;

    move-result-object v2

    const-string/jumbo v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_c

    :cond_2
    :goto_0
    :pswitch_0
    return-void

    :cond_3
    return-void

    :cond_4
    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v2}, Lcom/loc/ci;->a()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    if-nez v0, :cond_6

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/loc/X;->awX(Lcom/loc/X;J)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "onReceive"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void

    :catch_1
    move-exception v1

    :try_start_3
    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "onReceive part1"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    iget-object v1, v1, Lcom/loc/X;->amE:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v2, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    invoke-static {v2}, Lcom/loc/X;->awW(Lcom/loc/X;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    invoke-static {v2}, Lcom/loc/X;->awW(Lcom/loc/X;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_7
    iget-object v0, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    invoke-static {v0}, Lcom/loc/X;->awV(Lcom/loc/X;)Lcom/loc/ci;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    :try_start_6
    invoke-virtual {v2}, Lcom/loc/ci;->c()I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    move-result v0

    :goto_3
    :try_start_7
    iget-object v1, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    invoke-static {v1}, Lcom/loc/X;->awW(Lcom/loc/X;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9

    :goto_4
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    invoke-static {v0}, Lcom/loc/X;->awZ(Lcom/loc/X;)V

    goto :goto_0

    :cond_8
    return-void

    :catch_2
    move-exception v1

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "onReceive part"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/loc/X;->awY(Lcom/loc/X;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    invoke-static {v0}, Lcom/loc/X;->awZ(Lcom/loc/X;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    invoke-static {v0}, Lcom/loc/X;->awZ(Lcom/loc/X;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/X;->amF:Z

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/loc/X;->amF:Z

    iget-object v0, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    invoke-static {v0}, Lcom/loc/X;->axa(Lcom/loc/X;)Lcom/loc/q;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    invoke-static {v0}, Lcom/loc/X;->axb(Lcom/loc/X;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    invoke-static {v0}, Lcom/loc/X;->axc(Lcom/loc/X;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bS;->arG:Lcom/loc/X;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/loc/X;->axd(Lcom/loc/X;ZI)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
