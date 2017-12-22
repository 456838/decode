.class Lcom/xiaomi/phonenum/c/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/phonenum/c/n;


# instance fields
.field aeK:Lcom/xiaomi/phonenum/c/d;

.field final synthetic aeL:Lcom/xiaomi/phonenum/c/f;


# direct methods
.method private constructor <init>(Lcom/xiaomi/phonenum/c/f;Lcom/xiaomi/phonenum/c/d;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/phonenum/c/e;->aeL:Lcom/xiaomi/phonenum/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/phonenum/c/e;->aeK:Lcom/xiaomi/phonenum/c/d;

    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    check-cast v0, Ljava/net/CookieManager;

    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    invoke-virtual {v0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/phonenum/c/f;Lcom/xiaomi/phonenum/c/d;Lcom/xiaomi/phonenum/c/k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/phonenum/c/e;-><init>(Lcom/xiaomi/phonenum/c/f;Lcom/xiaomi/phonenum/c/d;)V

    return-void
.end method

.method private aoe(Lcom/xiaomi/phonenum/c/h;Landroid/net/Network;)Lcom/xiaomi/phonenum/c/a;
    .locals 6

    const/4 v3, 0x0

    if-nez p2, :cond_2

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lcom/xiaomi/phonenum/c/h;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/c/e;->aeK:Lcom/xiaomi/phonenum/c/d;

    iget-wide v0, v0, Lcom/xiaomi/phonenum/c/d;->aeD:J

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/xiaomi/phonenum/c/e;->aeK:Lcom/xiaomi/phonenum/c/d;

    iget-wide v0, v0, Lcom/xiaomi/phonenum/c/d;->aeE:J

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/h;->aeQ:Ljava/util/Map;

    if-nez v0, :cond_3

    const-string/jumbo v0, "GET"

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_1
    iget-boolean v0, p1, Lcom/xiaomi/phonenum/c/h;->followRedirects:Z

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/h;->aeP:Ljava/util/Map;

    if-nez v0, :cond_4

    :cond_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/h;->aeQ:Ljava/util/Map;

    if-nez v0, :cond_5

    :goto_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    new-instance v1, Lcom/xiaomi/phonenum/c/b;

    invoke-direct {v1}, Lcom/xiaomi/phonenum/c/b;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/phonenum/c/b;->code(I)Lcom/xiaomi/phonenum/c/b;

    move-result-object v1

    const-string/jumbo v4, "Location"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/xiaomi/phonenum/c/b;->anX(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/b;

    move-result-object v1

    const-string/jumbo v4, "Set-Cookie"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/xiaomi/phonenum/c/b;->anW(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/b;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/xiaomi/phonenum/c/b;->anU(Ljava/util/Map;)Lcom/xiaomi/phonenum/c/b;

    move-result-object v4

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_6

    invoke-virtual {v4}, Lcom/xiaomi/phonenum/c/b;->build()Lcom/xiaomi/phonenum/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lcom/xiaomi/phonenum/c/h;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string/jumbo v0, "POST"

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :cond_4
    :try_start_2
    iget-object v0, p1, Lcom/xiaomi/phonenum/c/h;->aeP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v4, p1, Lcom/xiaomi/phonenum/c/h;->aeQ:Ljava/util/Map;

    invoke-static {v4}, Lcom/xiaomi/phonenum/utils/o;->amI(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :cond_6
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    invoke-direct {v1, v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/phonenum/c/b;->anV(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/c/b;->build()Lcom/xiaomi/phonenum/c/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    if-nez v1, :cond_8

    :goto_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :cond_7
    :try_start_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_6
    if-nez v1, :cond_9

    :goto_7
    :try_start_6
    throw v0

    :cond_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_5

    :cond_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_6
.end method

.method private aog(I)Landroid/net/Network;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/c/e;->aeL:Lcom/xiaomi/phonenum/c/f;

    invoke-static {v0}, Lcom/xiaomi/phonenum/c/f;->aoi(Lcom/xiaomi/phonenum/c/f;)Lcom/xiaomi/phonenum/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/c/e;->aeK:Lcom/xiaomi/phonenum/c/d;

    iget-wide v2, v1, Lcom/xiaomi/phonenum/c/d;->aeG:J

    invoke-interface {v0, p1, v2, v3}, Lcom/xiaomi/phonenum/utils/a;->alL(IJ)Landroid/net/Network;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/c/e;->aeL:Lcom/xiaomi/phonenum/c/f;

    invoke-static {v1}, Lcom/xiaomi/phonenum/c/f;->aoj(Lcom/xiaomi/phonenum/c/f;)Lcom/xiaomi/phonenum/utils/n;

    move-result-object v1

    const-string/jumbo v2, "HttpUrlConnClient"

    const-string/jumbo v3, "waitForCellular"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaomi/phonenum/utils/n;->amD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/c/e;->aeL:Lcom/xiaomi/phonenum/c/f;

    invoke-static {v1}, Lcom/xiaomi/phonenum/c/f;->aoj(Lcom/xiaomi/phonenum/c/f;)Lcom/xiaomi/phonenum/utils/n;

    move-result-object v1

    const-string/jumbo v2, "HttpUrlConnClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitForCellular Timeout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/phonenum/c/e;->aeK:Lcom/xiaomi/phonenum/c/d;

    iget-wide v4, v4, Lcom/xiaomi/phonenum/c/d;->aeG:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaomi/phonenum/utils/n;->amD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public aof(Lcom/xiaomi/phonenum/c/h;)Lcom/xiaomi/phonenum/c/a;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/xiaomi/phonenum/c/e;->aeK:Lcom/xiaomi/phonenum/c/d;

    iget v1, v1, Lcom/xiaomi/phonenum/c/d;->aeH:I

    if-gez v1, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/xiaomi/phonenum/c/h;->url:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v1, v2, v3}, Lcom/xiaomi/phonenum/utils/y;->amS(Ljava/lang/String;J)V

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/phonenum/c/e;->aoe(Lcom/xiaomi/phonenum/c/h;Landroid/net/Network;)Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/phonenum/c/e;->aeK:Lcom/xiaomi/phonenum/c/d;

    iget v1, v1, Lcom/xiaomi/phonenum/c/d;->aeH:I

    iget-object v4, p0, Lcom/xiaomi/phonenum/c/e;->aeL:Lcom/xiaomi/phonenum/c/f;

    invoke-static {v4}, Lcom/xiaomi/phonenum/c/f;->aoi(Lcom/xiaomi/phonenum/c/f;)Lcom/xiaomi/phonenum/utils/a;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/xiaomi/phonenum/utils/a;->alI(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/xiaomi/phonenum/c/e;->aeL:Lcom/xiaomi/phonenum/c/f;

    invoke-static {v4}, Lcom/xiaomi/phonenum/c/f;->aoi(Lcom/xiaomi/phonenum/c/f;)Lcom/xiaomi/phonenum/utils/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/xiaomi/phonenum/utils/a;->alK()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/c/e;->aeL:Lcom/xiaomi/phonenum/c/f;

    invoke-static {v0}, Lcom/xiaomi/phonenum/c/f;->aoi(Lcom/xiaomi/phonenum/c/f;)Lcom/xiaomi/phonenum/utils/a;

    move-result-object v0

    const-string/jumbo v4, "android.permission.CHANGE_NETWORK_STATE"

    invoke-interface {v0, v4}, Lcom/xiaomi/phonenum/utils/a;->alX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/xiaomi/phonenum/c/e;->aog(I)Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/phonenum/bean/HttpError;->acC:Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/HttpError;->alH()Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lcom/xiaomi/phonenum/bean/HttpError;->acA:Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/HttpError;->alH()Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v0, Lcom/xiaomi/phonenum/bean/HttpError;->acB:Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/HttpError;->alH()Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    return-object v0
.end method
