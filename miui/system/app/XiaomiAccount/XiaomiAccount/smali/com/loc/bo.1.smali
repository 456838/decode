.class public Lcom/loc/bo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aqB:Lcom/loc/bo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/loc/bo;
    .locals 1

    sget-object v0, Lcom/loc/bo;->aqB:Lcom/loc/bo;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/loc/bo;->aqB:Lcom/loc/bo;

    return-object v0

    :cond_0
    new-instance v0, Lcom/loc/bo;

    invoke-direct {v0}, Lcom/loc/bo;-><init>()V

    sput-object v0, Lcom/loc/bo;->aqB:Lcom/loc/bo;

    goto :goto_0
.end method


# virtual methods
.method public aDD(Lcom/loc/e;Z)Ljava/net/HttpURLConnection;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/loc/bo;->aDG(Lcom/loc/e;)V

    iget-object v1, p1, Lcom/loc/e;->ajv:Ljava/net/Proxy;

    if-eqz v1, :cond_1

    iget-object v0, p1, Lcom/loc/e;->ajv:Ljava/net/Proxy;

    move-object v1, v0

    :goto_0
    if-nez p2, :cond_2

    new-instance v0, Lcom/loc/cn;

    iget v2, p1, Lcom/loc/e;->a:I

    iget v3, p1, Lcom/loc/e;->b:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/loc/cn;-><init>(IILjava/net/Proxy;Z)V

    :goto_1
    invoke-virtual {p1}, Lcom/loc/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/loc/e;->a()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/cn;->aFz(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/e;->f()[B

    move-result-object v1

    if-nez v1, :cond_3

    :cond_0
    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    return-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/loc/cn;

    iget v2, p1, Lcom/loc/e;->a:I

    iget v3, p1, Lcom/loc/e;->b:I

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/loc/cn;-><init>(IILjava/net/Proxy;Z)V
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    throw v0

    :cond_3
    :try_start_1
    array-length v2, v1

    if-lez v2, :cond_0

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Lcom/loc/l; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aDE(Lcom/loc/e;)[B
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/loc/bo;->aDH(Lcom/loc/e;Z)Lcom/loc/au;
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v0, Lcom/loc/au;->a:[B

    return-object v0
.end method

.method public aDF(Lcom/loc/e;)[B
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/loc/bo;->aDH(Lcom/loc/e;Z)Lcom/loc/au;
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "BaseNetManager"

    const-string/jumbo v2, "makeSyncPostRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v0, Lcom/loc/au;->a:[B

    return-object v0
.end method

.method protected aDG(Lcom/loc/e;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/loc/e;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "request url is empty"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "requeust is null"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/loc/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method protected aDH(Lcom/loc/e;Z)Lcom/loc/au;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/loc/bo;->aDG(Lcom/loc/e;)V

    iget-object v1, p1, Lcom/loc/e;->ajv:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/loc/e;->ajv:Ljava/net/Proxy;

    :cond_0
    new-instance v1, Lcom/loc/cn;

    iget v2, p1, Lcom/loc/e;->a:I

    iget v3, p1, Lcom/loc/e;->b:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/loc/cn;-><init>(IILjava/net/Proxy;Z)V

    invoke-virtual {p1}, Lcom/loc/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/e;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/loc/e;->f()[B

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/loc/cn;->aFy(Ljava/lang/String;Ljava/util/Map;[B)Lcom/loc/au;
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method
