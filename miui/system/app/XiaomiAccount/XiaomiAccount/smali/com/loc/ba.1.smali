.class public final Lcom/loc/ba;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/GpsStatus$NmeaListener;


# instance fields
.field private a:J

.field private apW:Ljava/util/List;

.field private synthetic apX:Lcom/loc/q;

.field private b:J

.field private c:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/loc/q;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/loc/ba;->a:J

    iput-wide v2, p0, Lcom/loc/ba;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/ba;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/ba;->apW:Ljava/util/List;

    iput-object v1, p0, Lcom/loc/ba;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/ba;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/ba;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 11

    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/loc/ba;->b:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x190

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/loc/ba;->c:Z

    if-nez v0, :cond_3

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/loc/ba;->apW:Ljava/util/List;

    if-nez v0, :cond_6

    :cond_1
    :goto_2
    const-string/jumbo v0, "$GPGGA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "$GPGSV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "$GPGSA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ba;->b:J

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/loc/ba;->apW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/loc/y;

    iget-object v3, p0, Lcom/loc/ba;->apW:Ljava/util/List;

    iget-object v4, p0, Lcom/loc/ba;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/ba;->g:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v0, v3, v4, v6, v5}, Lcom/loc/y;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/loc/y;->a()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/loc/q;->avb(Lcom/loc/q;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/loc/ba;->apW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v10, p0, Lcom/loc/ba;->g:Ljava/lang/String;

    iput-object v10, p0, Lcom/loc/ba;->f:Ljava/lang/String;

    iput-object v10, p0, Lcom/loc/ba;->e:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/loc/ba;->c:Z

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    iget-object v4, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    iget-object v5, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v5}, Lcom/loc/q;->avc(Lcom/loc/q;)I

    move-result v5

    invoke-static {v4, v0, v5}, Lcom/loc/q;->avd(Lcom/loc/q;Lcom/loc/y;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/loc/q;->avb(Lcom/loc/q;I)I

    iget-object v3, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v3}, Lcom/loc/q;->ave(Lcom/loc/q;)I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v5, "&nmea=%.1f|%.1f&g_tp=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/loc/y;->c()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/loc/y;->b()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x2

    iget-object v7, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v7}, Lcom/loc/q;->ave(Lcom/loc/q;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/loc/q;->avf(Lcom/loc/q;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0, v2}, Lcom/loc/q;->avb(Lcom/loc/q;I)I

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/loc/ba;->apW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/loc/ba;->apW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_2

    :cond_7
    iput-boolean v1, p0, Lcom/loc/ba;->c:Z

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ba;->e:Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/loc/ba;->apW:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ba;->g:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public final onGpsStatusChanged(I)V
    .locals 8

    const/4 v7, 0x4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->auL(Lcom/loc/q;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    return-void

    :pswitch_1
    sget-boolean v0, Lcom/loc/q;->ajM:Z

    if-eqz v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->auO(Lcom/loc/q;)Landroid/location/GpsStatus;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->auL(Lcom/loc/q;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v2}, Lcom/loc/q;->auO(Lcom/loc/q;)Landroid/location/GpsStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    :goto_1
    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->auO(Lcom/loc/q;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/loc/q;->auQ(Lcom/loc/q;I)I

    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/loc/q;->auR(Lcom/loc/q;I)I

    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2}, Lcom/loc/q;->auS(Lcom/loc/q;Ljava/util/HashMap;)Ljava/util/HashMap;

    move v3, v1

    move v2, v1

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->auU(Lcom/loc/q;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_c

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0, v2}, Lcom/loc/q;->auV(Lcom/loc/q;I)I

    if-lt v2, v7, :cond_f

    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->auW(Lcom/loc/q;)Lcom/loc/aS;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0, v1}, Lcom/loc/q;->auX(Lcom/loc/q;I)I

    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    iget-object v1, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v1}, Lcom/loc/q;->auY(Lcom/loc/q;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/q;->auZ(Lcom/loc/q;Ljava/util/HashMap;)I

    sget-boolean v0, Lcom/loc/q;->ajM:Z

    if-nez v0, :cond_11

    const/4 v0, 0x3

    if-le v2, v0, :cond_12

    :cond_5
    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->auL(Lcom/loc/q;)Landroid/location/LocationManager;

    move-result-object v0

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_13

    :goto_5
    return-void

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/ba;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_1

    return-void

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    iget-object v2, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v2}, Lcom/loc/q;->auL(Lcom/loc/q;)Landroid/location/LocationManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/loc/q;->auP(Lcom/loc/q;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-nez v5, :cond_b

    :goto_7
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    add-int/lit8 v1, v1, 0x1

    :cond_a
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v0

    invoke-static {}, Lcom/loc/q;->n()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->auT(Lcom/loc/q;)I

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    if-ge v2, v7, :cond_e

    :cond_d
    if-ge v2, v7, :cond_4

    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->auU(Lcom/loc/q;)I

    move-result v0

    if-ge v0, v7, :cond_3

    goto/16 :goto_4

    :cond_e
    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->auU(Lcom/loc/q;)I

    move-result v0

    if-ge v0, v7, :cond_d

    goto/16 :goto_3

    :cond_f
    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->auW(Lcom/loc/q;)Lcom/loc/aS;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->auW(Lcom/loc/q;)Lcom/loc/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/aS;->v()V

    goto/16 :goto_4

    :cond_10
    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->auW(Lcom/loc/q;)Lcom/loc/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/aS;->u()V

    goto/16 :goto_4

    :cond_11
    return-void

    :cond_12
    const/16 v0, 0xf

    if-gt v3, v0, :cond_5

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ba;->a:J

    goto/16 :goto_5

    :pswitch_2
    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/q;->auX(Lcom/loc/q;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onNmeaReceived(JLjava/lang/String;)V
    .locals 3

    :try_start_0
    sget-boolean v0, Lcom/loc/q;->ajM:Z

    if-eqz v0, :cond_1

    if-nez p3, :cond_2

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x96

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->ava(Lcom/loc/q;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_5

    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v0}, Lcom/loc/q;->ava(Lcom/loc/q;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/ba;->apX:Lcom/loc/q;

    invoke-static {v1}, Lcom/loc/q;->ava(Lcom/loc/q;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-void
.end method
