.class Lcom/loc/Q;
.super Landroid/os/Handler;
.source ""


# instance fields
.field alA:Lcom/loc/aW;

.field final synthetic alB:Lcom/loc/aW;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/loc/aW;Lcom/loc/aW;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/Q;->alA:Lcom/loc/aW;

    iput-boolean v1, p0, Lcom/loc/Q;->c:Z

    iput-boolean v1, p0, Lcom/loc/Q;->d:Z

    iput-object p2, p0, Lcom/loc/Q;->alA:Lcom/loc/aW;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v1, v0, Lcom/loc/aW;->apC:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/loc/aW;->aCj(Lcom/loc/aW;Z)Z

    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v2, v0, Lcom/loc/aW;->apo:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/loc/Q;->alA:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->apC:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "handleMessage STARTCOLL"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    :try_start_3
    iget-object v2, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v2, v2, Lcom/loc/aW;->apC:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v3, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/loc/aW;->aCj(Lcom/loc/aW;Z)Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    const-string/jumbo v5, "isfirst"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/loc/aW;->apu:Z

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v6

    const-string/jumbo v5, "isNeedAddress"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v8, "isOffset"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iget-boolean v9, p0, Lcom/loc/Q;->c:Z

    if-eq v5, v9, :cond_2

    :cond_0
    iget-object v9, p0, Lcom/loc/Q;->alA:Lcom/loc/aW;

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Lcom/loc/aW;->apE:J

    :goto_2
    iput-boolean v5, p0, Lcom/loc/Q;->c:Z

    iput-boolean v8, p0, Lcom/loc/Q;->d:Z

    iget-object v9, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v9, v9, Lcom/loc/aW;->apD:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v9, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->apv:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_3
    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/aW;->apB:Z

    iget-object v0, p0, Lcom/loc/Q;->alA:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->apC:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_4
    const-string/jumbo v0, "wifiactivescan"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    const-string/jumbo v4, "isKillProcess"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/loc/aW;->apn:Z

    const-string/jumbo v1, "httptimeout"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v1, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v1, v1, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    if-nez v1, :cond_6

    :goto_5
    iget-object v0, p0, Lcom/loc/Q;->alA:Lcom/loc/aW;

    iget-object v1, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v1, v1, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/loc/aW;->aCk(Lcom/loc/aW;Lorg/json/JSONObject;)V

    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "handleMessage LOCATION"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :cond_2
    :try_start_7
    iget-boolean v9, p0, Lcom/loc/Q;->d:Z

    if-ne v8, v9, :cond_0

    goto :goto_2

    :cond_3
    iget-object v9, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v9, v9, Lcom/loc/aW;->apD:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v9}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a()I

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/loc/Q;->alA:Lcom/loc/aW;

    iget-wide v10, v9, Lcom/loc/aW;->apE:J

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x320

    cmp-long v6, v6, v10

    if-ltz v6, :cond_4

    :goto_6
    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "location"

    iget-object v7, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v7, v7, Lcom/loc/aW;->apD:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_6

    :cond_5
    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->apv:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_6
    iget-object v1, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v1, v1, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v3, "reversegeo"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v1, v1, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v3, "isOffset"

    invoke-virtual {v1, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v1, v1, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v3, "wifiactivescan"

    if-nez v0, :cond_7

    const-string/jumbo v0, "0"

    :goto_7
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->apG:Lorg/json/JSONObject;

    const-string/jumbo v1, "httptimeout"

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto/16 :goto_5

    :cond_7
    const-string/jumbo v0, "1"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    :pswitch_2
    :try_start_8
    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    invoke-virtual {v0}, Lcom/loc/aW;->a()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    invoke-virtual {v0}, Lcom/loc/aW;->b()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v1, v0, Lcom/loc/aW;->apC:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    invoke-static {}, Lcom/loc/bv;->d()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    :cond_9
    :try_start_b
    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCl(Lcom/loc/aW;)I

    move-result v0

    invoke-static {}, Lcom/loc/bv;->e()I

    move-result v2

    if-ge v0, v2, :cond_8

    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCm(Lcom/loc/aW;)I

    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/loc/aW;->apB:Z

    iget-object v0, p0, Lcom/loc/Q;->alA:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->apC:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->aps:Lcom/loc/Q;

    const/4 v2, 0x4

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v4, v5}, Lcom/loc/Q;->sendEmptyMessageDelayed(IJ)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_8

    :pswitch_5
    :try_start_c
    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v1, v0, Lcom/loc/aW;->apC:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    invoke-static {}, Lcom/loc/bv;->f()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_9
    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    :cond_b
    :try_start_f
    invoke-static {}, Lcom/loc/bv;->g()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_a

    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/loc/aW;->apB:Z

    invoke-static {}, Lcom/loc/bv;->h()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->apm:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bd;->aDn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_a
    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->aps:Lcom/loc/Q;

    const/4 v2, 0x5

    invoke-static {}, Lcom/loc/bv;->g()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lcom/loc/Q;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9

    :cond_c
    iget-object v0, p0, Lcom/loc/Q;->alA:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->apC:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_a

    :cond_d
    iget-object v0, p0, Lcom/loc/Q;->alA:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->apC:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_a

    :pswitch_6
    :try_start_10
    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    iget-object v1, v0, Lcom/loc/aW;->apC:Ljava/lang/Object;

    monitor-enter v1
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0

    :try_start_11
    iget-object v0, p0, Lcom/loc/Q;->alB:Lcom/loc/aW;

    invoke-static {v0}, Lcom/loc/aW;->aCn(Lcom/loc/aW;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v0
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
