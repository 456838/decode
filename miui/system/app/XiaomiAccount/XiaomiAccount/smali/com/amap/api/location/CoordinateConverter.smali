.class public Lcom/amap/api/location/CoordinateConverter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Lcom/amap/api/location/DPoint;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/location/CoordinateConverter$CoordType;

.field private d:Lcom/amap/api/location/DPoint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->c:Lcom/amap/api/location/CoordinateConverter$CoordType;

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    iput-object p1, p0, Lcom/amap/api/location/CoordinateConverter;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized convert()Lcom/amap/api/location/DPoint;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->c:Lcom/amap/api/location/CoordinateConverter$CoordType;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    invoke-virtual {v2}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    move v2, v0

    :goto_0
    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    invoke-virtual {v2}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u8bf7\u4f20\u5165\u5408\u7406\u7ecf\u5ea6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u8f6c\u6362\u5750\u6807\u7c7b\u578b\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u8f6c\u6362\u5750\u6807\u6e90\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    invoke-virtual {v2}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_6

    :goto_1
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_7

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u8bf7\u4f20\u5165\u5408\u7406\u7eac\u5ea6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/amap/api/location/a;->a:[I

    iget-object v1, p0, Lcom/amap/api/location/CoordinateConverter;->c:Lcom/amap/api/location/CoordinateConverter$CoordType;

    invoke-virtual {v1}, Lcom/amap/api/location/CoordinateConverter$CoordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_2
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    invoke-static {v0}, Lcom/loc/ap;->ayF(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    invoke-static {v0, v1}, Lcom/loc/ap;->ayB(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    invoke-static {v0, v1}, Lcom/loc/ap;->ayy(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized coord(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/CoordinateConverter;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    move v2, v0

    :goto_0
    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u8bf7\u4f20\u5165\u5408\u7406\u7ecf\u5ea6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u4f20\u5165\u7ecf\u7eac\u5ea6\u5bf9\u8c61\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_6

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u8bf7\u4f20\u5165\u5408\u7406\u7eac\u5ea6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    iput-object p1, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0
.end method

.method public declared-synchronized from(Lcom/amap/api/location/CoordinateConverter$CoordType;)Lcom/amap/api/location/CoordinateConverter;
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/location/CoordinateConverter;->c:Lcom/amap/api/location/CoordinateConverter$CoordType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAMapDataAvailable(DD)Z
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/loc/aH;->aAm(DD)Z

    move-result v0

    return v0
.end method