.class Lcom/xiaomi/mistatistic/sdk/d;
.super Ljava/net/URLStreamHandler;
.source ""


# instance fields
.field private aiX:Ljava/net/URLStreamHandler;


# direct methods
.method public constructor <init>(Ljava/net/URLStreamHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/d;->aiX:Ljava/net/URLStreamHandler;

    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-class v0, Ljava/net/URLStreamHandler;

    const-string/jumbo v1, "openConnection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/net/URL;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/d;->aiX:Ljava/net/URLStreamHandler;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    return-object v0

    :cond_0
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/b/e;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v1, v0}, Lcom/xiaomi/mistatistic/sdk/b/e;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/b/e;->a(J)V

    return-object v1

    :cond_1
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/b/a;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {v1, v0}, Lcom/xiaomi/mistatistic/sdk/b/a;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/b/a;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/m;->a()Lcom/xiaomi/mistatistic/sdk/a/m;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/data/a;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/m;->aqI(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-class v0, Ljava/net/URLStreamHandler;

    const-string/jumbo v1, "openConnection"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/net/URL;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/net/Proxy;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/d;->aiX:Ljava/net/URLStreamHandler;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    return-object v0

    :cond_0
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/b/e;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v1, v0}, Lcom/xiaomi/mistatistic/sdk/b/e;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/b/e;->a(J)V

    return-object v1

    :cond_1
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/b/a;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {v1, v0}, Lcom/xiaomi/mistatistic/sdk/b/a;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/b/a;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/m;->a()Lcom/xiaomi/mistatistic/sdk/a/m;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/data/a;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/m;->aqI(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method
