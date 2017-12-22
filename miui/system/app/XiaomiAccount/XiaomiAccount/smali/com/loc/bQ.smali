.class public Lcom/loc/bQ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static arC:Lcom/loc/bQ;


# instance fields
.field arB:Landroid/content/Context;

.field arD:Landroid/content/SharedPreferences;

.field arE:Landroid/content/SharedPreferences$Editor;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/bQ;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/bQ;->arD:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/loc/bQ;->arE:Landroid/content/SharedPreferences$Editor;

    iput-object p1, p0, Lcom/loc/bQ;->arB:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/bQ;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "MD5"

    iget-object v1, p0, Lcom/loc/bQ;->arB:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/bJ;->aEI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bQ;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public static aFa(Landroid/content/Context;)Lcom/loc/bQ;
    .locals 1

    sget-object v0, Lcom/loc/bQ;->arC:Lcom/loc/bQ;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/loc/bQ;->arC:Lcom/loc/bQ;

    return-object v0

    :cond_0
    new-instance v0, Lcom/loc/bQ;

    invoke-direct {v0, p0}, Lcom/loc/bQ;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loc/bQ;->arC:Lcom/loc/bQ;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/amap/api/location/AMapLocation;
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/bQ;->arB:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bQ;->arB:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lastfix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/loc/aH;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    move-object v0, v2

    :cond_0
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    return-object v2

    :cond_1
    return-object v2

    :cond_2
    return-object v2

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/aP;->b(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v5, p0, Lcom/loc/bQ;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/loc/bJ;->aEH([BLjava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v1, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LastLocationManager"

    const-string/jumbo v5, "getLastFix part1"

    invoke-static {v0, v1, v5}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/loc/aH;->a(Lorg/json/JSONObject;)Lcom/amap/api/location/AMapLocation;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v1, "LastLocationManager"

    const-string/jumbo v3, "getLastFix part2"

    invoke-static {v0, v1, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public aFb(Lcom/amap/api/location/AMapLocation;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/bQ;->arB:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/loc/bd;->aCX(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/loc/bQ;->arD:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/loc/bQ;->arE:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->toStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_3
    return-void

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/loc/bQ;->arB:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bQ;->arD:Landroid/content/SharedPreferences;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/loc/bQ;->arD:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bQ;->arE:Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->toStr()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/loc/bQ;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/loc/bJ;->aEG([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lcom/loc/aP;->aAQ([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LastLocationManager"

    const-string/jumbo v3, "setLastFix"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lastfix"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/loc/aH;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/bQ;->arE:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/loc/bQ;->arE:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/loc/aO;->aAG(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_3
.end method
