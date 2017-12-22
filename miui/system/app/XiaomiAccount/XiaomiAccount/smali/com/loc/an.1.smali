.class public Lcom/loc/an;
.super Landroid/os/Handler;
.source ""


# instance fields
.field amY:Lcom/loc/aT;


# direct methods
.method public constructor <init>(Lcom/loc/aT;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iput-object p1, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    return-void
.end method

.method public constructor <init>(Lcom/loc/aT;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iput-object p1, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    return-void

    :sswitch_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_a

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_0
    :goto_0
    move-object v1, v0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v0, v0, Lcom/loc/aT;->aoQ:Lcom/loc/aa;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    if-nez v0, :cond_8

    :goto_2
    if-nez v1, :cond_9

    :cond_1
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v0, v0, Lcom/loc/aT;->aoK:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8

    move-result v0

    if-nez v0, :cond_15

    :goto_4
    return-void

    :cond_2
    :try_start_3
    const-class v2, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/aH;->aAn(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/amap/api/location/AMapLocation;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_a

    move-result-object v0

    :try_start_4
    const-string/jumbo v1, "lbs"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_5
    const-string/jumbo v2, "AMapLocationManager"

    const-string/jumbo v3, "handleMessage LBS_LOCATIONSUCCESS"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    :try_start_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocation;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_9

    :try_start_6
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    if-eqz v1, :cond_3

    :goto_6
    sget-boolean v1, Lcom/loc/aT;->apf:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v1, v1, Lcom/loc/aT;->aoV:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v2, v2, Lcom/loc/aT;->aoW:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v2, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v2, v2, Lcom/loc/aT;->aoV:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/loc/aT;->apf:Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_7
    const-string/jumbo v2, "AMapLocationManager"

    const-string/jumbo v3, "handleMessage GPS_LOCATIONSUCCESS"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_7
    iget-object v1, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/loc/aT;->apa:J

    iget-object v1, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/loc/aT;->aoZ:Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    :sswitch_2
    return-void

    :sswitch_3
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/aT;->apa:J

    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iput-boolean v4, v0, Lcom/loc/aT;->aoZ:Z

    return-void

    :sswitch_4
    :try_start_8
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v0}, Lcom/loc/aT;->aBV(Lcom/loc/aT;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    return-void

    :catch_2
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "handleMessage FASTSKY"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_5
    :try_start_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v1, v1, Lcom/loc/aT;->aoV:Landroid/os/Messenger;

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget v1, v0, Lcom/loc/aT;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/loc/aT;->m:I

    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget v0, v0, Lcom/loc/aT;->m:I

    if-lt v0, v5, :cond_5

    :goto_9
    return-void

    :cond_4
    iget-object v1, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    const/4 v2, 0x0

    iput v2, v1, Lcom/loc/aT;->m:I

    iget-object v1, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v1, v1, Lcom/loc/aT;->aoV:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "handleMessage START_SOCKET"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_5
    :try_start_a
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v0, v0, Lcom/loc/aT;->aoL:Lcom/loc/an;

    const/16 v1, 0x65

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/an;->sendEmptyMessageDelayed(IJ)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_9

    :sswitch_6
    :try_start_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v1, v1, Lcom/loc/aT;->aoV:Landroid/os/Messenger;

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget v1, v0, Lcom/loc/aT;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/loc/aT;->m:I

    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget v0, v0, Lcom/loc/aT;->m:I

    if-lt v0, v5, :cond_7

    :goto_a
    return-void

    :cond_6
    iget-object v1, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    const/4 v2, 0x0

    iput v2, v1, Lcom/loc/aT;->m:I

    iget-object v1, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v1, v1, Lcom/loc/aT;->aoV:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "handleMessage STOP_SOCKET"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_7
    :try_start_c
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v0, v0, Lcom/loc/aT;->aoL:Lcom/loc/an;

    const/16 v1, 0x66

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/an;->sendEmptyMessageDelayed(IJ)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_a

    :cond_8
    :try_start_d
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v0, v0, Lcom/loc/aT;->aoQ:Lcom/loc/aa;

    invoke-virtual {v0, v1}, Lcom/loc/aa;->axy(Lcom/amap/api/location/AMapLocation;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const-string/jumbo v2, "AMapLocationManager"

    const-string/jumbo v3, "handleMessage part6"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    :try_start_e
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v0}, Lcom/loc/aT;->aBW(Lcom/loc/aT;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    :goto_b
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/aT;->apd:J

    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iput-object v1, v0, Lcom/loc/aT;->apc:Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v0, "gps"

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_b
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v0, v0, Lcom/loc/aT;->aoU:Lcom/loc/bQ;

    if-nez v0, :cond_14

    :goto_c
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v0, v0, Lcom/loc/aT;->aoP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;

    invoke-interface {v0, v1}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "handleMessage part7"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    :try_start_f
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v2, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v2, v2, Lcom/loc/aT;->apc:Lcom/amap/api/location/AMapLocation;

    invoke-static {v0, v2, v1}, Lcom/loc/aT;->aBX(Lcom/loc/aT;Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v0}, Lcom/loc/aT;->aBY(Lcom/loc/aT;)I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v2, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v2}, Lcom/loc/aT;->aCb(Lcom/loc/aT;)Lcom/amap/api/location/AMapLocation;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v3}, Lcom/loc/aT;->aBY(Lcom/loc/aT;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/loc/aT;->aBZ(Lcom/loc/aT;Lcom/amap/api/location/AMapLocation;I)Lcom/loc/bj;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v2}, Lcom/loc/aT;->aCa(Lcom/loc/aT;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_d
    :goto_e
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v0}, Lcom/loc/aT;->aCa(Lcom/loc/aT;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v5, :cond_a

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v0}, Lcom/loc/aT;->aCa(Lcom/loc/aT;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/aH;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v0}, Lcom/loc/aT;->aCa(Lcom/loc/aT;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_b

    :catch_7
    move-exception v0

    :try_start_10
    const-string/jumbo v2, "AMapLocationManager"

    const-string/jumbo v3, "handleMessage"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_b

    :cond_e
    :try_start_11
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v2, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v2}, Lcom/loc/aT;->aBY(Lcom/loc/aT;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/loc/aT;->aBZ(Lcom/loc/aT;Lcom/amap/api/location/AMapLocation;I)Lcom/loc/bj;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v2}, Lcom/loc/aT;->aCa(Lcom/loc/aT;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_f

    iget-object v2, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v2}, Lcom/loc/aT;->aCa(Lcom/loc/aT;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_f
    iget-object v2, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v2}, Lcom/loc/aT;->aCa(Lcom/loc/aT;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v4, :cond_10

    iget-object v2, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v2}, Lcom/loc/aT;->aCa(Lcom/loc/aT;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_10
    iget-object v2, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v2}, Lcom/loc/aT;->aCa(Lcom/loc/aT;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    :cond_11
    iget-object v2, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v2}, Lcom/loc/aT;->aCa(Lcom/loc/aT;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x9

    if-gt v2, v3, :cond_d

    iget-object v2, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v2}, Lcom/loc/aT;->aCa(Lcom/loc/aT;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bj;

    invoke-virtual {v0}, Lcom/loc/bj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_f

    :cond_13
    :try_start_12
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-static {v0}, Lcom/loc/aT;->aBQ(Lcom/loc/aT;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_3

    :cond_14
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    iget-object v0, v0, Lcom/loc/aT;->aoU:Lcom/loc/bQ;

    invoke-virtual {v0, v1}, Lcom/loc/bQ;->aFb(Lcom/amap/api/location/AMapLocation;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_c

    :cond_15
    :try_start_13
    iget-object v0, p0, Lcom/loc/an;->amY:Lcom/loc/aT;

    invoke-virtual {v0}, Lcom/loc/aT;->stopLocation()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8

    goto/16 :goto_4

    :catch_8
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "handleMessage part8"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_9
    move-exception v0

    goto/16 :goto_7

    :catch_a
    move-exception v0

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_3
        0x6 -> :sswitch_2
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
    .end sparse-switch
.end method
