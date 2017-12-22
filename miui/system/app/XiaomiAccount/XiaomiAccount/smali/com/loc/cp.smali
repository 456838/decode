.class Lcom/loc/cp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic ask:Lcom/loc/bf;


# direct methods
.method constructor <init>(Lcom/loc/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/cp;->ask:Lcom/loc/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v1

    :goto_0
    if-lez v2, :cond_5

    :cond_0
    iget-object v3, p0, Lcom/loc/cp;->ask:Lcom/loc/bf;

    iget-object v3, v3, Lcom/loc/bf;->aqi:Landroid/os/Handler;

    if-nez v3, :cond_6

    :goto_1
    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v4

    iget-object v3, p0, Lcom/loc/cp;->ask:Lcom/loc/bf;

    iget-wide v6, v3, Lcom/loc/bf;->f:J

    sub-long/2addr v4, v6

    iget-object v3, p0, Lcom/loc/cp;->ask:Lcom/loc/bf;

    iget-wide v6, v3, Lcom/loc/bf;->aqk:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_7

    :goto_2
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/loc/aH;->aAm(DD)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_1
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    :goto_3
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setSatellites(I)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/loc/cp;->ask:Lcom/loc/bf;

    iget-object v0, v0, Lcom/loc/bf;->aqi:Landroid/os/Handler;

    if-nez v0, :cond_9

    :goto_4
    iget-object v0, p0, Lcom/loc/cp;->ask:Lcom/loc/bf;

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/bf;->f:J

    :cond_2
    :goto_5
    return-void

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v3, "satellites"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/loc/cp;->ask:Lcom/loc/bf;

    iget-object v3, v3, Lcom/loc/bf;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_6
    iget-object v3, p0, Lcom/loc/cp;->ask:Lcom/loc/bf;

    iget-object v3, v3, Lcom/loc/bf;->aqi:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GPSLocation"

    const-string/jumbo v2, "onLocationChanged"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/loc/cp;->ask:Lcom/loc/bf;

    iget-object v0, v0, Lcom/loc/bf;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    iget-object v1, p0, Lcom/loc/cp;->ask:Lcom/loc/bf;

    iget-object v1, v1, Lcom/loc/bf;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v1, v4, v5, v6, v7}, Lcom/loc/ap;->ayz(Landroid/content/Context;DD)Lcom/amap/api/location/DPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {v1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/loc/cp;->ask:Lcom/loc/bf;

    iget-object v0, v0, Lcom/loc/bf;->aqi:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/cp;->ask:Lcom/loc/bf;

    iget-object v0, v0, Lcom/loc/bf;->aqi:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GPSLocation"

    const-string/jumbo v2, "onProviderDisabled"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/cp;->ask:Lcom/loc/bf;

    iget-object v0, v0, Lcom/loc/bf;->aqi:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GPSLocation"

    const-string/jumbo v2, "onStatusChanged"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
