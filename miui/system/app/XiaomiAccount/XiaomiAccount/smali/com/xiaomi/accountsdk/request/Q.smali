.class public Lcom/xiaomi/accountsdk/request/Q;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static agF(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/p;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/accountsdk/request/f;"
        }
    .end annotation

    if-nez p5, :cond_0

    new-instance p5, Lcom/xiaomi/accountsdk/utils/C;

    invoke-direct {p5, p4}, Lcom/xiaomi/accountsdk/utils/C;-><init>(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "GET"

    invoke-static {v0, p0, p1, p4, p5}, Lcom/xiaomi/accountsdk/request/Q;->agK(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/p;)Ljava/util/Map;

    move-result-object v1

    move-object v0, p0

    move-object v2, p7

    move-object v3, p2

    move v4, p3

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/accountsdk/request/b;->adK(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    invoke-static {v0, p4, p5}, Lcom/xiaomi/accountsdk/request/Q;->agL(Lcom/xiaomi/accountsdk/request/f;Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/p;)Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    return-object v0
.end method

.method public static agG(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/p;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/accountsdk/request/g;"
        }
    .end annotation

    invoke-static/range {p0 .. p7}, Lcom/xiaomi/accountsdk/request/Q;->agF(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/b;->adC(Lcom/xiaomi/accountsdk/request/f;)Lcom/xiaomi/accountsdk/request/g;

    move-result-object v0

    return-object v0
.end method

.method public static agH(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/p;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/accountsdk/request/g;"
        }
    .end annotation

    invoke-static/range {p0 .. p7}, Lcom/xiaomi/accountsdk/request/Q;->agI(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/b;->adC(Lcom/xiaomi/accountsdk/request/f;)Lcom/xiaomi/accountsdk/request/g;

    move-result-object v0

    return-object v0
.end method

.method public static agI(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/p;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/accountsdk/request/f;"
        }
    .end annotation

    if-nez p5, :cond_0

    new-instance p5, Lcom/xiaomi/accountsdk/utils/C;

    invoke-direct {p5, p4}, Lcom/xiaomi/accountsdk/utils/C;-><init>(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "POST"

    invoke-static {v0, p0, p1, p4, p5}, Lcom/xiaomi/accountsdk/request/Q;->agK(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/p;)Ljava/util/Map;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p7

    move v4, p3

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/accountsdk/request/b;->adN(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    invoke-static {v0, p4, p5}, Lcom/xiaomi/accountsdk/request/Q;->agL(Lcom/xiaomi/accountsdk/request/f;Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/p;)Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    return-object v0
.end method

.method private static agJ(Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/p;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lcom/xiaomi/accountsdk/request/CipherException;

    const-string/jumbo v1, "no invalid coder"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/CipherException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-interface {p1, p0}, Lcom/xiaomi/accountsdk/utils/p;->aic(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string/jumbo v2, "failed to decrypt response"

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static agK(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/p;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/p;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p4, :cond_0

    new-instance v0, Lcom/xiaomi/accountsdk/request/CipherException;

    const-string/jumbo v1, "no invalid cypt coder"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/CipherException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p0, p1, v2, p3}, Lcom/xiaomi/accountsdk/utils/h;->ahA(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "signature"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {p4, v0}, Lcom/xiaomi/accountsdk/utils/p;->aid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static agL(Lcom/xiaomi/accountsdk/request/f;Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/p;)Lcom/xiaomi/accountsdk/request/f;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "no response from server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/f;->adZ()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string/jumbo v1, "invalid response from server"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0, p2}, Lcom/xiaomi/accountsdk/request/Q;->agJ(Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/p;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/f;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/f;->adU()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/request/f;->adX(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/f;->adV()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/request/f;->adY(I)V

    invoke-static {}, Lcom/xiaomi/accountsdk/request/A;->afV()Lcom/xiaomi/accountsdk/request/A;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/A;->afX(Lcom/xiaomi/accountsdk/request/f;)V

    return-object v1
.end method
