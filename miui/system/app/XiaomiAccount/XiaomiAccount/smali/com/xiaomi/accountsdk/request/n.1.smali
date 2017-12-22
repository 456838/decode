.class public Lcom/xiaomi/accountsdk/request/n;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static XW:Lcom/xiaomi/accountsdk/request/t;

.field private static XX:Lcom/xiaomi/accountsdk/request/t;

.field private static XY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static XZ:Lcom/xiaomi/accountsdk/request/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/accountsdk/request/t;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/t;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/n;->XW:Lcom/xiaomi/accountsdk/request/t;

    new-instance v0, Lcom/xiaomi/accountsdk/request/t;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/t;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/n;->XX:Lcom/xiaomi/accountsdk/request/t;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/n;->XY:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "183.84.5.8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "42.62.94.239"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/xiaomi/accountsdk/request/n;->XY:Ljava/util/Map;

    const-string/jumbo v2, "c.id.mi.com"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aeH(Lcom/xiaomi/accountsdk/request/a;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    return-void
.end method


# virtual methods
.method protected aeA(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/xiaomi/accountsdk/request/n;->XW:Lcom/xiaomi/accountsdk/request/t;

    invoke-static {}, Lcom/xiaomi/accountsdk/request/v;->afm()J

    move-result-wide v2

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/xiaomi/accountsdk/request/n;->aeC(Lcom/xiaomi/accountsdk/request/t;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method protected aeB(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/xiaomi/accountsdk/request/n;->XX:Lcom/xiaomi/accountsdk/request/t;

    invoke-static {}, Lcom/xiaomi/accountsdk/request/v;->afl()J

    move-result-wide v2

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/xiaomi/accountsdk/request/n;->aeC(Lcom/xiaomi/accountsdk/request/t;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method protected aeC(Lcom/xiaomi/accountsdk/request/t;Ljava/lang/String;J)Z
    .locals 3

    new-instance v0, Lcom/xiaomi/accountsdk/request/J;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/n;->aez()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/xiaomi/accountsdk/request/J;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/t;->afe(Lcom/xiaomi/accountsdk/request/J;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/xiaomi/accountsdk/request/n;->aeD(JJ)Z

    move-result v0

    return v0
.end method

.method aeD(JJ)Z
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected aeE()Ljava/lang/Boolean;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/request/a;->Pc()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected aeF(Ljava/lang/String;[Ljava/lang/String;Lcom/xiaomi/accountsdk/request/p;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/request/p;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-wide v2, 0x7fffffffffffffffL

    array-length v6, p2

    move v5, v0

    move-object v1, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, p2, v5

    :try_start_0
    new-instance v7, Lcom/xiaomi/accountsdk/request/z;

    invoke-direct {v7}, Lcom/xiaomi/accountsdk/request/z;-><init>()V

    new-instance v8, Lcom/xiaomi/accountsdk/request/R;

    invoke-direct {v8}, Lcom/xiaomi/accountsdk/request/R;-><init>()V

    const-string/jumbo v9, "http://%s/conn/echo"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/xiaomi/accountsdk/request/R;->agN(Ljava/lang/String;)V

    new-instance v9, Lcom/xiaomi/accountsdk/request/H;

    invoke-direct {v9, v8}, Lcom/xiaomi/accountsdk/request/H;-><init>(Lcom/xiaomi/accountsdk/request/R;)V

    invoke-static {v9, p1, v0, v7}, Lcom/xiaomi/accountsdk/request/B;->aga(Lcom/xiaomi/accountsdk/request/M;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/z;)Z

    move-result v8

    iget-wide v10, v7, Lcom/xiaomi/accountsdk/request/z;->YD:J

    invoke-virtual {p3, v0, v8, v10, v11}, Lcom/xiaomi/accountsdk/request/p;->aeV(Ljava/lang/String;ZJ)V

    if-eqz v8, :cond_0

    iget-wide v8, v7, Lcom/xiaomi/accountsdk/request/z;->YD:J
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v8, v8, v2

    if-gez v8, :cond_0

    :try_start_1
    iget-wide v2, v7, Lcom/xiaomi/accountsdk/request/z;->YD:J
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v7

    :goto_2
    invoke-virtual {p3, v0}, Lcom/xiaomi/accountsdk/request/p;->aeU(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    move-object v0, v4

    :goto_3
    return-object v0

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_2
.end method

.method protected aeG(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    invoke-static {p1}, Ljava/net/Inet4Address;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected aeI(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/request/J;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/accountsdk/request/J;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/accountsdk/request/n;->XW:Lcom/xiaomi/accountsdk/request/t;

    invoke-virtual {v1, v0, p3}, Lcom/xiaomi/accountsdk/request/t;->afc(Lcom/xiaomi/accountsdk/request/J;Ljava/util/List;)V

    sget-object v0, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/accountsdk/request/a;->Pl(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method aeJ(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/n;->aeA(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/n;->aez()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/r;

    invoke-direct {v1, p0, v0, p1}, Lcom/xiaomi/accountsdk/request/r;-><init>(Lcom/xiaomi/accountsdk/request/n;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/accountsdk/request/C;->agd(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/xiaomi/accountsdk/request/s;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/accountsdk/request/s;-><init>(Lcom/xiaomi/accountsdk/request/n;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/accountsdk/request/C;->agd(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected aeK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/request/J;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/accountsdk/request/J;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/accountsdk/request/n;->XX:Lcom/xiaomi/accountsdk/request/t;

    invoke-virtual {v1, v0, p3}, Lcom/xiaomi/accountsdk/request/t;->afa(Lcom/xiaomi/accountsdk/request/J;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/accountsdk/request/a;->Pn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method aeL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/n;->aez()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/accountsdk/request/n;->aeK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/n;->aeN(Ljava/lang/String;)V

    return-void
.end method

.method aeM(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 11

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/n;->aeB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v6, Lcom/xiaomi/accountsdk/request/p;

    invoke-direct {v6}, Lcom/xiaomi/accountsdk/request/p;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v6, p2, v0, p3, p4}, Lcom/xiaomi/accountsdk/request/p;->aeV(Ljava/lang/String;ZJ)V

    invoke-virtual {v6, p2}, Lcom/xiaomi/accountsdk/request/p;->aeX(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/accountsdk/request/v;->afj()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/accountsdk/request/v;->afj()J

    move-result-wide v0

    invoke-virtual {v6, p3, p4, v0, v1}, Lcom/xiaomi/accountsdk/request/p;->aeS(JJ)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/n;->aeN(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/accountsdk/request/n;->aey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/n;->aeu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4}, Lcom/xiaomi/accountsdk/request/p;->aeY(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/xiaomi/accountsdk/request/p;->aeW(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/n;->aez()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lcom/xiaomi/accountsdk/request/q;

    move-object v2, p0

    move-object v3, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/accountsdk/request/q;-><init>(Lcom/xiaomi/accountsdk/request/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/p;Ljava/lang/String;J)V

    invoke-static {v1}, Lcom/xiaomi/accountsdk/request/C;->agd(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected aeN(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/n;->aez()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/J;

    invoke-direct {v1, p1, v0}, Lcom/xiaomi/accountsdk/request/J;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/xiaomi/accountsdk/request/n;->XX:Lcom/xiaomi/accountsdk/request/t;

    invoke-virtual {v4, v1, v2, v3}, Lcom/xiaomi/accountsdk/request/t;->afd(Lcom/xiaomi/accountsdk/request/J;J)V

    sget-object v1, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/xiaomi/accountsdk/request/a;->Pp(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method protected aeO()V
    .locals 12

    const/4 v11, -0x1

    invoke-static {}, Lcom/xiaomi/accountsdk/request/v;->afl()J

    move-result-wide v4

    invoke-static {}, Lcom/xiaomi/accountsdk/request/v;->afm()J

    move-result-wide v6

    invoke-static {}, Lcom/xiaomi/accountsdk/request/v;->afj()J

    move-result-wide v2

    invoke-static {}, Lcom/xiaomi/accountsdk/request/v;->afk()J

    move-result-wide v0

    new-instance v8, Lcom/xiaomi/accountsdk/request/R;

    invoke-direct {v8}, Lcom/xiaomi/accountsdk/request/R;-><init>()V

    const-string/jumbo v9, "http://c.id.mi.com/conn/getParams"

    invoke-virtual {v8, v9}, Lcom/xiaomi/accountsdk/request/R;->agN(Ljava/lang/String;)V

    new-instance v9, Lcom/xiaomi/accountsdk/request/H;

    invoke-direct {v9, v8}, Lcom/xiaomi/accountsdk/request/H;-><init>(Lcom/xiaomi/accountsdk/request/R;)V

    :try_start_0
    invoke-virtual {v9}, Lcom/xiaomi/accountsdk/request/M;->execute()Lcom/xiaomi/accountsdk/request/f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/accountsdk/request/f;->adZ()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    return-void

    :cond_0
    const-string/jumbo v9, "&&&START&&&"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "&&&START&&&"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "connectivity_params"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "backup_ip_expire"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v11, :cond_2

    mul-int/lit16 v6, v9, 0x3e8

    int-to-long v6, v6

    :cond_2
    const-string/jumbo v9, "cached_ip_expire"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v11, :cond_3

    mul-int/lit16 v4, v9, 0x3e8

    int-to-long v4, v4

    :cond_3
    const-string/jumbo v9, "ping_threshold"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v11, :cond_4

    int-to-long v2, v9

    :cond_4
    const-string/jumbo v9, "ping_time_coefficient"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eq v8, v11, :cond_5

    int-to-long v0, v8

    :cond_5
    invoke-static {v4, v5}, Lcom/xiaomi/accountsdk/request/v;->afn(J)V

    invoke-static {v6, v7}, Lcom/xiaomi/accountsdk/request/v;->afo(J)V

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/request/v;->afp(J)V

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/request/v;->afq(J)V

    sget-object v8, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    if-eqz v8, :cond_6

    sget-object v8, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    invoke-interface {v8, v4, v5}, Lcom/xiaomi/accountsdk/request/a;->Po(J)V

    sget-object v4, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    invoke-interface {v4, v6, v7}, Lcom/xiaomi/accountsdk/request/a;->Pm(J)V

    sget-object v4, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    invoke-interface {v4, v2, v3}, Lcom/xiaomi/accountsdk/request/a;->Pq(J)V

    sget-object v2, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    invoke-interface {v2, v0, v1}, Lcom/xiaomi/accountsdk/request/a;->Pr(J)V

    :cond_6
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IPStrategy"

    const-string/jumbo v2, "updateStrategyConfigOnline"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v0

    const-string/jumbo v1, "IPStrategy"

    const-string/jumbo v2, "updateStrategyConfigOnline"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_2
    move-exception v0

    const-string/jumbo v1, "IPStrategy"

    const-string/jumbo v2, "updateStrategyConfigOnline"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected aeu(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/n;->aev(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method aev(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/n;->aez()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/accountsdk/request/J;

    invoke-direct {v2, p1, v1}, Lcom/xiaomi/accountsdk/request/J;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/accountsdk/request/n;->XW:Lcom/xiaomi/accountsdk/request/t;

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/request/t;->afb(Lcom/xiaomi/accountsdk/request/J;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    if-eqz v3, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    invoke-interface {v0, p1, v1, v4}, Lcom/xiaomi/accountsdk/request/a;->Pd(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/xiaomi/accountsdk/request/n;->XW:Lcom/xiaomi/accountsdk/request/t;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/request/t;->afc(Lcom/xiaomi/accountsdk/request/J;Ljava/util/List;)V

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/accountsdk/request/n;->XY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_1
    return-object v0
.end method

.method protected aew(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/n;->aeE()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v5

    :cond_0
    new-instance v2, Lcom/xiaomi/accountsdk/request/R;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/request/R;-><init>()V

    const-string/jumbo v3, "http://resolver.msg.xiaomi.net/gslb/?ver=3.0&list=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/request/R;->agN(Ljava/lang/String;)V

    new-instance v3, Lcom/xiaomi/accountsdk/request/H;

    invoke-direct {v3, v2}, Lcom/xiaomi/accountsdk/request/H;-><init>(Lcom/xiaomi/accountsdk/request/R;)V

    :try_start_0
    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/M;->execute()Lcom/xiaomi/accountsdk/request/f;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/f;->adZ()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "R"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "wifi"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    return-object v5

    :cond_1
    const-string/jumbo v1, "wap"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v5

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IPStrategy"

    const-string/jumbo v2, "getBackupIpListOnline error, cause : "

    invoke-virtual {v0}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    :catch_1
    move-exception v0

    const-string/jumbo v1, "IPStrategy"

    const-string/jumbo v2, "getBackupIpListOnline error, cause : "

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    :catch_2
    move-exception v0

    const-string/jumbo v1, "IPStrategy"

    const-string/jumbo v2, "getBackupIpListOnline"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5
.end method

.method aex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/n;->aez()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/accountsdk/request/J;

    invoke-direct {v2, p1, v1}, Lcom/xiaomi/accountsdk/request/J;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/accountsdk/request/n;->XX:Lcom/xiaomi/accountsdk/request/t;

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/request/t;->aeZ(Lcom/xiaomi/accountsdk/request/J;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    if-eqz v3, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    invoke-interface {v0, p1, v1, v4}, Lcom/xiaomi/accountsdk/request/a;->Pf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/xiaomi/accountsdk/request/n;->XX:Lcom/xiaomi/accountsdk/request/t;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/request/t;->afa(Lcom/xiaomi/accountsdk/request/J;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method aey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/n;->aeG(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v5

    :cond_0
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    return-object v3

    :catch_0
    move-exception v0

    :cond_4
    return-object v5
.end method

.method protected aez()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/xiaomi/accountsdk/request/n;->XZ:Lcom/xiaomi/accountsdk/request/a;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/request/a;->OZ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
