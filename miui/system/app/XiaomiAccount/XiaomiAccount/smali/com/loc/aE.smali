.class public Lcom/loc/aE;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static anA:Lcom/loc/aE;


# instance fields
.field anB:Lcom/loc/O;

.field anC:Lcom/loc/bo;

.field anD:Lcom/loc/j;

.field private anE:I

.field b:Ljava/lang/String;

.field private f:J

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/aE;->anA:Lcom/loc/aE;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/aE;->anB:Lcom/loc/O;

    iput-object v0, p0, Lcom/loc/aE;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/aE;->anC:Lcom/loc/bo;

    iput-object v0, p0, Lcom/loc/aE;->anD:Lcom/loc/j;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/aE;->f:J

    sget v0, Lcom/loc/aH;->j:I

    iput v0, p0, Lcom/loc/aE;->g:I

    sget v0, Lcom/loc/aH;->j:I

    iput v0, p0, Lcom/loc/aE;->anE:I

    :try_start_0
    new-instance v0, Lcom/loc/cw;

    const-string/jumbo v1, "loc"

    const-string/jumbo v2, "2.4.0"

    const-string/jumbo v3, "AMAP_Location_SDK_Android 2.4.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/loc/cw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/aH;->b()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/cw;->aFJ([Ljava/lang/String;)Lcom/loc/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/cw;->a()Lcom/loc/O;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aE;->anB:Lcom/loc/O;
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/loc/aE;->anB:Lcom/loc/O;

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/loc/aY;->aCK(Landroid/content/Context;Lcom/loc/O;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aE;->b:Ljava/lang/String;

    invoke-static {}, Lcom/loc/bo;->a()Lcom/loc/bo;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aE;->anC:Lcom/loc/bo;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LocNetManager"

    const-string/jumbo v2, "LocNetManager"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized azM(Landroid/content/Context;)Lcom/loc/aE;
    .locals 2

    const-class v1, Lcom/loc/aE;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/aE;->anA:Lcom/loc/aE;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/loc/aE;->anA:Lcom/loc/aE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/loc/aE;

    invoke-direct {v0, p0}, Lcom/loc/aE;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loc/aE;->anA:Lcom/loc/aE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static azP(Landroid/net/NetworkInfo;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public azN(Landroid/content/Context;Lorg/json/JSONObject;Lcom/loc/f;Ljava/lang/String;)[B
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v0, "httptimeout"

    invoke-static {p2, v0}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-static {p1}, Lcom/loc/bd;->aDh(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/aE;->azP(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/loc/t;

    invoke-direct {v1}, Lcom/loc/t;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v3, "application/octet-stream"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "Accept-Encoding"

    const-string/jumbo v3, "gzip"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "gzipped"

    const-string/jumbo v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "Connection"

    const-string/jumbo v3, "Keep-Alive"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "User-Agent"

    const-string/jumbo v3, "AMAP_Location_SDK_Android 2.4.0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "X-INFO"

    iget-object v3, p0, Lcom/loc/aE;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "KEY"

    invoke-static {p1}, Lcom/loc/bO;->aEV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "enginever"

    const-string/jumbo v3, "4.2"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/loc/aY;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/loc/bO;->aEV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/loc/aY;->aCQ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ts"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "scode"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "platinfo"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "platform=Android&sdkversion=%s&product=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "2.4.0"

    aput-object v6, v5, v7

    const/4 v6, 0x1

    const-string/jumbo v7, "loc"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "logversion"

    const-string/jumbo v3, "2.1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "encr"

    const-string/jumbo v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/loc/t;->avn(Ljava/util/Map;)V

    invoke-virtual {v1, p4}, Lcom/loc/t;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/loc/f;->a()[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bd;->aDf([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/loc/t;->avo([B)V

    invoke-static {p1}, Lcom/loc/ce;->aFm(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/loc/t;->auf(Ljava/net/Proxy;)V

    iget v0, p0, Lcom/loc/aE;->g:I

    invoke-virtual {v1, v0}, Lcom/loc/t;->a(I)V

    iget v0, p0, Lcom/loc/aE;->g:I

    invoke-virtual {v1, v0}, Lcom/loc/t;->b(I)V

    iget-object v0, p0, Lcom/loc/aE;->anC:Lcom/loc/bo;

    invoke-virtual {v0, v1}, Lcom/loc/bo;->aDF(Lcom/loc/e;)[B

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "httptimeout"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loc/aE;->g:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LocNetManager"

    const-string/jumbo v2, "req"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public azO([BLandroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-static {p2}, Lcom/loc/bd;->aDh(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/aE;->azP(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/loc/t;

    invoke-direct {v2}, Lcom/loc/t;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Connection"

    const-string/jumbo v4, "Keep-Alive"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/loc/t;->avn(Ljava/util/Map;)V

    invoke-virtual {v2, p3}, Lcom/loc/t;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/loc/t;->avo([B)V

    invoke-static {p2}, Lcom/loc/ce;->aFm(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/loc/t;->auf(Ljava/net/Proxy;)V

    sget v0, Lcom/loc/aH;->j:I

    invoke-virtual {v2, v0}, Lcom/loc/t;->a(I)V

    sget v0, Lcom/loc/aH;->j:I

    invoke-virtual {v2, v0}, Lcom/loc/t;->b(I)V

    if-nez p4, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/loc/aE;->anC:Lcom/loc/bo;

    invoke-virtual {v0, v2}, Lcom/loc/bo;->aDF(Lcom/loc/e;)[B

    move-result-object v0

    :goto_1
    move-object v2, v0

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    return-object v0

    :cond_0
    return-object v1

    :cond_1
    const-string/jumbo v3, "Accept-Encoding"

    const-string/jumbo v4, "gzip"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "User-Agent"

    const-string/jumbo v4, "AMAP_Location_SDK_Android 2.4.0"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "platinfo"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "platform=Android&sdkversion=%s&product=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "2.4.0"

    aput-object v7, v6, v8

    const/4 v7, 0x1

    const-string/jumbo v8, "loc"

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "logversion"

    const-string/jumbo v4, "2.1"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/loc/aE;->anC:Lcom/loc/bo;

    invoke-virtual {v0, v2}, Lcom/loc/bo;->aDE(Lcom/loc/e;)[B
    :try_end_1
    .catch Lcom/loc/l; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LocNetManager"

    const-string/jumbo v3, "post"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v2, "LocNetManager"

    const-string/jumbo v3, "post"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public azQ(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;[B)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/loc/bd;->aDh(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/aE;->azP(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lcom/loc/t;

    invoke-direct {v1}, Lcom/loc/t;-><init>()V

    invoke-virtual {v1, p3}, Lcom/loc/t;->avn(Ljava/util/Map;)V

    invoke-virtual {v1, p2}, Lcom/loc/t;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lcom/loc/t;->avo([B)V

    invoke-static {p1}, Lcom/loc/ce;->aFm(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loc/t;->auf(Ljava/net/Proxy;)V

    sget v2, Lcom/loc/aH;->j:I

    invoke-virtual {v1, v2}, Lcom/loc/t;->a(I)V

    sget v2, Lcom/loc/aH;->j:I

    invoke-virtual {v1, v2}, Lcom/loc/t;->b(I)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/loc/aE;->anC:Lcom/loc/bo;

    invoke-virtual {v2, v1, v0}, Lcom/loc/bo;->aDD(Lcom/loc/e;Z)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_0
    return-object v4

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LocNetManager"

    const-string/jumbo v2, "doHttpPost"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method
