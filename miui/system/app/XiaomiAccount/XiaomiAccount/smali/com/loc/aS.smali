.class public final Lcom/loc/aS;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field static a:Ljava/lang/String;

.field private static aoF:I

.field protected static aoG:Z

.field private static aoI:[Ljava/lang/String;

.field private static aow:Lcom/loc/aS;

.field protected static c:Z


# instance fields
.field private aoA:Lcom/loc/r;

.field private aoB:Ljava/util/List;

.field private aoC:Ljava/util/Timer;

.field private aoD:Ljava/lang/Thread;

.field private aoE:Landroid/os/Looper;

.field aoH:Ljava/lang/Object;

.field private aoh:Landroid/content/Context;

.field private aoi:Landroid/telephony/TelephonyManager;

.field private aoj:Landroid/location/LocationManager;

.field private aok:Landroid/net/wifi/WifiManager;

.field private aol:Landroid/hardware/SensorManager;

.field private aom:Ljava/lang/String;

.field private aon:Z

.field private aoo:I

.field private aop:Z

.field private aoq:J

.field private aor:I

.field private aos:I

.field private aot:I

.field private aou:J

.field private aov:J

.field private aox:Lcom/loc/bK;

.field private aoy:Lcom/loc/bp;

.field private aoz:Landroid/telephony/CellLocation;

.field e:Z

.field private k:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/aS;->aow:Lcom/loc/aS;

    const/16 v0, 0x2710

    sput v0, Lcom/loc/aS;->aoF:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/aS;->a:Ljava/lang/String;

    sput-boolean v3, Lcom/loc/aS;->aoG:Z

    sput-boolean v2, Lcom/loc/aS;->c:Z

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "android.permission.CHANGE_WIFI_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/loc/aS;->aoI:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    iput-object v3, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/loc/aS;->aoj:Landroid/location/LocationManager;

    iput-object v3, p0, Lcom/loc/aS;->aok:Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/aS;->k:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/aS;->aom:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/aS;->m:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/loc/aS;->aon:Z

    iput v1, p0, Lcom/loc/aS;->aoo:I

    iput-boolean v1, p0, Lcom/loc/aS;->aop:Z

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/loc/aS;->aoq:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/aS;->r:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/aS;->s:Ljava/lang/String;

    iput v1, p0, Lcom/loc/aS;->aor:I

    iput v1, p0, Lcom/loc/aS;->aos:I

    iput v1, p0, Lcom/loc/aS;->aot:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/aS;->w:Ljava/lang/String;

    iput-wide v6, p0, Lcom/loc/aS;->aou:J

    iput-wide v6, p0, Lcom/loc/aS;->aov:J

    iput-object v3, p0, Lcom/loc/aS;->aox:Lcom/loc/bK;

    iput-object v3, p0, Lcom/loc/aS;->aoy:Lcom/loc/bp;

    iput-object v3, p0, Lcom/loc/aS;->aoz:Landroid/telephony/CellLocation;

    iput-object v3, p0, Lcom/loc/aS;->aoA:Lcom/loc/r;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/aS;->aoB:Ljava/util/List;

    iput-object v3, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    iput-object v3, p0, Lcom/loc/aS;->aoD:Ljava/lang/Thread;

    iput-object v3, p0, Lcom/loc/aS;->aoE:Landroid/os/Looper;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/aS;->aoH:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/loc/aS;->e:Z

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/aS;->k:Ljava/lang/String;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/loc/aS;->aoj:Landroid/location/LocationManager;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/loc/aS;->aok:Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/loc/aS;->aok:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aS;->aom:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aS;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/aS;->aok:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/loc/aS;->aAW(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/loc/aS;->aor:I

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loc/aS;->aos:I

    iget-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    iput v0, p0, Lcom/loc/aS;->aot:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aS;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/loc/aS;->aon:Z

    return-void

    :cond_4
    iget-object v0, p0, Lcom/loc/aS;->aok:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aS;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/aS;->s:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/aS;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/loc/aS;->s:Ljava/lang/String;

    const-string/jumbo v3, ":"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aS;->s:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private A()Landroid/telephony/CellLocation;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getAllCellInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/loc/bF;->aEu(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/loc/aS;->aBk(Ljava/util/List;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected static aAV(Landroid/content/Context;)Lcom/loc/aS;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/loc/aS;->aow:Lcom/loc/aS;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/loc/aS;->aow:Lcom/loc/aS;

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/loc/aS;->aBm(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    new-instance v0, Lcom/loc/aS;

    invoke-direct {v0, p0}, Lcom/loc/aS;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loc/aS;->aow:Lcom/loc/aS;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "passive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "gps"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2
.end method

.method private static aAW(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "0"

    aput-object v3, v2, v1

    const-string/jumbo v3, "0"

    aput-object v3, v2, v6

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    :goto_2
    array-length v4, v3

    if-lt v1, v4, :cond_4

    :cond_3
    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    goto :goto_1

    :cond_4
    aget-char v4, v3, v1

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method static synthetic aBA(Lcom/loc/aS;Landroid/net/wifi/WifiManager;)V
    .locals 0

    invoke-static {p1}, Lcom/loc/aS;->aBl(Landroid/net/wifi/WifiManager;)V

    return-void
.end method

.method static synthetic aBB(Lcom/loc/aS;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/aS;->aop:Z

    return p1
.end method

.method static synthetic aBC(Lcom/loc/aS;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic aBD(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/loc/aS;->aAW(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aBE(Lcom/loc/aS;I)I
    .locals 0

    iput p1, p0, Lcom/loc/aS;->aor:I

    return p1
.end method

.method static synthetic aBF(Lcom/loc/aS;I)I
    .locals 0

    iput p1, p0, Lcom/loc/aS;->aos:I

    return p1
.end method

.method static synthetic aBG(Lcom/loc/aS;J)J
    .locals 1

    iput-wide p1, p0, Lcom/loc/aS;->aov:J

    return-wide p1
.end method

.method static synthetic aBH(Lcom/loc/aS;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0

    iput-object p1, p0, Lcom/loc/aS;->aoz:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method static synthetic aBI(Lcom/loc/aS;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/aS;->aon:Z

    return v0
.end method

.method static synthetic aBJ(Lcom/loc/aS;I)I
    .locals 0

    iput p1, p0, Lcom/loc/aS;->aoo:I

    return p1
.end method

.method static synthetic aBK(Lcom/loc/aS;)I
    .locals 1

    iget v0, p0, Lcom/loc/aS;->aoo:I

    return v0
.end method

.method static synthetic aBL(Lcom/loc/aS;J)J
    .locals 1

    iput-wide p1, p0, Lcom/loc/aS;->aoq:J

    return-wide p1
.end method

.method static synthetic aBM(Lcom/loc/aS;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/loc/aS;->r:Ljava/lang/String;

    return-object p1
.end method

.method private static aBd(Ljava/lang/Object;)Z
    .locals 3

    :try_start_0
    const-class v0, Landroid/net/wifi/WifiManager;

    const-string/jumbo v1, "isScanAlwaysAvailable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static aBe(Ljava/lang/Object;)I
    .locals 3

    :try_start_0
    const-class v0, Landroid/hardware/Sensor;

    const-string/jumbo v1, "getMinDelay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private aBf(Landroid/content/BroadcastReceiver;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private aBg(Landroid/content/BroadcastReceiver;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method private static aBh(Ljava/util/List;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    new-instance v1, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    return-void

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_3

    :goto_2
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "null"

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private aBi(Landroid/telephony/CellLocation;)Z
    .locals 5

    const v4, 0xffff

    const/4 v3, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/loc/aS;->aBj(Landroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v1, v0

    :cond_1
    return v1

    :cond_2
    return v1

    :pswitch_0
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-gt v2, v4, :cond_1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    const v3, 0xfffffff

    if-ge v2, v3, :cond_1

    goto :goto_0

    :pswitch_1
    :try_start_0
    const-string/jumbo v2, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/bF;->aEv(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    const-string/jumbo v2, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/bF;->aEv(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    const-string/jumbo v2, "getBaseStationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/bF;->aEv(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static aBj(Landroid/telephony/CellLocation;Landroid/content/Context;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x9

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    if-eqz p0, :cond_0

    instance-of v2, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v2, :cond_1

    :try_start_0
    const-string/jumbo v1, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static aBk(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 12

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v6, v0

    move-object v7, v3

    move v0, v1

    move-object v1, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v6, v2, :cond_2

    move v8, v0

    :goto_1
    const/4 v0, 0x4

    if-eq v8, v0, :cond_10

    return-object v7

    :cond_2
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_2
    move-object v2, v1

    move-object v3, v7

    move v1, v0

    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-object v7, v3

    move v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_3
    :try_start_0
    const-string/jumbo v3, "android.telephony.CellInfoGsm"

    invoke-virtual {v9, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "android.telephony.CellInfoWcdma"

    invoke-virtual {v9, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "android.telephony.CellInfoLte"

    invoke-virtual {v9, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v8, "android.telephony.CellInfoCdma"

    invoke-virtual {v9, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v5, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v10, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_8

    const/4 v8, 0x0

    :goto_4
    if-gtz v8, :cond_9

    :cond_4
    move-object v2, v1

    move-object v3, v7

    move v1, v8

    goto :goto_3

    :cond_5
    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x2

    goto :goto_4

    :cond_7
    const/4 v8, 0x3

    goto :goto_4

    :cond_8
    const/4 v8, 0x4

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    const/4 v11, 0x1

    if-eq v8, v11, :cond_a

    const/4 v3, 0x2

    if-eq v8, v3, :cond_b

    const/4 v3, 0x3

    if-eq v8, v3, :cond_c

    const/4 v3, 0x4

    if-eq v8, v3, :cond_d

    :goto_5
    :try_start_1
    const-string/jumbo v2, "getCellIdentity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/loc/bF;->aEu(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v0, 0x4

    if-eq v8, v0, :cond_e

    const/4 v0, 0x3

    if-eq v8, v0, :cond_f

    const-string/jumbo v0, "getLac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/bF;->aEv(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string/jumbo v0, "getCid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/loc/bF;->aEv(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v0, v3, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_6
    move-object v7, v0

    goto/16 :goto_1

    :cond_a
    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_b
    invoke-virtual {v4, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_c
    invoke-virtual {v5, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_d
    invoke-virtual {v10, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_e
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    const-string/jumbo v1, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/bF;->aEv(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v4

    const-string/jumbo v1, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/bF;->aEv(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v5

    const-string/jumbo v1, "getBasestationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/bF;->aEv(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const-string/jumbo v3, "getLongitude"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v10}, Lcom/loc/bF;->aEv(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string/jumbo v10, "getLatitude"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lcom/loc/bF;->aEv(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, v0

    goto/16 :goto_1

    :cond_f
    :try_start_5
    const-string/jumbo v0, "getTac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/bF;->aEv(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string/jumbo v0, "getCi"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/loc/bF;->aEv(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    invoke-virtual {v0, v3, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    move-object v7, v0

    move v0, v8

    goto/16 :goto_2

    :cond_10
    return-object v1

    :catch_1
    move-exception v2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move v0, v8

    goto/16 :goto_2

    :catch_3
    move-exception v1

    move-object v1, v0

    move v0, v8

    goto/16 :goto_2
.end method

.method private static aBl(Landroid/net/wifi/WifiManager;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v0, "startScanActive"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/loc/bF;->aEu(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void
.end method

.method private static aBm(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1000

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move v0, v1

    :goto_0
    sget-object v2, Lcom/loc/aS;->aoI:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    return v3

    :catch_0
    move-exception v0

    return v1

    :cond_0
    sget-object v2, Lcom/loc/aS;->aoI:[Ljava/lang/String;

    aget-object v5, v2, v0

    if-nez v4, :cond_2

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_1

    move v2, v1

    :goto_2
    array-length v6, v4

    if-ge v2, v6, :cond_1

    aget-object v6, v4, v2

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    return v1
.end method

.method protected static aBn(Landroid/content/Context;)Z
    .locals 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "mock_location"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_0
    return v1

    :cond_1
    return v3

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v0, 0x80

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v6, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x1000

    invoke-virtual {v5, v4, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v9, :cond_3

    array-length v10, v9

    move v4, v2

    :goto_1
    if-ge v4, v10, :cond_3

    aget-object v11, v9, v4

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    :goto_2
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2
.end method

.method static synthetic aBo(Lcom/loc/aS;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    iput-object p1, p0, Lcom/loc/aS;->aoE:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic aBp(Lcom/loc/aS;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic aBq(Lcom/loc/aS;Lcom/loc/bK;)Lcom/loc/bK;
    .locals 0

    iput-object p1, p0, Lcom/loc/aS;->aox:Lcom/loc/bK;

    return-object p1
.end method

.method static synthetic aBr(Lcom/loc/aS;)Lcom/loc/bK;
    .locals 1

    iget-object v0, p0, Lcom/loc/aS;->aox:Lcom/loc/bK;

    return-object v0
.end method

.method static synthetic aBs(Lcom/loc/aS;Landroid/telephony/PhoneStateListener;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x111

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method static synthetic aBt(Lcom/loc/aS;Lcom/loc/bp;)Lcom/loc/bp;
    .locals 0

    iput-object p1, p0, Lcom/loc/aS;->aoy:Lcom/loc/bp;

    return-object p1
.end method

.method static synthetic aBu(Lcom/loc/aS;)Lcom/loc/bp;
    .locals 1

    iget-object v0, p0, Lcom/loc/aS;->aoy:Lcom/loc/bp;

    return-object v0
.end method

.method static synthetic aBv(Lcom/loc/aS;Landroid/location/GpsStatus$NmeaListener;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/aS;->aoj:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/loc/aS;->aoj:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    return-void
.end method

.method static synthetic aBw(Lcom/loc/aS;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/loc/aS;->aok:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic aBx(Lcom/loc/aS;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic aBy(Lcom/loc/aS;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/loc/aS;->aoB:Ljava/util/List;

    return-object v0
.end method

.method static synthetic aBz(Lcom/loc/aS;J)J
    .locals 1

    iput-wide p1, p0, Lcom/loc/aS;->aou:J

    return-wide p1
.end method

.method static synthetic y()I
    .locals 1

    sget v0, Lcom/loc/aS;->aoF:I

    return v0
.end method

.method private z()V
    .locals 1

    iget-object v0, p0, Lcom/loc/aS;->aok:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/loc/aS;->aoG:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/aS;->aok:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/loc/aS;->aBl(Landroid/net/wifi/WifiManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-void
.end method


# virtual methods
.method protected final a(F)Ljava/util/List;
    .locals 9

    const/4 v8, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/loc/aS;->c()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {p0}, Lcom/loc/aS;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellLocation;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/loc/aS;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v4, v0

    long-to-double v0, v0

    float-to-double v4, p1

    const-wide v6, 0x40e86a0000000000L    # 50000.0

    div-double v4, v6, v4

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final a(Z)Ljava/util/List;
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/loc/aS;->d()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    if-eqz p1, :cond_2

    :cond_1
    :try_start_0
    iget-wide v6, p0, Lcom/loc/aS;->aou:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/loc/aS;->aoB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit p0

    return-object v4

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/loc/aS;->aou:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xdac

    cmp-long v2, v6, v8

    if-ltz v2, :cond_3

    move v2, v1

    :goto_2
    if-nez v2, :cond_4

    :goto_3
    if-nez v1, :cond_1

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/loc/aS;->aoB:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a()V
    .locals 2

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/loc/aS;->b()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/loc/aS;->e:Z

    new-instance v1, Lcom/loc/G;

    invoke-direct {v1, p0, v0}, Lcom/loc/G;-><init>(Lcom/loc/aS;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/aS;->aoD:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/loc/aS;->aoD:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected final a(I)V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/loc/aS;->aoF:I

    if-eq p1, v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/aS;->aoB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/loc/aS;->aoA:Lcom/loc/r;

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    if-nez v0, :cond_2

    :goto_1
    const/16 v0, 0x1388

    if-ge p1, v0, :cond_3

    :goto_2
    return-void

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/loc/aS;->aoA:Lcom/loc/r;

    invoke-direct {p0, v0}, Lcom/loc/aS;->aBg(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/loc/aS;->aoA:Lcom/loc/r;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    goto :goto_1

    :cond_3
    sput p1, Lcom/loc/aS;->aoF:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    new-instance v0, Lcom/loc/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loc/r;-><init>(Lcom/loc/aS;B)V

    iput-object v0, p0, Lcom/loc/aS;->aoA:Lcom/loc/r;

    iget-object v0, p0, Lcom/loc/aS;->aoA:Lcom/loc/r;

    invoke-direct {p0, v0}, Lcom/loc/aS;->aBf(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/loc/aS;->z()V

    goto :goto_2
.end method

.method protected final aAX(I)I
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    return v2

    :cond_1
    return v2

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/aS;->aBe(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final aAY(I)I
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    return v2

    :cond_1
    return v2

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getPower()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method protected final aAZ(I)D
    .locals 4

    const-wide/16 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    return-wide v2

    :cond_1
    return-wide v2

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getResolution()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected final aBa(I)B
    .locals 3

    const/16 v2, 0x7f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    return v2

    :cond_1
    return v2

    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-gt v0, v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method protected final aBb(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    const-string/jumbo v0, "null"

    return-object v0

    :cond_1
    const-string/jumbo v0, "null"

    return-object v0

    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final aBc(I)B
    .locals 3

    const/16 v2, 0x7f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    return v2

    :cond_1
    return v2

    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-gt v0, v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method protected final b(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    const-string/jumbo v0, "null"

    return-object v0

    :cond_1
    const-string/jumbo v0, "null"

    return-object v0

    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(F)Ljava/util/List;
    .locals 10

    const/4 v9, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/loc/aS;->c()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/loc/aS;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellLocation;

    if-eqz v0, :cond_1

    instance-of v4, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/loc/aS;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    float-to-double v4, p1

    const-wide v6, 0x40e86a0000000000L    # 50000.0

    div-double v4, v6, v4

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final b()V
    .locals 4

    iget-object v1, p0, Lcom/loc/aS;->aoH:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/loc/aS;->e:Z

    iget-object v0, p0, Lcom/loc/aS;->aox:Lcom/loc/bK;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/loc/aS;->aoy:Lcom/loc/bp;

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    if-nez v0, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/loc/aS;->aoE:Landroid/os/Looper;

    if-nez v0, :cond_6

    :goto_3
    iget-object v0, p0, Lcom/loc/aS;->aoD:Ljava/lang/Thread;

    if-nez v0, :cond_7

    :goto_4
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/aS;->aox:Lcom/loc/bK;

    iget-object v2, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_1

    :goto_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aS;->aox:Lcom/loc/bK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_5

    :cond_2
    iget-object v0, p0, Lcom/loc/aS;->aoy:Lcom/loc/bp;

    iget-object v2, p0, Lcom/loc/aS;->aoj:Landroid/location/LocationManager;

    if-nez v2, :cond_4

    :cond_3
    :goto_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aS;->aoy:Lcom/loc/bp;

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/loc/aS;->aoj:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    goto :goto_6

    :cond_5
    iget-object v0, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/loc/aS;->aoE:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aS;->aoE:Landroid/os/Looper;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/loc/aS;->aoD:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aS;->aoD:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method protected final c(I)D
    .locals 4

    const-wide/16 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    return-wide v2

    :cond_1
    return-wide v2

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected final c()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_3

    :cond_1
    return v3

    :cond_2
    iget-object v1, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/loc/aS;->aop:Z

    if-eqz v1, :cond_0

    return v4

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/aS;->aov:J

    iput-object v0, p0, Lcom/loc/aS;->aoz:Landroid/telephony/CellLocation;

    return v4

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected final d()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/aS;->aok:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/loc/aS;->aok:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/loc/aS;->aok:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/loc/aS;->aBd(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0
.end method

.method protected final e()Z
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/aS;->aoj:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/loc/aS;->aoj:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/aS;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/loc/aS;->k:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/aS;->k:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/loc/aS;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/loc/aS;->aom:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/aS;->aom:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aS;->aom:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/loc/aS;->aom:Ljava/lang/String;

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/loc/aS;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/aS;->m:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aS;->m:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/loc/aS;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/aS;->aon:Z

    return v0
.end method

.method protected final j()Ljava/util/List;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/loc/aS;->c()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/aS;->aoz:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/loc/aS;->aBi(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/loc/aS;->aoz:Landroid/telephony/CellLocation;

    :goto_0
    iget-wide v2, p0, Lcom/loc/aS;->aov:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_3
    invoke-direct {p0}, Lcom/loc/aS;->A()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/aS;->aBi(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/aS;->aov:J

    goto :goto_0
.end method

.method protected final k()B
    .locals 1

    invoke-virtual {p0}, Lcom/loc/aS;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x80

    return v0

    :cond_0
    iget v0, p0, Lcom/loc/aS;->aoo:I

    int-to-byte v0, v0

    return v0
.end method

.method protected final l()Ljava/util/List;
    .locals 7

    const v6, 0xffff

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/loc/aS;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/loc/aS;->aoi:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    return-object v2

    :cond_2
    return-object v2

    :cond_3
    return-object v2

    :cond_4
    return-object v2

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    const/16 v4, 0xf

    if-gt v1, v4, :cond_1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v4

    const v5, 0xfffffff

    if-eq v4, v5, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected final m()Ljava/util/List;
    .locals 13

    const-wide/16 v10, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, -0x1

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/loc/aS;->e()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    move-object v12, v0

    move-wide v0, v4

    move-object v5, v12

    const-wide/16 v8, 0x0

    cmp-long v4, v0, v8

    if-lez v4, :cond_3

    move v4, v2

    :goto_1
    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v10

    :cond_0
    const-wide/32 v8, 0x7fffffff

    cmp-long v4, v0, v8

    if-gtz v4, :cond_4

    :goto_2
    if-nez v2, :cond_1

    div-long/2addr v0, v10

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6

    :cond_2
    iget-wide v4, p0, Lcom/loc/aS;->aoq:J

    iget-object v0, p0, Lcom/loc/aS;->r:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method protected final n()J
    .locals 11

    const-wide/16 v8, 0xa

    const-wide/16 v6, 0x0

    const/16 v4, 0xd

    iget-wide v2, p0, Lcom/loc/aS;->aoq:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return-wide v6

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    if-ne v0, v4, :cond_2

    return-wide v2

    :cond_2
    if-gt v0, v4, :cond_3

    mul-long v0, v2, v8

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move v10, v2

    move-wide v2, v0

    move v0, v10

    goto :goto_1

    :cond_3
    div-long v0, v2, v8

    goto :goto_2
.end method

.method protected final o()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/loc/aS;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/aS;->s:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/loc/aS;->aok:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/loc/aS;->aok:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/aS;->aok:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/aS;->aok:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aS;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/aS;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/aS;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/loc/aS;->s:Ljava/lang/String;

    const-string/jumbo v1, ":"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aS;->s:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/loc/aS;->s:Ljava/lang/String;

    return-object v0
.end method

.method protected final p()I
    .locals 1

    iget v0, p0, Lcom/loc/aS;->aor:I

    return v0
.end method

.method protected final q()I
    .locals 1

    iget v0, p0, Lcom/loc/aS;->aos:I

    return v0
.end method

.method protected final r()I
    .locals 1

    iget v0, p0, Lcom/loc/aS;->aot:I

    return v0
.end method

.method protected final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/aS;->w:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/aS;->w:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aS;->w:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/loc/aS;->w:Ljava/lang/String;

    return-object v0
.end method

.method protected final t()Ljava/util/List;
    .locals 8

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/loc/aS;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object v3

    :cond_1
    invoke-virtual {p0, v4}, Lcom/loc/aS;->a(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0}, Lcom/loc/aS;->aBh(Ljava/util/List;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x28

    if-ge v4, v5, :cond_0

    if-nez v1, :cond_2

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v6, ":"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected final u()V
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/aS;->aoB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/loc/aS;->aoA:Lcom/loc/r;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    if-nez v0, :cond_1

    :goto_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    new-instance v0, Lcom/loc/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loc/r;-><init>(Lcom/loc/aS;B)V

    iput-object v0, p0, Lcom/loc/aS;->aoA:Lcom/loc/r;

    iget-object v0, p0, Lcom/loc/aS;->aoA:Lcom/loc/r;

    invoke-direct {p0, v0}, Lcom/loc/aS;->aBf(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/loc/aS;->z()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/loc/aS;->aoA:Lcom/loc/r;

    invoke-direct {p0, v0}, Lcom/loc/aS;->aBg(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/loc/aS;->aoA:Lcom/loc/r;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    goto :goto_1
.end method

.method protected final v()V
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/aS;->aoB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/loc/aS;->aoA:Lcom/loc/r;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/loc/aS;->aoA:Lcom/loc/r;

    invoke-direct {p0, v0}, Lcom/loc/aS;->aBg(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/loc/aS;->aoA:Lcom/loc/r;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/loc/aS;->aoC:Ljava/util/Timer;

    goto :goto_1
.end method

.method protected final w()B
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/aS;->aol:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-byte v0, v0

    return v0

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method protected final x()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/loc/aS;->aoh:Landroid/content/Context;

    return-object v0
.end method
