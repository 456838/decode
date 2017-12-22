.class public Lcom/loc/X;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static amH:I

.field public static final amr:Ljava/lang/StringBuilder;


# instance fields
.field private F:Ljava/lang/String;

.field private alI:Landroid/content/Context;

.field private alJ:Landroid/net/ConnectivityManager;

.field private alK:Lcom/loc/ci;

.field private alL:Lcom/loc/v;

.field private alM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private alN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private alO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private alP:Lcom/loc/bS;

.field private alQ:Landroid/net/wifi/WifiInfo;

.field private alR:Lorg/json/JSONObject;

.field private alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field private alT:J

.field private alU:J

.field private alV:J

.field private alW:Z

.field private alX:Z

.field private alY:J

.field private alZ:J

.field amA:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field private amB:Z

.field private amC:Z

.field private amD:J

.field amE:Ljava/lang/Object;

.field amF:Z

.field amG:Lcom/loc/cs;

.field private ama:I

.field private amb:Ljava/lang/String;

.field private amc:Lcom/loc/f;

.field private amd:Ljava/util/Timer;

.field private ame:Ljava/util/TimerTask;

.field private amf:I

.field private amg:Lcom/loc/q;

.field private amh:Lcom/loc/B;

.field public ami:Z

.field private amj:[I

.field private amk:Ljava/lang/String;

.field private aml:Ljava/lang/String;

.field private amm:J

.field private amn:J

.field private amo:Ljava/lang/String;

.field private amp:Lcom/loc/bw;

.field amq:Lcom/loc/aE;

.field ams:Lcom/loc/aX;

.field private amt:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field private amu:Ljava/lang/String;

.field private amv:Ljava/util/Timer;

.field private amw:Ljava/util/TimerTask;

.field private amx:Ljava/lang/String;

.field private amy:I

.field private amz:I

.field e:I

.field f:Z

.field public i:Z

.field j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    sput v0, Lcom/loc/X;->amH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    iput-object v2, p0, Lcom/loc/X;->alJ:Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/X;->alM:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/X;->alN:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loc/X;->alO:Ljava/util/HashMap;

    new-instance v0, Lcom/loc/bS;

    invoke-direct {v0, p0, v2}, Lcom/loc/bS;-><init>(Lcom/loc/X;Lcom/loc/al;)V

    iput-object v0, p0, Lcom/loc/X;->alP:Lcom/loc/bS;

    iput-object v2, p0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    iput-object v2, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    iput-object v2, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-wide v4, p0, Lcom/loc/X;->alT:J

    iput-wide v4, p0, Lcom/loc/X;->alU:J

    iput-wide v4, p0, Lcom/loc/X;->alV:J

    iput-boolean v3, p0, Lcom/loc/X;->alW:Z

    iput-boolean v3, p0, Lcom/loc/X;->alX:Z

    iput-wide v4, p0, Lcom/loc/X;->alY:J

    iput-wide v4, p0, Lcom/loc/X;->alZ:J

    iput v3, p0, Lcom/loc/X;->ama:I

    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/loc/X;->F:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/X;->amb:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/X;->amc:Lcom/loc/f;

    iput-object v2, p0, Lcom/loc/X;->amd:Ljava/util/Timer;

    iput-object v2, p0, Lcom/loc/X;->ame:Ljava/util/TimerTask;

    iput v3, p0, Lcom/loc/X;->amf:I

    iput-object v2, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    iput-object v2, p0, Lcom/loc/X;->amh:Lcom/loc/B;

    iput-boolean v3, p0, Lcom/loc/X;->ami:Z

    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v3, v0, v6

    const/4 v1, 0x2

    aput v3, v0, v1

    iput-object v0, p0, Lcom/loc/X;->amj:[I

    iput-object v2, p0, Lcom/loc/X;->amk:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/X;->aml:Ljava/lang/String;

    iput-wide v4, p0, Lcom/loc/X;->amm:J

    iput-wide v4, p0, Lcom/loc/X;->amn:J

    iput-object v2, p0, Lcom/loc/X;->amo:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/X;->amp:Lcom/loc/bw;

    iput-object v2, p0, Lcom/loc/X;->amq:Lcom/loc/aE;

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/X;->e:I

    iput-boolean v3, p0, Lcom/loc/X;->f:Z

    iput-object v2, p0, Lcom/loc/X;->amt:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-object v2, p0, Lcom/loc/X;->amu:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/X;->amv:Ljava/util/Timer;

    iput-object v2, p0, Lcom/loc/X;->amw:Ljava/util/TimerTask;

    iput-object v2, p0, Lcom/loc/X;->amx:Ljava/lang/String;

    iput v3, p0, Lcom/loc/X;->amy:I

    iput v3, p0, Lcom/loc/X;->amz:I

    iput-object v2, p0, Lcom/loc/X;->amA:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-boolean v6, p0, Lcom/loc/X;->amB:Z

    iput-boolean v6, p0, Lcom/loc/X;->amC:Z

    iput-wide v4, p0, Lcom/loc/X;->amD:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/X;->amE:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/loc/X;->i:Z

    const/16 v0, 0xc

    iput v0, p0, Lcom/loc/X;->j:I

    iput-boolean v6, p0, Lcom/loc/X;->amF:Z

    new-instance v0, Lcom/loc/cs;

    invoke-direct {v0, p0}, Lcom/loc/cs;-><init>(Lcom/loc/X;)V

    iput-object v0, p0, Lcom/loc/X;->amG:Lcom/loc/cs;

    return-void
.end method

.method private A()Z
    .locals 2

    iget-object v0, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/loc/X;->alJ:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    iget-object v1, p0, Lcom/loc/X;->alJ:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/loc/ci;->aFr(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method

.method private B()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v1, "poiid"

    invoke-static {v0, v1}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/loc/X;->amb:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v1, "poiid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_2

    iput-object v0, p0, Lcom/loc/X;->amb:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "setPoiid"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/loc/X;->amb:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/X;->amb:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private C()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "version"

    invoke-static {v0}, Lcom/loc/q;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "getCollVer"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private D()V
    .locals 2

    iget-object v0, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/loc/X;->ami:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    iget-boolean v1, p0, Lcom/loc/X;->ami:Z

    invoke-virtual {v0, v1}, Lcom/loc/ci;->a(Z)V

    return-void
.end method

.method private E()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/aH;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/loc/aH;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    :cond_1
    sget-object v0, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "src is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    :cond_2
    sget-object v0, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "license is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2
.end method

.method private F()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/X;->amj:[I

    aget v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/loc/X;->amj:[I

    array-length v4, v4

    if-lt v0, v4, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/loc/X;->amj:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/aP;->aAQ([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "coluphist"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/loc/X;->amj:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v4, "setColUpHist"

    invoke-static {v0, v2, v4}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(I)Z
    .locals 5

    const/16 v1, 0x14

    const/4 v0, 0x1

    const/16 v2, 0x14

    :try_start_0
    invoke-static {p1, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "APS"

    const-string/jumbo v4, "wifiSigFine"

    invoke-static {v2, v3, v4}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(J)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v4}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    move v2, v1

    :goto_2
    if-nez v2, :cond_4

    :cond_0
    :goto_3
    return v0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/loc/bd;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k()J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method private awB(Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method private awD(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 26

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    const-string/jumbo v12, "0"

    const-string/jumbo v13, "0"

    const-string/jumbo v14, "0"

    const-string/jumbo v15, "0"

    sget-object v16, Lcom/loc/aH;->i:Ljava/lang/String;

    const-string/jumbo v2, "888888888888888"

    sput-object v2, Lcom/loc/aH;->b:Ljava/lang/String;

    const-string/jumbo v2, "888888888888888"

    sput-object v2, Lcom/loc/aH;->c:Ljava/lang/String;

    const-string/jumbo v2, ""

    sput-object v2, Lcom/loc/aH;->d:Ljava/lang/String;

    const/16 v2, -0x8000

    const/16 v3, 0x7fff

    invoke-static {v2, v3}, Lcom/loc/bd;->aDi(II)I

    move-result v17

    const-string/jumbo v7, ""

    const-string/jumbo v6, ""

    const-string/jumbo v8, ""

    sget-object v3, Lcom/loc/aH;->e:Ljava/lang/String;

    sget-object v2, Lcom/loc/aH;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/loc/X;->amC:Z

    if-eqz v4, :cond_3

    :goto_0
    move-object v4, v3

    move-object v3, v2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->alL:Lcom/loc/v;

    invoke-virtual {v2}, Lcom/loc/v;->c()I

    move-result v21

    invoke-virtual {v2}, Lcom/loc/v;->e()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v2}, Lcom/loc/v;->a()Ljava/util/ArrayList;

    move-result-object v22

    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_4

    move-object v10, v5

    :goto_1
    if-nez v9, :cond_5

    :cond_0
    :goto_2
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->alJ:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    :goto_3
    invoke-static {v2}, Lcom/loc/bd;->aDl(Landroid/net/NetworkInfo;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    move-object v5, v6

    move-object v6, v7

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/loc/X;->B()V

    const-string/jumbo v2, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "GBK"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "\"?>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<Cell_Req ver=\"3.0\"><HDR version=\"3.0\" cdma=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\" gtype=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "1"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :goto_5
    const-string/jumbo v2, "\" glong=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\" glat=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\" precision=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\"><src>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</src><license>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</license><key>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</key><clientid>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/loc/aH;->h:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</clientid><imei>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/loc/aH;->b:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</imei><imsi>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/loc/aH;->c:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</imsi><reqid>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</reqid><smac>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/loc/X;->F:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</smac><sdkv>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/loc/X;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</sdkv><corv>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/loc/X;->C()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</corv><poiid>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/loc/X;->amb:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</poiid></HDR><DRR phnum=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/loc/aH;->d:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\" nettype=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\" inftype=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "\">"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/loc/X;->p()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/loc/X;->n()V

    :cond_1
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "<nb>%s</nb>"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v18, v9, v22

    invoke-static {v2, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<macs>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "<![CDATA[%s]]>"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v19, v9, v22

    invoke-static {v2, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</macs>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<macsage>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/loc/X;->alZ:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</macsage>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    const-string/jumbo v2, "<mmac>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "<![CDATA[%s]]>"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v20, v9, v22

    invoke-static {v2, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</mmac>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "</DRR></Cell_Req>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/loc/X;->awF(Ljava/lang/StringBuilder;)V

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v9, "reversegeo"

    invoke-static {v2, v9}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    :goto_8
    move v2, v7

    :goto_9
    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    const/4 v7, 0x0

    iput-short v7, v2, Lcom/loc/f;->b:S

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v7, "multi"

    invoke-static {v2, v7}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_2
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    iput-object v4, v2, Lcom/loc/f;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    iput-object v3, v2, Lcom/loc/f;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    invoke-static {}, Lcom/loc/bd;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/f;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/loc/bd;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/f;->g:Ljava/lang/String;

    sget-object v2, Lcom/loc/aH;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    sget-object v3, Lcom/loc/aH;->k:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/f;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    iput-object v10, v2, Lcom/loc/f;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    iput-object v12, v2, Lcom/loc/f;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/loc/X;->alX:Z

    if-nez v2, :cond_1f

    const-string/jumbo v2, "0"

    :goto_d
    iput-object v2, v3, Lcom/loc/f;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    iput-object v13, v2, Lcom/loc/f;->ajw:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    iput-object v14, v2, Lcom/loc/f;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    iput-object v15, v2, Lcom/loc/f;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/loc/f;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    sget-object v3, Lcom/loc/aH;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/f;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    sget-object v3, Lcom/loc/aH;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/f;->q:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/f;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/X;->F:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/f;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    invoke-virtual/range {p0 .. p0}, Lcom/loc/X;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/f;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    invoke-direct/range {p0 .. p0}, Lcom/loc/X;->C()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/f;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/X;->amb:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/f;->F:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    sget-object v3, Lcom/loc/aH;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/f;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    iput-object v6, v2, Lcom/loc/f;->x:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    iput-object v5, v2, Lcom/loc/f;->y:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/f;->z:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    iput-object v8, v2, Lcom/loc/f;->A:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/f;->B:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/f;->D:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/loc/X;->alZ:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/f;->E:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/f;->ajx:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v11

    :cond_3
    const-string/jumbo v3, "UC_nlp_20131029"

    const-string/jumbo v2, "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U"

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v2, "1"

    move-object v10, v2

    goto/16 :goto_1

    :cond_5
    sget-object v2, Lcom/loc/aH;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "888888888888888"

    sget-object v5, Lcom/loc/aH;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_e
    sget-object v2, Lcom/loc/aH;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    :goto_f
    sget-object v2, Lcom/loc/aH;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "888888888888888"

    sget-object v5, Lcom/loc/aH;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :goto_10
    sget-object v2, Lcom/loc/aH;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "888888888888888"

    sput-object v2, Lcom/loc/aH;->c:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v2, "888888888888888"

    sput-object v2, Lcom/loc/aH;->b:Ljava/lang/String;

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->alI:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/az;->azn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/aH;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_e

    :catch_0
    move-exception v2

    const-string/jumbo v5, "APS"

    const-string/jumbo v23, "getApsReq part4"

    move-object/from16 v0, v23

    invoke-static {v2, v5, v0}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_7
    const-string/jumbo v2, "888888888888888"

    sput-object v2, Lcom/loc/aH;->b:Ljava/lang/String;

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->alI:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/az;->azn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/aH;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_e

    :catch_1
    move-exception v2

    const-string/jumbo v5, "APS"

    const-string/jumbo v23, "getApsReq part3"

    move-object/from16 v0, v23

    invoke-static {v2, v5, v0}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_8
    const-string/jumbo v2, "888888888888888"

    sput-object v2, Lcom/loc/aH;->b:Ljava/lang/String;

    goto :goto_f

    :cond_9
    const-string/jumbo v2, "888888888888888"

    sput-object v2, Lcom/loc/aH;->c:Ljava/lang/String;

    :try_start_3
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/aH;->c:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_10

    :catch_2
    move-exception v2

    const-string/jumbo v5, "APS"

    const-string/jumbo v23, "getApsReq part2"

    move-object/from16 v0, v23

    invoke-static {v2, v5, v0}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_a
    const-string/jumbo v2, "888888888888888"

    sput-object v2, Lcom/loc/aH;->c:Ljava/lang/String;

    :try_start_4
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/aH;->c:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_10

    :catch_3
    move-exception v2

    const-string/jumbo v5, "APS"

    const-string/jumbo v23, "getApsReq part1"

    move-object/from16 v0, v23

    invoke-static {v2, v5, v0}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catch_4
    move-exception v2

    const-string/jumbo v23, "APS"

    const-string/jumbo v24, "getApsReq part"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v2, v0, v1}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    goto/16 :goto_3

    :cond_b
    invoke-static {v9}, Lcom/loc/bd;->aDm(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/loc/X;->p()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    const-string/jumbo v2, "1"

    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/loc/X;->p()Z

    move-result v6

    if-eqz v6, :cond_e

    :goto_12
    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/X;->awB(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, "2"

    goto :goto_11

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/loc/X;->n()V

    goto :goto_12

    :cond_f
    const-string/jumbo v2, "\" gmock=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/loc/X;->alX:Z

    if-nez v2, :cond_10

    const-string/jumbo v2, "0"

    :goto_13
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_10
    const-string/jumbo v2, "1"

    goto :goto_13

    :cond_11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch v21, :pswitch_data_0

    invoke-direct/range {p0 .. p0}, Lcom/loc/X;->awQ()V

    :cond_12
    move-object v2, v8

    :goto_14
    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v8, v2

    goto/16 :goto_6

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/loc/X;->awQ()V

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/bw;

    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<mcc>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/loc/bw;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</mcc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<mnc>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/loc/bw;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</mnc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<lac>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bw;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</lac>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<cellid>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bw;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "</cellid>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<signal>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v2, v2, Lcom/loc/bw;->j:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</signal>"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x1

    move v7, v2

    :goto_15
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_12

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/bw;

    iget v0, v2, Lcom/loc/bw;->c:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/loc/bw;->d:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/loc/bw;->j:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v7, v2, :cond_13

    :goto_16
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_15

    :cond_13
    const-string/jumbo v2, "*"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/bw;

    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<mcc>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/loc/bw;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</mcc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<sid>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bw;->g:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</sid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<nid>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bw;->aqR:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</nid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<bid>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bw;->aqS:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</bid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/loc/bw;->aqQ:I

    if-gtz v7, :cond_15

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/loc/X;->awQ()V

    :goto_17
    const-string/jumbo v7, "<signal>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v2, v2, Lcom/loc/bw;->j:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "</signal>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_14

    :cond_15
    iget v7, v2, Lcom/loc/bw;->e:I

    if-lez v7, :cond_14

    iget v7, v2, Lcom/loc/bw;->aqQ:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/loc/X;->amy:I

    iget v7, v2, Lcom/loc/bw;->e:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/loc/X;->amz:I

    const-string/jumbo v7, "<lon>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bw;->aqQ:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</lon>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<lat>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/bw;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</lat>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/X;->awB(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-nez v2, :cond_17

    :goto_18
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/loc/X;->alM:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    const/16 v22, 0xf

    move/from16 v0, v22

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    move v7, v2

    :goto_19
    move/from16 v0, v22

    if-ge v7, v0, :cond_1

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v23, "*"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_19

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v7, -0x80

    if-lt v2, v7, :cond_18

    const/16 v7, 0x7f

    if-gt v2, v7, :cond_18

    :goto_1a
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x20

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v22, "UTF-8"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    :goto_1b
    const/16 v9, 0x20

    if-ge v2, v9, :cond_19

    move-object v2, v7

    :goto_1c
    const-string/jumbo v7, "*"

    const-string/jumbo v9, "."

    invoke-virtual {v2, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18

    :cond_18
    const/4 v2, 0x0

    goto :goto_1a

    :catch_5
    move-exception v2

    const-string/jumbo v22, "APS"

    const-string/jumbo v23, "getApsReq"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v2, v0, v1}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v9

    goto :goto_1b

    :cond_19
    const-string/jumbo v2, "unkwn"

    goto :goto_1c

    :cond_1a
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<macs>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "<![CDATA[%s]]>"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v20, v9, v22

    invoke-static {v2, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</macs>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_1b
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v9, "reversegeo"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    move-result v2

    goto/16 :goto_9

    :catch_6
    move-exception v2

    const-string/jumbo v9, "APS"

    const-string/jumbo v22, "getApsReq part"

    move-object/from16 v0, v22

    invoke-static {v2, v9, v0}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    const/4 v7, 0x2

    iput-short v7, v2, Lcom/loc/f;->b:S

    goto/16 :goto_a

    :cond_1d
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v7, "multi"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->amc:Lcom/loc/f;

    const/4 v7, 0x1

    iput-short v7, v2, Lcom/loc/f;->b:S
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_b

    :catch_7
    move-exception v2

    const-string/jumbo v7, "APS"

    const-string/jumbo v9, "getApsReq"

    invoke-static {v2, v7, v9}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/X;->alI:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/bd;->aDg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/aH;->k:Ljava/lang/String;

    goto/16 :goto_c

    :cond_1f
    const-string/jumbo v2, "1"

    goto/16 :goto_d

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private awE(Ljava/lang/String;ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x6

    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_0
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    return-object v0

    :cond_1
    sget-object v0, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    new-instance v0, Lcom/loc/by;

    invoke-direct {v0}, Lcom/loc/by;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/loc/X;->amq:Lcom/loc/aE;

    iget-object v2, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/loc/X;->amc:Lcom/loc/f;

    invoke-static {}, Lcom/loc/aH;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/loc/aE;->azN(Landroid/content/Context;Lorg/json/JSONObject;Lcom/loc/f;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/loc/bd;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/X;->amD:J

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v3, "\"status\":\"0\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lcom/loc/bJ;->aEL([B)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/loc/by;->a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez v1, :cond_9

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {v0, v6}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "location is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "getApsLoc"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {v0, v7}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "please check the network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {v0, v7}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "please check the network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    return-object v0

    :cond_4
    invoke-virtual {v0, v2}, Lcom/loc/by;->b(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {v0, v8}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "decrypt response data error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    return-object v0

    :cond_6
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_7
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a()I

    move-result v0

    if-eqz v0, :cond_b

    :cond_8
    :goto_0
    iget-boolean v0, p0, Lcom/loc/X;->amC:Z

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(Z)V

    iget-boolean v0, p0, Lcom/loc/X;->amB:Z

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Z)V

    return-object v1

    :cond_9
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/X;->amk:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v2, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "location faile retype:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " rdesc:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/loc/X;->amk:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    return-object v1

    :cond_a
    iget-object v0, p0, Lcom/loc/X;->amk:Ljava/lang/String;

    goto :goto_1

    :cond_b
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b()I

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "-5"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {v1, v8}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    :goto_2
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    const-string/jumbo v0, "1"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "2"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "14"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "24"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "-1"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v1, v6}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    goto :goto_2
.end method

.method private awF(Ljava/lang/StringBuilder;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, -0x1

    if-eqz p1, :cond_0

    const/16 v1, 0x1a

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, " phnum=\"\""

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string/jumbo v3, " nettype=\"\""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " nettype=\"UNKWN\""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, " inftype=\"\""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "<macs><![CDATA[]]></macs>"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "<nb></nb>"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "<mmac><![CDATA[]]></mmac>"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, " gtype=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, " gmock=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, " glong=\"0.0\""

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, " glat=\"0.0\""

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, " precision=\"0.0\""

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, " glong=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, " glat=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, " precision=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "<smac>null</smac>"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "<smac>00:00:00:00:00:00</smac>"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "<imei>000000000000000</imei>"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "<imsi>000000000000000</imsi>"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "<mcc>000</mcc>"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "<mcc>0</mcc>"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "<lac>0</lac>"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "<cellid>0</cellid>"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string/jumbo v3, "<key></key>"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v3, "<poiid></poiid>"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string/jumbo v3, "<poiid>null</poiid>"

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    :goto_1
    const-string/jumbo v0, "*<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_3

    return-void

    :cond_0
    return-void

    :cond_1
    aget-object v3, v1, v0

    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "*<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private awG(Landroid/content/SharedPreferences;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    const-string/jumbo v2, "smac"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    :goto_2
    return-void

    :cond_1
    return-void

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/aP;->aAQ([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "APS"

    const-string/jumbo v4, "getSmac"

    invoke-static {v0, v3, v4}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/loc/X;->F:Ljava/lang/String;

    goto :goto_2
.end method

.method private awH(III)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "e"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "d"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private awI(Landroid/content/SharedPreferences;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "coluphist"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    return-void

    :cond_3
    :try_start_0
    const-string/jumbo v2, "coluphist"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/loc/aP;->aAQ([B)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/loc/X;->amj:[I

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "getColUpHist"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "coluphist"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private awK()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 10

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    sget-object v0, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/loc/X;->alW:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/loc/X;->d()V

    iget-object v0, p0, Lcom/loc/X;->alM:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/loc/X;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v0, v1

    invoke-virtual {p0, v7}, Lcom/loc/X;->b(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/loc/X;->amC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/loc/X;->amB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/loc/X;->awC(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/loc/aK;->a()Lcom/loc/aK;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/loc/aK;->aAx(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/loc/X;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7, v5}, Lcom/loc/X;->awE(Ljava/lang/String;ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v6

    invoke-static {v6}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/loc/X;->awM(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_9

    return-object v6

    :cond_1
    sget-object v0, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    sget-object v2, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v7, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->f()V

    iget-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->d()Landroid/telephony/CellLocation;

    iget-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->b()Lcom/loc/bw;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/X;->alZ:J

    iget-object v2, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    invoke-virtual {v2}, Lcom/loc/ci;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/loc/X;->amE:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/loc/X;->alN:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    monitor-exit v3

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "doFirstLocate"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/loc/X;->alN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/X;->alN:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    iget v1, p0, Lcom/loc/X;->j:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    :goto_5
    return-object v0

    :cond_7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/X;->amn:J

    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    iput-object v4, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {p0}, Lcom/loc/X;->awL()V

    return-object v4

    :cond_8
    const-string/jumbo v3, "new"

    invoke-virtual {v6, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/loc/X;->amo:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/X;->amp:Lcom/loc/bw;

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/loc/X;->alT:J

    iput-object v6, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {}, Lcom/loc/aK;->a()Lcom/loc/aK;

    move-result-object v0

    iget-object v3, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v4, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/loc/aK;->aAw(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/loc/X;->awL()V

    move-object v0, v6

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/X;->amo:Ljava/lang/String;

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u79bb\u7ebf\u5b9a\u4f4d\u7ed3\u679c\uff0c\u5728\u7ebf\u5b9a\u4f4d\u5931\u8d25\u539f\u56e0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    goto :goto_5
.end method

.method private awL()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/X;->amt:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-object v0, p0, Lcom/loc/X;->amu:Ljava/lang/String;

    return-void
.end method

.method private awM(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 12

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/loc/bv;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/loc/X;->awN()V

    invoke-static {}, Lcom/loc/aV;->a()Lcom/loc/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/aV;->b()Ljava/util/ArrayList;

    move-result-object v8

    :try_start_0
    invoke-static {}, Lcom/loc/aF;->b()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_7

    :goto_0
    return-object v11

    :cond_2
    return-object v11

    :cond_3
    iget-object v0, p0, Lcom/loc/X;->amu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/X;->amt:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/X;->amt:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    return-object v0

    :cond_4
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0}, Lcom/loc/aF;->aAc(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v7, v6

    :goto_1
    if-ge v7, v10, :cond_1

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/loc/X;->awP(Ljava/lang/String;Ljava/lang/String;[DLjava/lang/String;I)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_5
    iput-object p1, p0, Lcom/loc/X;->amu:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/X;->amt:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    return-object v0

    :cond_6
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/P;

    invoke-virtual {v0}, Lcom/loc/P;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/loc/X;->awP(Ljava/lang/String;Ljava/lang/String;[DLjava/lang/String;I)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_8

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    :cond_7
    if-lt v6, v7, :cond_6

    goto :goto_0

    :cond_8
    iput-object p1, p0, Lcom/loc/X;->amu:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/X;->amt:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "getPureOfflineLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private awN()V
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/loc/bv;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/loc/aF;->a:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/loc/X;->amv:Ljava/util/Timer;

    if-nez v0, :cond_3

    :cond_0
    new-instance v0, Lcom/loc/S;

    invoke-direct {v0, p0}, Lcom/loc/S;-><init>(Lcom/loc/X;)V

    iput-object v0, p0, Lcom/loc/X;->amw:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "T-O"

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/loc/X;->amv:Ljava/util/Timer;

    iget-object v0, p0, Lcom/loc/X;->amv:Ljava/util/Timer;

    iget-object v1, p0, Lcom/loc/X;->amw:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/loc/X;->awO()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/loc/X;->awO()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/loc/X;->amw:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    return-void
.end method

.method private awO()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/X;->amw:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/loc/X;->amv:Ljava/util/Timer;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/X;->amw:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/loc/X;->amw:Ljava/util/TimerTask;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/loc/X;->amv:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/loc/X;->amv:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v1, p0, Lcom/loc/X;->amv:Ljava/util/Timer;

    goto :goto_1
.end method

.method private awP(Ljava/lang/String;Ljava/lang/String;[DLjava/lang/String;I)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 8

    const/4 v7, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/loc/bd;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p3

    :goto_0
    invoke-static {}, Lcom/loc/bd;->b()J

    const/4 v1, 0x2

    new-array v6, v1, [I

    iget v1, p0, Lcom/loc/X;->amz:I

    aput v1, v6, v2

    iget v1, p0, Lcom/loc/X;->amy:I

    aput v1, v6, v7

    iget-object v5, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    invoke-static/range {v0 .. v6}, Lcom/loc/aF;->azS([DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;[I)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v3

    :cond_1
    if-eqz p3, :cond_3

    :goto_1
    aget-wide v0, p3, v2

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2

    aget-wide v0, p3, v7

    cmpl-double v0, v0, v4

    if-nez v0, :cond_4

    :cond_2
    return-object v3

    :cond_3
    invoke-direct {p0}, Lcom/loc/X;->awS()[D

    move-result-object p3

    goto :goto_1

    :cond_4
    move-object v0, p3

    goto :goto_0
.end method

.method private awQ()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/X;->amy:I

    iput v0, p0, Lcom/loc/X;->amz:I

    return-void
.end method

.method private awR()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/aF;->a:[I

    aget v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "activityoffdl"

    move v0, v1

    :goto_0
    sget-object v5, Lcom/loc/aF;->a:[I

    array-length v5, v5

    if-lt v0, v5, :cond_3

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    return-void

    :cond_3
    sget-object v5, Lcom/loc/aF;->a:[I

    aget v5, v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v4, "setOffDlHist"

    invoke-static {v0, v2, v4}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private awS()[D
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [D

    iget-object v1, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v1}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/loc/X;->amA:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v1}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_1

    aput-wide v2, v0, v4

    aput-wide v2, v0, v5

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v2

    aput-wide v2, v0, v4

    iget-object v1, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v2

    :goto_1
    aput-wide v2, v0, v5

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/loc/X;->amA:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v2

    aput-wide v2, v0, v4

    iget-object v1, p0, Lcom/loc/X;->amA:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v2

    goto :goto_1
.end method

.method private awT(Landroid/content/SharedPreferences;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v1, "activityoffdl"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/bd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/loc/aF;->a:[I

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "getOffDlHist"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private awU()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/loc/X;->amo:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/X;->amn:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/X;->alT:J

    invoke-static {}, Lcom/loc/aR;->a()Lcom/loc/aR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/aR;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "cleanCache"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic awV(Lcom/loc/X;)Lcom/loc/ci;
    .locals 1

    iget-object v0, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    return-object v0
.end method

.method static synthetic awW(Lcom/loc/X;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/loc/X;->alN:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic awX(Lcom/loc/X;J)J
    .locals 1

    iput-wide p1, p0, Lcom/loc/X;->alZ:J

    return-wide p1
.end method

.method static synthetic awY(Lcom/loc/X;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/loc/X;->alN:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic awZ(Lcom/loc/X;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/X;->n()V

    return-void
.end method

.method private awz(ZI)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/loc/X;->c(I)V

    :goto_0
    invoke-direct {p0}, Lcom/loc/X;->q()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/loc/X;->y()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    invoke-virtual {v0}, Lcom/loc/q;->g()I

    move-result v0

    goto :goto_1
.end method

.method static synthetic axa(Lcom/loc/X;)Lcom/loc/q;
    .locals 1

    iget-object v0, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    return-object v0
.end method

.method static synthetic axb(Lcom/loc/X;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/X;->u()V

    return-void
.end method

.method static synthetic axc(Lcom/loc/X;)Z
    .locals 1

    invoke-direct {p0}, Lcom/loc/X;->A()Z

    move-result v0

    return v0
.end method

.method static synthetic axd(Lcom/loc/X;ZI)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/loc/X;->awz(ZI)I

    move-result v0

    return v0
.end method

.method static synthetic axe(Lcom/loc/X;)J
    .locals 2

    iget-wide v0, p0, Lcom/loc/X;->alV:J

    return-wide v0
.end method

.method static synthetic axf(Lcom/loc/X;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/X;->b(I)V

    return-void
.end method

.method static synthetic axg(Lcom/loc/X;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/X;->y()V

    return-void
.end method

.method static synthetic axh(Lcom/loc/X;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/X;->awO()V

    return-void
.end method

.method static synthetic axi(Lcom/loc/X;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic axj(Lcom/loc/X;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/X;->amx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic axk(Lcom/loc/X;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/loc/X;->amx:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic axl(Lcom/loc/X;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic axm(Lcom/loc/X;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/X;->awR()V

    return-void
.end method

.method private b(I)V
    .locals 6

    const v1, 0x282fffff

    const v0, 0x42fffff

    invoke-direct {p0}, Lcom/loc/X;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/loc/X;->z()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3}, Lcom/loc/X;->awH(III)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/loc/q;->auC(Lcom/loc/B;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    invoke-virtual {v1}, Lcom/loc/q;->e()Lcom/loc/B;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/X;->amh:Lcom/loc/B;

    iget-object v1, p0, Lcom/loc/X;->amh:Lcom/loc/B;

    if-nez v1, :cond_4

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/loc/X;->t()V

    invoke-direct {p0}, Lcom/loc/X;->q()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_1
    iget v0, p0, Lcom/loc/X;->amf:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    :goto_2
    return-void

    :cond_2
    return-void

    :cond_3
    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/loc/X;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7c2fffff

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/loc/X;->amh:Lcom/loc/B;

    invoke-virtual {v1}, Lcom/loc/B;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/loc/X;->amq:Lcom/loc/aE;

    iget-object v3, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    const-string/jumbo v4, "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&"

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/loc/aE;->azO([BLandroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/loc/X;->q()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget v1, p0, Lcom/loc/X;->amf:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/loc/X;->amf:I

    iget-object v1, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    iget-object v2, p0, Lcom/loc/X;->amh:Lcom/loc/B;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4}, Lcom/loc/X;->awH(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/loc/q;->auC(Lcom/loc/B;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "up"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :try_start_1
    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    iget-object v3, p0, Lcom/loc/X;->amh:Lcom/loc/B;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, v4, v0, v5}, Lcom/loc/X;->awH(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/loc/q;->auC(Lcom/loc/B;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const-string/jumbo v0, "yyyyMMdd"

    invoke-static {v2, v3, v0}, Lcom/loc/bd;->aDt(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/X;->amj:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_7

    :try_start_2
    iget-object v2, p0, Lcom/loc/X;->amj:[I

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/loc/X;->amj:[I

    const/4 v2, 0x1

    array-length v1, v1

    aput v1, v0, v2

    :goto_4
    iget-object v0, p0, Lcom/loc/X;->amj:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/loc/X;->amj:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    invoke-direct {p0}, Lcom/loc/X;->F()V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/loc/X;->amj:[I

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v0, v3

    array-length v1, v1

    add-int/2addr v1, v3

    aput v1, v0, v2

    goto :goto_4

    :catch_1
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "up part"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/X;->amj:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    iget-object v0, p0, Lcom/loc/X;->amj:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v0, v2

    iget-object v0, p0, Lcom/loc/X;->amj:[I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v0, v2

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    invoke-virtual {v0}, Lcom/loc/q;->g()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/loc/X;->y()V

    goto/16 :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/loc/X;->y()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(I)V
    .locals 6

    const-wide/16 v2, 0x7d0

    invoke-direct {p0}, Lcom/loc/X;->t()V

    iget-object v0, p0, Lcom/loc/X;->ame:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/loc/X;->amd:Ljava/util/Timer;

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/loc/al;

    invoke-direct {v0, p0, p1}, Lcom/loc/al;-><init>(Lcom/loc/X;I)V

    iput-object v0, p0, Lcom/loc/X;->ame:Ljava/util/TimerTask;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "T-U"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/loc/X;->amd:Ljava/util/Timer;

    iget-object v0, p0, Lcom/loc/X;->amd:Ljava/util/Timer;

    iget-object v1, p0, Lcom/loc/X;->ame:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method

.method private i()V
    .locals 4

    :try_start_0
    new-instance v1, Lcom/loc/ci;

    iget-object v2, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-static {v0, v3}, Lcom/loc/bd;->aDe(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    invoke-direct {v1, v2, v0, v3}, Lcom/loc/ci;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    const-string/jumbo v0, "connectivity"

    iget-object v1, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/bd;->aDe(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/loc/X;->alJ:Landroid/net/ConnectivityManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/X;->alP:Lcom/loc/bS;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/loc/X;->o()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "initBroadcastListener"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j()V
    .locals 3

    new-instance v0, Lcom/loc/v;

    iget-object v1, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2}, Lcom/loc/v;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    iget-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->h()V

    return-void
.end method

.method private k()V
    .locals 12

    const-wide/16 v10, 0x2710

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/loc/X;->l()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x14

    iget-object v6, p0, Lcom/loc/X;->alN:Ljava/util/ArrayList;

    iget-wide v8, p0, Lcom/loc/X;->alU:J

    sub-long v8, v4, v8

    cmp-long v3, v8, v10

    if-gez v3, :cond_4

    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/loc/X;->amE:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->clear()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-direct {p0}, Lcom/loc/X;->o()V

    iget-wide v8, p0, Lcom/loc/X;->alU:J

    sub-long/2addr v4, v8

    cmp-long v3, v4, v10

    if-gez v3, :cond_5

    :goto_2
    if-nez v1, :cond_3

    :goto_3
    if-gtz v0, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/loc/X;->amE:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    invoke-virtual {v0}, Lcom/loc/ci;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v2, 0x96

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :catch_0
    move-exception v1

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "mayWaitForWifi"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private l()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/X;->amb:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/loc/X;->p()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/loc/X;->alY:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/X;->alY:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    move v2, v0

    :goto_1
    if-nez v2, :cond_5

    :cond_3
    :goto_2
    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/X;->alZ:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    move v2, v0

    :goto_3
    if-nez v2, :cond_0

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_3
.end method

.method private m()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/loc/X;->alT:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/X;->alT:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private n()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/X;->alZ:J

    iget-object v0, p0, Lcom/loc/X;->alM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/loc/X;->amE:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/X;->alN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/loc/X;->alO:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private o()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/loc/X;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/loc/bd;->c()I

    move-result v0

    const/16 v2, 0x12

    if-lt v0, v2, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    :cond_1
    :goto_2
    if-eqz v1, :cond_6

    :cond_2
    :goto_3
    return-void

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Lcom/loc/bd;->c()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v2, "wifiactivescan"

    invoke-static {v0, v2}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "1"

    iget-object v2, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v3, "wifiactivescan"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "updateWifi part1"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    invoke-virtual {v0}, Lcom/loc/ci;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/X;->alY:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "updateWifi part"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    invoke-virtual {v0}, Lcom/loc/ci;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/X;->alY:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "updateWifi"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    invoke-virtual {v0}, Lcom/loc/ci;->f()Z

    move-result v0

    return v0
.end method

.method private q()Z
    .locals 1

    iget-object v0, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private r()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/loc/X;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    invoke-virtual {v1}, Lcom/loc/q;->d()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "collStarted"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private s()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/loc/X;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v3, "coll"

    invoke-static {v2, v3}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/loc/X;->r()Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    sget v1, Lcom/loc/aH;->m:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/loc/q;->b(I)V

    invoke-direct {p0}, Lcom/loc/X;->z()V

    invoke-direct {p0}, Lcom/loc/X;->t()V

    iget-object v0, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    invoke-virtual {v0}, Lcom/loc/q;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-void

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v3, "coll"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "start3rdCM"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/loc/X;->u()V

    return-void

    :cond_4
    return-void

    :catch_1
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "start3rdCM"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private t()V
    .locals 3

    invoke-direct {p0}, Lcom/loc/X;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/loc/X;->q()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/loc/X;->q()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    :goto_0
    return-void

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    invoke-virtual {v0}, Lcom/loc/q;->g()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    invoke-virtual {v0}, Lcom/loc/q;->f()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "collFileSwitch"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private u()V
    .locals 3

    invoke-direct {p0}, Lcom/loc/X;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    sput v0, Lcom/loc/aH;->m:I

    :try_start_0
    iget-object v0, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    invoke-virtual {v0}, Lcom/loc/q;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "stop3rdCM"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private v()V
    .locals 5

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/X;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lcom/loc/X;->F:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/aP;->aAQ([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    return-void

    :cond_0
    return-void

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "APS"

    const-string/jumbo v4, "setSmac"

    invoke-static {v0, v3, v4}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "smac"

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method private w()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/aH;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/aH;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/aH;->h:Ljava/lang/String;

    return-void
.end method

.method private x()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/X;->alN:Ljava/util/ArrayList;

    :try_start_0
    iget-object v2, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v3, "wait1stwifi"

    invoke-static {v2, v3}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v2, "wait1stwifi"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    iget-object v2, p0, Lcom/loc/X;->amE:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/loc/X;->o()V

    const/16 v0, 0x14

    :goto_2
    if-gtz v0, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/loc/X;->amE:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    :goto_3
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "wait1StWifi part"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x96

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string/jumbo v3, "APS"

    const-string/jumbo v4, "wait1StWifi"

    invoke-static {v2, v3, v4}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    invoke-virtual {v0}, Lcom/loc/ci;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method private y()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/X;->ame:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/loc/X;->amd:Ljava/util/Timer;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/X;->ame:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/loc/X;->ame:Ljava/util/TimerTask;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/loc/X;->amd:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/loc/X;->amd:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v1, p0, Lcom/loc/X;->amd:Ljava/util/Timer;

    goto :goto_1
.end method

.method private z()V
    .locals 3

    invoke-direct {p0}, Lcom/loc/X;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Lcom/loc/q;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "setCollSize"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :goto_0
    invoke-direct {p0}, Lcom/loc/X;->E()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v2, "reversegeo"

    invoke-static {v0, v2}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v2, v1

    :goto_1
    iget-object v0, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v5, "isOffset"

    invoke-static {v0, v5}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_2
    iget-boolean v5, p0, Lcom/loc/X;->amC:Z

    if-eq v0, v5, :cond_9

    :cond_0
    invoke-direct {p0}, Lcom/loc/X;->awU()V

    :goto_3
    iput-boolean v0, p0, Lcom/loc/X;->amC:Z

    iput-boolean v2, p0, Lcom/loc/X;->amB:Z

    iget v0, p0, Lcom/loc/X;->ama:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/X;->ama:I

    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bd;->aDb(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/X;->alW:Z

    if-nez p1, :cond_a

    iget v0, p0, Lcom/loc/X;->ama:I

    if-eq v0, v6, :cond_b

    :goto_4
    iget v0, p0, Lcom/loc/X;->ama:I

    if-eq v0, v1, :cond_d

    :cond_1
    :goto_5
    iget-wide v6, p0, Lcom/loc/X;->alT:J

    invoke-direct {p0, v6, v7}, Lcom/loc/X;->a(J)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_2
    iget-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_12

    :goto_6
    :try_start_1
    invoke-virtual {p0}, Lcom/loc/X;->d()V

    invoke-virtual {p0}, Lcom/loc/X;->e()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/loc/X;->b(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/loc/X;->f:Z

    if-eqz v0, :cond_13

    :goto_8
    const/4 v0, 0x4

    :goto_9
    if-gtz v0, :cond_14

    :cond_3
    iget v0, p0, Lcom/loc/X;->e:I

    if-eqz v0, :cond_15

    :cond_4
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    iget v1, p0, Lcom/loc/X;->j:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    :try_start_3
    sget-object v0, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    sget-object v5, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_4
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_7
    :try_start_5
    iget-object v0, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v2, "reversegeo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move v2, v0

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v5, "isOffset"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_2

    :cond_9
    iget-boolean v5, p0, Lcom/loc/X;->amB:Z

    if-ne v2, v5, :cond_0

    goto/16 :goto_3

    :cond_a
    invoke-direct {p0}, Lcom/loc/X;->awK()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_6
    invoke-direct {p0}, Lcom/loc/X;->t()V

    invoke-direct {p0}, Lcom/loc/X;->D()V

    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    if-nez v0, :cond_c

    :goto_a
    invoke-direct {p0}, Lcom/loc/X;->awN()V

    goto/16 :goto_4

    :cond_c
    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/X;->awI(Landroid/content/SharedPreferences;)V

    invoke-direct {p0, v0}, Lcom/loc/X;->awT(Landroid/content/SharedPreferences;)V

    invoke-direct {p0, v0}, Lcom/loc/X;->awG(Landroid/content/SharedPreferences;)V

    goto :goto_a

    :cond_d
    invoke-direct {p0}, Lcom/loc/X;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/X;->alN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    :goto_b
    invoke-direct {p0}, Lcom/loc/X;->x()V

    goto/16 :goto_5

    :cond_e
    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/loc/X;->alZ:J

    iget-object v0, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    invoke-virtual {v0}, Lcom/loc/ci;->a()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/X;->amE:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v5, p0, Lcom/loc/X;->alN:Ljava/util/ArrayList;

    if-nez v5, :cond_10

    :cond_f
    :goto_c
    monitor-exit v2

    goto :goto_b

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_10
    if-eqz v0, :cond_f

    :try_start_9
    iget-object v5, p0, Lcom/loc/X;->alN:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_c

    :cond_11
    :try_start_a
    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_12
    :try_start_b
    invoke-direct {p0}, Lcom/loc/X;->k()V

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/loc/X;->alU:J
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    :try_start_c
    const-string/jumbo v2, "APS"

    const-string/jumbo v5, "getLocation"

    invoke-static {v0, v2, v5}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_13
    invoke-virtual {p0}, Lcom/loc/X;->g()V

    goto/16 :goto_8

    :cond_14
    iget v1, p0, Lcom/loc/X;->e:I

    if-eqz v1, :cond_3

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_9

    :cond_15
    iget-object v0, p0, Lcom/loc/X;->ams:Lcom/loc/aX;

    invoke-virtual {v0}, Lcom/loc/aX;->d()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_16
    :try_start_d
    const-string/jumbo v0, ""

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/loc/X;->awC(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/loc/X;->alW:Z

    if-eqz v0, :cond_20

    move-object v8, v4

    :goto_d
    if-eqz v8, :cond_21

    :cond_17
    iget-object v0, p0, Lcom/loc/X;->amp:Lcom/loc/bw;

    if-nez v0, :cond_22

    :cond_18
    move v6, v1

    :goto_e
    invoke-direct {p0}, Lcom/loc/X;->m()Z

    move-result v9

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v0, :cond_23

    move v7, v3

    :goto_f
    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v0, :cond_26

    :cond_19
    move v0, v3

    :cond_1a
    if-eqz v0, :cond_2a

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/loc/X;->amn:J

    :goto_10
    iget-object v0, p0, Lcom/loc/X;->aml:Ljava/lang/String;

    if-nez v0, :cond_2b

    :cond_1b
    iget-object v0, p0, Lcom/loc/X;->aml:Ljava/lang/String;

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/loc/bd;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/X;->amm:J

    :goto_11
    move-object v6, v5

    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/X;->amC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/X;->amB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_2f

    :cond_1c
    move-object v0, v4

    :goto_13
    if-eqz v9, :cond_30

    :cond_1d
    if-nez v7, :cond_31

    if-nez v9, :cond_32

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/loc/X;->amn:J

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    iput-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {p0}, Lcom/loc/X;->awL()V

    :cond_1e
    :goto_14
    invoke-static {}, Lcom/loc/aK;->a()Lcom/loc/aK;

    move-result-object v0

    iget-object v3, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v4, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/loc/aK;->aAw(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V

    invoke-static {}, Lcom/loc/aV;->a()Lcom/loc/aV;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v1, v6, v3}, Lcom/loc/aV;->aCe(Landroid/content/Context;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;)V

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_1f
    :goto_15
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_20
    :try_start_e
    iget-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->b()Lcom/loc/bw;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_d

    :cond_21
    iget-object v0, p0, Lcom/loc/X;->amp:Lcom/loc/bw;

    if-nez v0, :cond_17

    :goto_16
    move v6, v3

    goto/16 :goto_e

    :cond_22
    iget-object v0, p0, Lcom/loc/X;->amp:Lcom/loc/bw;

    invoke-virtual {v0, v8}, Lcom/loc/bw;->aDT(Lcom/loc/bw;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_16

    :cond_23
    iget-object v0, p0, Lcom/loc/X;->alM:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v7, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v7}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F

    move-result v7

    const v10, 0x43958000    # 299.0f

    cmpl-float v7, v7, v10

    if-lez v7, :cond_24

    const/4 v7, 0x5

    if-gt v0, v7, :cond_25

    :cond_24
    move v0, v3

    :goto_17
    move v7, v0

    goto/16 :goto_f

    :cond_25
    move v0, v1

    goto :goto_17

    :cond_26
    iget-object v0, p0, Lcom/loc/X;->amo:Ljava/lang/String;

    if-eqz v0, :cond_19

    if-nez v7, :cond_19

    if-nez v6, :cond_19

    invoke-static {}, Lcom/loc/aK;->a()Lcom/loc/aK;

    move-result-object v0

    iget-object v6, p0, Lcom/loc/X;->amo:Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Lcom/loc/aK;->aAD(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_27

    :goto_18
    iget-object v6, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    iget-boolean v10, p0, Lcom/loc/X;->alW:Z

    invoke-virtual {v6, v10}, Lcom/loc/v;->a(Z)Z

    move-result v6

    if-nez v6, :cond_29

    :goto_19
    iget-object v6, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v6}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v6

    if-eqz v6, :cond_1a

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string/jumbo v1, "mem"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_27
    :try_start_f
    iget-wide v10, p0, Lcom/loc/X;->amn:J

    cmp-long v6, v10, v12

    if-eqz v6, :cond_1a

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/loc/X;->amn:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0xbb8

    cmp-long v6, v10, v12

    if-ltz v6, :cond_28

    move v6, v1

    :goto_1a
    if-nez v6, :cond_1a

    goto :goto_18

    :cond_28
    move v6, v3

    goto :goto_1a

    :cond_29
    iget-object v6, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    invoke-virtual {v6}, Lcom/loc/v;->h()V

    goto :goto_19

    :cond_2a
    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/loc/X;->amn:J

    goto/16 :goto_10

    :cond_2b
    iget-object v0, p0, Lcom/loc/X;->aml:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/loc/bd;->a()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/loc/X;->amm:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0xbb8

    cmp-long v0, v10, v12

    if-ltz v0, :cond_2c

    :goto_1b
    if-nez v1, :cond_2d

    iget-object v0, p0, Lcom/loc/X;->aml:Ljava/lang/String;

    move-object v6, v0

    goto/16 :goto_12

    :cond_2c
    move v1, v3

    goto :goto_1b

    :cond_2d
    invoke-static {}, Lcom/loc/bd;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/X;->amm:J

    iput-object v5, p0, Lcom/loc/X;->aml:Ljava/lang/String;

    goto/16 :goto_11

    :cond_2e
    invoke-static {}, Lcom/loc/bd;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/X;->amm:J

    iput-object v5, p0, Lcom/loc/X;->aml:Ljava/lang/String;

    goto/16 :goto_11

    :cond_2f
    if-nez v9, :cond_1c

    invoke-static {}, Lcom/loc/aK;->a()Lcom/loc/aK;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/loc/aK;->aAx(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    goto/16 :goto_13

    :cond_30
    invoke-static {v0}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v3

    if-nez v3, :cond_1d

    :cond_31
    invoke-virtual {p0}, Lcom/loc/X;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/loc/X;->awE(Ljava/lang/String;ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string/jumbo v3, "new"

    invoke-virtual {v0, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/X;->amo:Ljava/lang/String;

    iput-object v8, p0, Lcom/loc/X;->amp:Lcom/loc/bw;

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/X;->alT:J

    invoke-direct {p0}, Lcom/loc/X;->awL()V

    goto/16 :goto_14

    :cond_32
    invoke-virtual {p0}, Lcom/loc/X;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/loc/X;->awE(Ljava/lang/String;ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/X;->amo:Ljava/lang/String;

    iput-object v8, p0, Lcom/loc/X;->amp:Lcom/loc/bw;

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/X;->alT:J

    invoke-direct {p0}, Lcom/loc/X;->awL()V

    goto/16 :goto_14

    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/loc/X;->awM(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/X;->amo:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u79bb\u7ebf\u5b9a\u4f4d\uff0c\u5728\u7ebf\u5b9a\u4f4d\u5931\u8d25\u539f\u56e0:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_15
.end method

.method public a()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/loc/bv;->a()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v2

    invoke-static {}, Lcom/loc/bv;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/loc/bv;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/loc/X;->b(Z)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/loc/X;->awC(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/loc/X;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/loc/X;->awE(Ljava/lang/String;ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "fusionLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/loc/X;->w()V

    return-void

    :cond_1
    const-string/jumbo v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    aget-object v1, v0, v3

    sput-object v1, Lcom/loc/aH;->e:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    sput-object v1, Lcom/loc/aH;->f:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    sput-object v1, Lcom/loc/aH;->h:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sput-object v0, Lcom/loc/aH;->i:Ljava/lang/String;

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/loc/X;->w()V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    iput-object p1, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v0, "collwifiscan"

    invoke-static {p1, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    if-nez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    if-nez v0, :cond_4

    :goto_2
    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v0, "collwifiscan"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/loc/aH;->m:I

    :goto_3
    invoke-direct {p0}, Lcom/loc/X;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    sget v1, Lcom/loc/aH;->m:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/loc/q;->b(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "setExtra"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    :try_start_1
    sput v0, Lcom/loc/aH;->m:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    invoke-virtual {v0, p1}, Lcom/loc/v;->a(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    invoke-virtual {v0, p1}, Lcom/loc/ci;->a(Lorg/json/JSONObject;)V

    goto :goto_2
.end method

.method public varargs awA(Lcom/autonavi/aps/amapapi/model/AmapLoc;[Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_1

    :cond_0
    invoke-static {}, Lcom/loc/aR;->a()Lcom/loc/aR;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/aR;->aAS(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0

    :cond_1
    array-length v0, p2

    if-eqz v0, :cond_0

    aget-object v0, p2, v2

    const-string/jumbo v1, "shake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, p2, v2

    const-string/jumbo v1, "fusion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object p1

    :cond_2
    invoke-static {}, Lcom/loc/aR;->a()Lcom/loc/aR;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/aR;->aAS(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Lcom/loc/aR;->a()Lcom/loc/aR;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/aR;->aAU(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized awC(Z)Ljava/lang/StringBuilder;
    .locals 13

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    iget-boolean v3, p0, Lcom/loc/X;->alW:Z

    if-nez v3, :cond_4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v3, 0x2bc

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0}, Lcom/loc/v;->c()I

    move-result v3

    invoke-virtual {v0}, Lcom/loc/v;->a()Ljava/util/ArrayList;

    move-result-object v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    if-eqz p1, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/loc/X;->F:Ljava/lang/String;

    const-string/jumbo v3, "00:00:00:00:00:00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/loc/X;->p()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/loc/X;->n()V

    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_b

    :goto_3
    monitor-exit p0

    return-object v5

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcom/loc/v;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    move v3, v2

    :goto_4
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    const-string/jumbo v0, "#"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bw;

    iget-object v0, v0, Lcom/loc/bw;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bw;

    iget v0, v0, Lcom/loc/bw;->c:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bw;

    iget v0, v0, Lcom/loc/bw;->d:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/loc/X;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_6
    iget-object v0, p0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/X;->F:Ljava/lang/String;

    invoke-direct {p0}, Lcom/loc/X;->v()V

    iget-object v0, p0, Lcom/loc/X;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/loc/X;->F:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v3}, Lcom/loc/X;->awB(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-nez v3, :cond_8

    :goto_5
    move-object v4, v0

    iget-object v6, p0, Lcom/loc/X;->alM:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v3, v1

    :goto_6
    if-lt v3, v7, :cond_9

    if-nez v1, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "#"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ",access"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v8, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v0, "nb"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    :goto_7
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v10, "#%s,%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v8, 0x1

    aput-object v0, v11, v8

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_a
    const-string/jumbo v0, "access"

    move v1, v2

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized awJ(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/loc/X;->amH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput v0, Lcom/loc/X;->amH:I

    const-string/jumbo v0, "2.4.0"

    invoke-static {v0}, Lcom/loc/aH;->a(Ljava/lang/String;)Lcom/loc/O;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/cq;->aFG(Landroid/content/Context;Lcom/loc/O;)Z

    invoke-static {p1}, Lcom/loc/bv;->aDN(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "initAuth"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized awy(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/loc/aH;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    invoke-static {p1}, Lcom/loc/aE;->azM(Landroid/content/Context;)Lcom/loc/aE;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/X;->amq:Lcom/loc/aE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/q;->auB(Landroid/content/Context;)Lcom/loc/q;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/X;->amg:Lcom/loc/q;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/X;->alV:J

    invoke-direct {p0}, Lcom/loc/X;->i()V

    invoke-direct {p0}, Lcom/loc/X;->j()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/aH;->anL:Z

    new-instance v0, Lcom/loc/f;

    invoke-direct {v0}, Lcom/loc/f;-><init>()V

    iput-object v0, p0, Lcom/loc/X;->amc:Lcom/loc/f;

    iget-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->d()Landroid/telephony/CellLocation;

    invoke-static {}, Lcom/loc/aK;->a()Lcom/loc/aK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/aK;->aAE(Landroid/content/Context;)V

    invoke-static {}, Lcom/loc/aV;->a()Lcom/loc/aV;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/aV;->aCf(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/X;->i:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    invoke-static {p1}, Lcom/loc/bd;->aDg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/aH;->k:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "setExtra"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized b(Z)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/X;->alW:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->j()V

    :goto_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    const-string/jumbo v4, "network"

    invoke-direct {p0}, Lcom/loc/X;->p()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/loc/X;->n()V

    :goto_1
    const-string/jumbo v1, ""

    iget-object v1, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    invoke-virtual {v1}, Lcom/loc/v;->c()I

    move-result v1

    iget-object v5, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    invoke-virtual {v5}, Lcom/loc/v;->a()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/loc/X;->alM:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    :cond_0
    if-nez v6, :cond_6

    :cond_1
    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2297 lstCgi & \u2297 wifis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    iput v1, p0, Lcom/loc/X;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/loc/X;->alK:Lcom/loc/ci;

    invoke-virtual {v1}, Lcom/loc/ci;->b()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_2
    sparse-switch v1, :sswitch_data_0

    const/16 v1, 0xb

    iput v1, p0, Lcom/loc/X;->j:I

    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get cgi failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_13

    :goto_4
    monitor-exit p0

    return-object v0

    :cond_6
    :try_start_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    :sswitch_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/loc/bw;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/loc/bw;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/loc/bw;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/loc/bw;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string/jumbo v0, "cgiwifi"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/X;->awB(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "cgi"

    goto :goto_5

    :sswitch_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/loc/bw;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/loc/bw;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/loc/bw;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/loc/bw;->aqR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/loc/bw;->aqS:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    const-string/jumbo v0, "cgiwifi"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/X;->awB(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "cgi"

    goto :goto_6

    :sswitch_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move v1, v3

    :goto_7
    if-eqz p1, :cond_e

    :cond_c
    :goto_8
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "#%s#"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_12

    const-string/jumbo v1, "network"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, ""

    const/4 v1, 0x2

    iput v1, p0, Lcom/loc/X;->j:I

    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "is network & no wifi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/X;->awB(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_b

    move v1, v2

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/X;->awB(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_c

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/X;->j:I

    iget-object v0, p0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/X;->awB(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/X;->alQ:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "same access wifi & around wifi 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    move v1, v2

    goto :goto_8

    :cond_10
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/X;->j:I

    sget-object v0, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2297 around wifi(s) & has access wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_11
    sget-object v0, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2297 access wifi & around wifi 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_13
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loc/bd;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_a

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/loc/X;->i:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/aH;->anL:Z

    invoke-direct {p0}, Lcom/loc/X;->u()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/X;->amg:Lcom/loc/q;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/X;->amh:Lcom/loc/B;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/X;->amo:Ljava/lang/String;

    invoke-direct {p0}, Lcom/loc/X;->awL()V

    iget-object v0, p0, Lcom/loc/X;->ams:Lcom/loc/aX;

    if-nez v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/loc/X;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/loc/ao;->a()Lcom/loc/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loc/ao;->ayt(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/loc/aR;->a()Lcom/loc/aR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/aR;->b()V

    invoke-static {}, Lcom/loc/bd;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_1

    :goto_2
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/loc/X;->alP:Lcom/loc/bS;

    :goto_3
    iget-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    if-nez v0, :cond_2

    :goto_4
    invoke-static {}, Lcom/loc/aK;->a()Lcom/loc/aK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/aK;->c()V

    invoke-static {}, Lcom/loc/aV;->a()Lcom/loc/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/aV;->c()V

    invoke-static {}, Lcom/loc/aF;->a()V

    invoke-direct {p0}, Lcom/loc/X;->awO()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/X;->alT:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/X;->amm:J

    invoke-direct {p0}, Lcom/loc/X;->n()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/X;->alS:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    const/4 v0, -0x1

    sput v0, Lcom/loc/X;->amH:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_5
    iget-object v0, p0, Lcom/loc/X;->ams:Lcom/loc/aX;

    invoke-virtual {v0}, Lcom/loc/aX;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/X;->ams:Lcom/loc/aX;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/X;->f:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/X;->e:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "destroy part"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :cond_1
    :try_start_7
    iget-object v0, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/X;->alP:Lcom/loc/bS;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_8
    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v0, 0x0

    :try_start_9
    iput-object v0, p0, Lcom/loc/X;->alP:Lcom/loc/bS;

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/X;->alP:Lcom/loc/bS;

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->i()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "2.4.0"

    return-object v0
.end method

.method public declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/X;->alM:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/loc/X;->alN:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/loc/X;->amE:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 10

    const/16 v3, 0x20

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/X;->alM:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/X;->alM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/loc/X;->alZ:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/loc/X;->n()V

    :cond_2
    invoke-static {}, Lcom/loc/bd;->h()Z

    move-result v0

    iget-object v4, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v5, "nbssid"

    invoke-static {v4, v5}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :goto_1
    move v4, v0

    :goto_2
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iget-object v6, p0, Lcom/loc/X;->alM:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v2, v1

    :goto_3
    if-lt v2, v7, :cond_7

    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, v5}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v5, "nbssid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v2, p0, Lcom/loc/X;->alR:Lorg/json/JSONObject;

    const-string/jumbo v4, "nbssid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    :goto_5
    move v4, v0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v1

    goto :goto_5

    :catch_0
    move-exception v2

    :try_start_3
    const-string/jumbo v4, "APS"

    const-string/jumbo v5, "setWifiOrder part"

    invoke-static {v2, v4, v5}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    :try_start_4
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    invoke-static {v0}, Lcom/loc/bd;->aDk(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x14

    if-gt v7, v1, :cond_a

    :goto_6
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "unkwn"

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :cond_8
    :goto_7
    iget v1, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v1, v1, 0x1e

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_3

    :cond_a
    iget v1, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v1}, Lcom/loc/X;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_b
    if-nez v4, :cond_c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_7

    :cond_c
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string/jumbo v8, "*"

    const-string/jumbo v9, "."

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_8
    if-lt v1, v3, :cond_8

    :try_start_6
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_7

    :catch_1
    move-exception v1

    const-string/jumbo v8, "APS"

    const-string/jumbo v9, "setWifiOrder"

    invoke-static {v1, v8, v9}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_8

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4
.end method

.method public declared-synchronized f()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    iget-boolean v1, p0, Lcom/loc/X;->alW:Z

    invoke-virtual {v0, v1}, Lcom/loc/v;->a(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/loc/X;->awD(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_2
    sget-object v0, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "get parames is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/loc/X;->alL:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->h()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "getApsReq"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/loc/X;->amr:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get parames error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized g()V
    .locals 3

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/loc/X;->ama:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/loc/X;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/X;->ams:Lcom/loc/aX;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/X;->ams:Lcom/loc/aX;

    if-nez v0, :cond_3

    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/X;->f:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "bindService"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/X;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_4
    new-instance v0, Lcom/loc/aX;

    iget-object v1, p0, Lcom/loc/X;->alI:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/loc/aX;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/X;->ams:Lcom/loc/aX;

    iget-object v0, p0, Lcom/loc/X;->ams:Lcom/loc/aX;

    iget-object v1, p0, Lcom/loc/X;->amG:Lcom/loc/cs;

    invoke-virtual {v0, v1}, Lcom/loc/aX;->aCF(Lcom/loc/bG;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/loc/X;->ams:Lcom/loc/aX;

    invoke-virtual {v0}, Lcom/loc/aX;->b()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public h()V
    .locals 1

    iget-boolean v0, p0, Lcom/loc/X;->amF:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/loc/X;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/X;->s()V

    goto :goto_0
.end method
