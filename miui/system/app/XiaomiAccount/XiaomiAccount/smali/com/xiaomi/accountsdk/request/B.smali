.class public Lcom/xiaomi/accountsdk/request/B;
.super Lcom/xiaomi/accountsdk/request/N;
.source ""


# instance fields
.field private final YG:Lcom/xiaomi/accountsdk/request/n;

.field private final YH:Lcom/xiaomi/accountsdk/request/M;

.field private final YI:Lcom/xiaomi/accountsdk/request/V;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/M;Lcom/xiaomi/accountsdk/request/n;Lcom/xiaomi/accountsdk/request/V;)V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/N;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/B;->YH:Lcom/xiaomi/accountsdk/request/M;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/B;->YG:Lcom/xiaomi/accountsdk/request/n;

    new-instance v0, Lcom/xiaomi/accountsdk/request/D;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/xiaomi/accountsdk/request/V;

    new-instance v2, Lcom/xiaomi/accountsdk/request/E;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/request/E;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/D;-><init>([Lcom/xiaomi/accountsdk/request/V;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    return-void
.end method

.method static aga(Lcom/xiaomi/accountsdk/request/M;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/z;)Z
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v2

    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/M;->agv()Lcom/xiaomi/accountsdk/request/M;

    move-result-object v0

    iget-object v3, v0, Lcom/xiaomi/accountsdk/request/M;->YV:Lcom/xiaomi/accountsdk/request/R;

    iget-object v6, v3, Lcom/xiaomi/accountsdk/request/R;->Zc:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string/jumbo v7, "host"

    invoke-virtual {v6, v7, p1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v3, Lcom/xiaomi/accountsdk/request/R;->url:Ljava/lang/String;

    invoke-virtual {v6, p1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/xiaomi/accountsdk/request/R;->url:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/M;->execute()Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    iput-object v0, p3, Lcom/xiaomi/accountsdk/request/z;->YE:Lcom/xiaomi/accountsdk/request/f;

    iget-object v0, p3, Lcom/xiaomi/accountsdk/request/z;->YE:Lcom/xiaomi/accountsdk/request/f;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    iput-wide v4, p3, Lcom/xiaomi/accountsdk/request/z;->YD:J

    const-string/jumbo v4, "RequestWithIP"

    const-string/jumbo v5, "visit with ip, host=%s, ip=%s, time=%s, result=%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object p2, v6, v1

    iget-wide v8, p3, Lcom/xiaomi/accountsdk/request/z;->YD:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v10

    aput-object v3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v3, "IOError,%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    iput-wide v4, p3, Lcom/xiaomi/accountsdk/request/z;->YD:J

    const-string/jumbo v3, "RequestWithIP"

    const-string/jumbo v4, "visit with ip, host=%s, ip=%s, time=%s, result=%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object p2, v5, v1

    iget-wide v6, p3, Lcom/xiaomi/accountsdk/request/z;->YD:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v10

    aput-object v0, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    iput-wide v4, p3, Lcom/xiaomi/accountsdk/request/z;->YD:J

    const-string/jumbo v3, "RequestWithIP"

    const-string/jumbo v4, "visit with ip, host=%s, ip=%s, time=%s, result=%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object p2, v5, v1

    iget-wide v6, p3, Lcom/xiaomi/accountsdk/request/z;->YD:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v10

    aput-object v8, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private agb()Lcom/xiaomi/accountsdk/request/f;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/V;->afT()V

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/B;->YH:Lcom/xiaomi/accountsdk/request/M;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/M;->execute()Lcom/xiaomi/accountsdk/request/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/request/V;->afS(Z)V

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/request/V;->afS(Z)V

    throw v0
.end method

.method private agc()Lcom/xiaomi/accountsdk/request/f;
    .locals 12

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/B;->YH:Lcom/xiaomi/accountsdk/request/M;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/M;->YV:Lcom/xiaomi/accountsdk/request/R;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/R;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/xiaomi/accountsdk/request/z;

    invoke-direct {v5}, Lcom/xiaomi/accountsdk/request/z;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/V;->agh()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/B;->YG:Lcom/xiaomi/accountsdk/request/n;

    invoke-virtual {v2, v4}, Lcom/xiaomi/accountsdk/request/n;->aex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/request/V;->afL(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/B;->YH:Lcom/xiaomi/accountsdk/request/M;

    invoke-static {v2, v4, v3, v5}, Lcom/xiaomi/accountsdk/request/B;->aga(Lcom/xiaomi/accountsdk/request/M;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/z;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/B;->YG:Lcom/xiaomi/accountsdk/request/n;

    iget-wide v8, v5, Lcom/xiaomi/accountsdk/request/z;->YD:J

    invoke-virtual {v2, v4, v3, v8, v9}, Lcom/xiaomi/accountsdk/request/n;->aeM(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/V;->afM()V

    move v2, v1

    :goto_0
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_0

    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v7}, Lcom/xiaomi/accountsdk/request/V;->afQ()V

    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/B;->YG:Lcom/xiaomi/accountsdk/request/n;

    invoke-virtual {v7, v4, v3}, Lcom/xiaomi/accountsdk/request/n;->aey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v7, v3}, Lcom/xiaomi/accountsdk/request/V;->afP(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v7, v3}, Lcom/xiaomi/accountsdk/request/V;->afR(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/B;->YH:Lcom/xiaomi/accountsdk/request/M;

    invoke-static {v7, v4, v3, v5}, Lcom/xiaomi/accountsdk/request/B;->aga(Lcom/xiaomi/accountsdk/request/M;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/z;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/B;->YG:Lcom/xiaomi/accountsdk/request/n;

    invoke-virtual {v2, v4, v3}, Lcom/xiaomi/accountsdk/request/n;->aeL(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/V;->afO()V

    move v2, v1

    :goto_1
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    if-nez v2, :cond_7

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/B;->YG:Lcom/xiaomi/accountsdk/request/n;

    invoke-virtual {v3, v4}, Lcom/xiaomi/accountsdk/request/n;->aev(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_7

    move v3, v0

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0, v3}, Lcom/xiaomi/accountsdk/request/V;->afH(I)V

    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/V;->afK()V

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v7}, Lcom/xiaomi/accountsdk/request/V;->afN()V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/V;->agg()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/B;->YG:Lcom/xiaomi/accountsdk/request/n;

    invoke-virtual {v1, v4}, Lcom/xiaomi/accountsdk/request/n;->aeJ(Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/xiaomi/accountsdk/request/B;->YH:Lcom/xiaomi/accountsdk/request/M;

    invoke-virtual {v8}, Lcom/xiaomi/accountsdk/request/M;->agv()Lcom/xiaomi/accountsdk/request/M;

    move-result-object v8

    iget-object v9, v8, Lcom/xiaomi/accountsdk/request/M;->YV:Lcom/xiaomi/accountsdk/request/R;

    const/16 v10, 0x2710

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xiaomi/accountsdk/request/R;->agW(Ljava/lang/Integer;)V

    iget-object v9, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v9, v3, v0}, Lcom/xiaomi/accountsdk/request/V;->afI(ILjava/lang/String;)V

    invoke-static {v8, v4, v0, v5}, Lcom/xiaomi/accountsdk/request/B;->aga(Lcom/xiaomi/accountsdk/request/M;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/z;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/B;->YG:Lcom/xiaomi/accountsdk/request/n;

    invoke-virtual {v2, v4, v0}, Lcom/xiaomi/accountsdk/request/n;->aeL(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0, v3}, Lcom/xiaomi/accountsdk/request/V;->afJ(I)V

    move v0, v1

    :goto_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/V;->age()V

    :goto_5
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/B;->YG:Lcom/xiaomi/accountsdk/request/n;

    invoke-virtual {v0, v4}, Lcom/xiaomi/accountsdk/request/n;->aeJ(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/xiaomi/accountsdk/request/z;->YE:Lcom/xiaomi/accountsdk/request/f;

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0, v3}, Lcom/xiaomi/accountsdk/request/V;->afH(I)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/V;->agf()V
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_6
    return-object v11

    :cond_7
    move v0, v2

    goto :goto_4
.end method


# virtual methods
.method public execute()Lcom/xiaomi/accountsdk/request/f;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/V;->afU()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/B;->YH:Lcom/xiaomi/accountsdk/request/M;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/M;->agw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/B;->agc()Lcom/xiaomi/accountsdk/request/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/V;->finish()V

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/B;->agb()Lcom/xiaomi/accountsdk/request/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/V;->finish()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/B;->YI:Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/V;->finish()V

    throw v0
.end method
