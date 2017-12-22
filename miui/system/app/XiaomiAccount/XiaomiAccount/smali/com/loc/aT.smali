.class public Lcom/loc/aT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/location/LocationManagerBase;


# static fields
.field static apf:Z


# instance fields
.field private C:I

.field private aoJ:Landroid/content/Context;

.field aoK:Lcom/amap/api/location/AMapLocationClientOption;

.field aoL:Lcom/loc/an;

.field aoM:Lcom/loc/bf;

.field private aoN:Z

.field private aoO:Z

.field aoP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/location/AMapLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field aoQ:Lcom/loc/aa;

.field private aoR:J

.field private aoS:Z

.field private aoT:Z

.field aoU:Lcom/loc/bQ;

.field aoV:Landroid/os/Messenger;

.field aoW:Landroid/os/Messenger;

.field aoX:Lcom/loc/h;

.field aoY:Landroid/content/Intent;

.field aoZ:Z

.field apa:J

.field apb:J

.field apc:Lcom/amap/api/location/AMapLocation;

.field apd:J

.field ape:J

.field private apg:Landroid/content/ServiceConnection;

.field private aph:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/bj;",
            ">;"
        }
    .end annotation
.end field

.field private api:Lcom/amap/api/location/AMapLocation;

.field f:Z

.field l:I

.field m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/aT;->apf:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/loc/aT;->aoM:Lcom/loc/bf;

    iput-boolean v1, p0, Lcom/loc/aT;->aoN:Z

    iput-boolean v3, p0, Lcom/loc/aT;->aoO:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/aT;->aoP:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/loc/aT;->f:Z

    iput-wide v4, p0, Lcom/loc/aT;->aoR:J

    iput-boolean v3, p0, Lcom/loc/aT;->aoS:Z

    iput-boolean v1, p0, Lcom/loc/aT;->aoT:Z

    iput-object v2, p0, Lcom/loc/aT;->aoV:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/loc/aT;->aoW:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/loc/aT;->aoY:Landroid/content/Intent;

    iput v1, p0, Lcom/loc/aT;->l:I

    iput v1, p0, Lcom/loc/aT;->m:I

    iput-boolean v1, p0, Lcom/loc/aT;->aoZ:Z

    iput-wide v4, p0, Lcom/loc/aT;->apa:J

    iput-wide v4, p0, Lcom/loc/aT;->apb:J

    iput-object v2, p0, Lcom/loc/aT;->apc:Lcom/amap/api/location/AMapLocation;

    iput-wide v4, p0, Lcom/loc/aT;->apd:J

    iput-wide v4, p0, Lcom/loc/aT;->ape:J

    new-instance v0, Lcom/loc/cc;

    invoke-direct {v0, p0}, Lcom/loc/cc;-><init>(Lcom/loc/aT;)V

    iput-object v0, p0, Lcom/loc/aT;->apg:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/aT;->aph:Ljava/util/ArrayList;

    iput v1, p0, Lcom/loc/aT;->C:I

    iput-object v2, p0, Lcom/loc/aT;->api:Lcom/amap/api/location/AMapLocation;

    iput-object p1, p0, Lcom/loc/aT;->aoJ:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/aT;->aoY:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/loc/aT;->b()V

    return-void
.end method

.method private aBN(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    :goto_0
    :try_start_0
    const-string/jumbo v0, "apiKey"

    sget-object v1, Lcom/loc/aH;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/aT;->aoJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bO;->aET(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcom/loc/aT;->aoJ:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sha1AndPackage"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/aT;->aoJ:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/aT;->apg:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :goto_1
    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/aT;->aoJ:Landroid/content/Context;

    const-class v1, Lcom/amap/api/location/APSService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "startService"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private aBO(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 12

    const/4 v1, 0x1

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/loc/aT;->api:Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    if-eq v0, v1, :cond_2

    iput-wide v10, p0, Lcom/loc/aT;->ape:J

    iput v2, p0, Lcom/loc/aT;->C:I

    return-object p2

    :cond_0
    iput-wide v10, p0, Lcom/loc/aT;->ape:J

    iput v2, p0, Lcom/loc/aT;->C:I

    return-object p2

    :cond_1
    iput-wide v10, p0, Lcom/loc/aT;->ape:J

    iput v2, p0, Lcom/loc/aT;->C:I

    return-object p2

    :cond_2
    iget-wide v6, p0, Lcom/loc/aT;->apd:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1388

    cmp-long v0, v6, v8

    if-ltz v0, :cond_4

    move v0, v1

    :goto_0
    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v3

    add-float/2addr v0, v3

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-float v3, v6

    mul-float/2addr v0, v3

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v6

    add-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v3, v6

    const/4 v6, 0x4

    new-array v6, v6, [D

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v6, v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v6, v1

    const/4 v7, 0x2

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    invoke-static {v6}, Lcom/loc/bd;->aDc([D)F

    move-result v6

    add-float/2addr v0, v3

    const v3, 0x453b8000    # 3000.0f

    add-float/2addr v0, v3

    cmpl-float v0, v6, v0

    if-lez v0, :cond_7

    iget-wide v6, p0, Lcom/loc/aT;->ape:J

    cmp-long v0, v6, v10

    if-nez v0, :cond_3

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/loc/aT;->ape:J

    :cond_3
    iget-wide v6, p0, Lcom/loc/aT;->ape:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-ltz v0, :cond_5

    move v0, v1

    :goto_1
    if-nez v0, :cond_6

    iput v1, p0, Lcom/loc/aT;->C:I

    return-object p1

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iput-wide v10, p0, Lcom/loc/aT;->ape:J

    iput v2, p0, Lcom/loc/aT;->C:I

    return-object p2

    :cond_7
    iput-wide v10, p0, Lcom/loc/aT;->ape:J

    iput v2, p0, Lcom/loc/aT;->C:I

    return-object p2

    :cond_8
    iput-wide v10, p0, Lcom/loc/aT;->ape:J

    iput v2, p0, Lcom/loc/aT;->C:I

    return-object p2
.end method

.method private aBP(Lcom/amap/api/location/AMapLocation;I)Lcom/loc/bj;
    .locals 1

    new-instance v0, Lcom/loc/bj;

    invoke-direct {v0, p0, p1, p2}, Lcom/loc/bj;-><init>(Lcom/loc/aT;Lcom/amap/api/location/AMapLocation;I)V

    return-object v0
.end method

.method static synthetic aBQ(Lcom/loc/aT;)Z
    .locals 1

    invoke-direct {p0}, Lcom/loc/aT;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic aBR(Lcom/loc/aT;)Z
    .locals 1

    invoke-direct {p0}, Lcom/loc/aT;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic aBS(Lcom/loc/aT;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/aT;->aoN:Z

    return p1
.end method

.method static synthetic aBT(Lcom/loc/aT;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/aT;->aoS:Z

    return v0
.end method

.method static synthetic aBU(Lcom/loc/aT;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/aT;->aoS:Z

    return p1
.end method

.method static synthetic aBV(Lcom/loc/aT;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/aT;->f()V

    return-void
.end method

.method static synthetic aBW(Lcom/loc/aT;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/aT;->aoO:Z

    return v0
.end method

.method static synthetic aBX(Lcom/loc/aT;Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/loc/aT;->aBO(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aBY(Lcom/loc/aT;)I
    .locals 1

    iget v0, p0, Lcom/loc/aT;->C:I

    return v0
.end method

.method static synthetic aBZ(Lcom/loc/aT;Lcom/amap/api/location/AMapLocation;I)Lcom/loc/bj;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/loc/aT;->aBP(Lcom/amap/api/location/AMapLocation;I)Lcom/loc/bj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aCa(Lcom/loc/aT;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/loc/aT;->aph:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic aCb(Lcom/loc/aT;)Lcom/amap/api/location/AMapLocation;
    .locals 1

    iget-object v0, p0, Lcom/loc/aT;->api:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method static synthetic aCc(Lcom/loc/aT;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/aT;->g()V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/loc/aT;->aoY:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/loc/aT;->aBN(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/loc/aT;->aoJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bQ;->aFa(Landroid/content/Context;)Lcom/loc/bQ;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aT;->aoU:Lcom/loc/bQ;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/loc/an;

    invoke-direct {v0, p0}, Lcom/loc/an;-><init>(Lcom/loc/aT;)V

    :goto_0
    iput-object v0, p0, Lcom/loc/aT;->aoL:Lcom/loc/an;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/loc/aT;->aoL:Lcom/loc/an;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/loc/aT;->aoW:Landroid/os/Messenger;

    new-instance v0, Lcom/loc/bf;

    iget-object v1, p0, Lcom/loc/aT;->aoJ:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/aT;->aoL:Lcom/loc/an;

    invoke-direct {v0, v1, v2}, Lcom/loc/bf;-><init>(Landroid/content/Context;Lcom/loc/an;)V

    iput-object v0, p0, Lcom/loc/aT;->aoM:Lcom/loc/bf;

    :try_start_0
    new-instance v0, Lcom/loc/aa;

    iget-object v1, p0, Lcom/loc/aT;->aoJ:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/aT;->aoQ:Lcom/loc/aa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/loc/an;

    iget-object v1, p0, Lcom/loc/aT;->aoJ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/loc/an;-><init>(Lcom/loc/aT;Landroid/os/Looper;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "init"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/loc/aT;->aoX:Lcom/loc/h;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/loc/h;

    const-string/jumbo v1, "locationThread"

    invoke-direct {v0, p0, v1}, Lcom/loc/h;-><init>(Lcom/loc/aT;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/aT;->aoX:Lcom/loc/h;

    iget-object v0, p0, Lcom/loc/aT;->aoX:Lcom/loc/h;

    invoke-virtual {v0}, Lcom/loc/h;->start()V

    goto :goto_0
.end method

.method private d()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/loc/aT;->apa:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v2
.end method

.method private e()Z
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/loc/aT;->apb:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-wide v6, p0, Lcom/loc/aT;->apb:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    return v2
.end method

.method private f()V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/loc/aT;->aoJ:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/loc/aT;->aoJ:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    move v1, v0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/loc/aT;->g()V

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/loc/aT;->aoJ:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/loc/bv;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, ""

    invoke-static {}, Lcom/loc/bv;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    :goto_2
    invoke-static {}, Lcom/loc/bv;->l()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/loc/w;

    invoke-direct {v3, p0}, Lcom/loc/w;-><init>(Lcom/loc/aT;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v0, :cond_5

    :goto_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/loc/aT;->g()V

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "showDialog"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/loc/bv;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/loc/bv;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/loc/ch;

    invoke-direct {v3, p0}, Lcom/loc/ch;-><init>(Lcom/loc/aT;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private g()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.autonavi.minimap"

    invoke-static {}, Lcom/loc/bv;->o()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/loc/bv;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/loc/aT;->aoJ:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "callAMap part1"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {}, Lcom/loc/bv;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/loc/aT;->aoJ:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "callAMap part2"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/aT;->aoX:Lcom/loc/h;

    if-nez v0, :cond_0

    :goto_0
    iput-object v2, p0, Lcom/loc/aT;->aoX:Lcom/loc/h;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/aT;->aoX:Lcom/loc/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/loc/h;->ajz:Z

    iget-object v0, p0, Lcom/loc/aT;->aoX:Lcom/loc/h;

    invoke-virtual {v0}, Lcom/loc/h;->interrupt()V

    goto :goto_0
.end method

.method public addGeoFenceAlert(Ljava/lang/String;DDFJLandroid/app/PendingIntent;)V
    .locals 4

    new-instance v0, Lcom/amap/api/fence/Fence;

    invoke-direct {v0}, Lcom/amap/api/fence/Fence;-><init>()V

    iput-object p1, v0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iput-wide p2, v0, Lcom/amap/api/fence/Fence;->d:D

    iput-wide p4, v0, Lcom/amap/api/fence/Fence;->c:D

    iput p6, v0, Lcom/amap/api/fence/Fence;->e:F

    iput-object p9, v0, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, p7, p8}, Lcom/amap/api/fence/Fence;->a(J)V

    iget-object v1, p0, Lcom/loc/aT;->aoQ:Lcom/loc/aa;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/loc/aT;->aoQ:Lcom/loc/aa;

    iget-object v2, v0, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Lcom/loc/aa;->axt(Lcom/amap/api/fence/Fence;Landroid/app/PendingIntent;)Z

    goto :goto_0
.end method

.method public getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/aT;->aoU:Lcom/loc/bQ;

    invoke-virtual {v0}, Lcom/loc/bQ;->a()Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapLocationManager"

    const-string/jumbo v3, "getLastKnownLocation"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "2.4.0"

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/aT;->aoN:Z

    return v0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/aT;->aoS:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/aT;->apf:Z

    invoke-virtual {p0}, Lcom/loc/aT;->stopLocation()V

    iget-object v0, p0, Lcom/loc/aT;->aoQ:Lcom/loc/aa;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/loc/aT;->apg:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/loc/aT;->aoP:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    :goto_2
    iput-object v2, p0, Lcom/loc/aT;->apg:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/loc/aT;->aoL:Lcom/loc/an;

    if-nez v0, :cond_3

    :goto_3
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/aT;->aoQ:Lcom/loc/aa;

    invoke-virtual {v0}, Lcom/loc/aa;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/loc/aT;->aoJ:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/aT;->apg:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/loc/aT;->aoP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/loc/aT;->aoP:Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/loc/aT;->aoL:Lcom/loc/an;

    invoke-virtual {v0, v2}, Lcom/loc/an;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/aT;->aoQ:Lcom/loc/aa;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/aT;->aoQ:Lcom/loc/aa;

    invoke-virtual {v0, p1}, Lcom/loc/aa;->axu(Landroid/app/PendingIntent;)Z

    goto :goto_0
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/aT;->aoQ:Lcom/loc/aa;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/aT;->aoQ:Lcom/loc/aa;

    invoke-virtual {v0, p1, p2}, Lcom/loc/aa;->axv(Landroid/app/PendingIntent;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/loc/aT;->aoP:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/loc/aT;->aoP:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/aT;->aoP:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/loc/aT;->aoP:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/aT;->aoK:Lcom/amap/api/location/AMapLocationClientOption;

    return-void
.end method

.method public startAssistantLocation()V
    .locals 2

    iget-object v0, p0, Lcom/loc/aT;->aoL:Lcom/loc/an;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/aT;->aoL:Lcom/loc/an;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/loc/an;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public startLocation()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/aT;->aoK:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v0, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/loc/aT;->aoO:Z

    invoke-direct {p0}, Lcom/loc/aT;->c()V

    sget-object v0, Lcom/loc/R;->a:[I

    iget-object v1, p0, Lcom/loc/aT;->aoK:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/aT;->aoK:Lcom/amap/api/location/AMapLocationClientOption;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/loc/aT;->aoM:Lcom/loc/bf;

    invoke-virtual {v0}, Lcom/loc/bf;->a()V

    iput-boolean v2, p0, Lcom/loc/aT;->aoT:Z

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/loc/aT;->aoT:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/aT;->aoM:Lcom/loc/bf;

    iget-object v1, p0, Lcom/loc/aT;->aoK:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/loc/bf;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/aT;->aoT:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public stopAssistantLocation()V
    .locals 2

    iget-object v0, p0, Lcom/loc/aT;->aoL:Lcom/loc/an;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/aT;->aoL:Lcom/loc/an;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/loc/an;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public stopLocation()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/loc/aT;->a()V

    iget-object v0, p0, Lcom/loc/aT;->aoM:Lcom/loc/bf;

    invoke-virtual {v0}, Lcom/loc/bf;->a()V

    iput-boolean v1, p0, Lcom/loc/aT;->aoT:Z

    iput-boolean v1, p0, Lcom/loc/aT;->aoZ:Z

    iput-boolean v1, p0, Lcom/loc/aT;->aoN:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/aT;->aoO:Z

    iput-wide v2, p0, Lcom/loc/aT;->apb:J

    iput-wide v2, p0, Lcom/loc/aT;->apa:J

    iput v1, p0, Lcom/loc/aT;->m:I

    iput v1, p0, Lcom/loc/aT;->l:I

    iput-object v4, p0, Lcom/loc/aT;->apc:Lcom/amap/api/location/AMapLocation;

    iput-wide v2, p0, Lcom/loc/aT;->apd:J

    iget-object v0, p0, Lcom/loc/aT;->aph:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/loc/aT;->C:I

    iput-object v4, p0, Lcom/loc/aT;->api:Lcom/amap/api/location/AMapLocation;

    return-void
.end method

.method public unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/aT;->aoP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/aT;->aoP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/aT;->aoP:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/aT;->aoP:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/loc/aT;->stopLocation()V

    goto :goto_1
.end method
