.class public Lcom/xiaomi/accountsdk/utils/k;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ahJ(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;)Lcom/xiaomi/accountsdk/utils/j;
    .locals 3

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/r;->aik()Lcom/xiaomi/accountsdk/utils/l;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/a;->aha()Lcom/xiaomi/accountsdk/utils/b;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    invoke-virtual {v2, p1, v0, v1}, Lcom/xiaomi/accountsdk/utils/k;->ahK(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;Lcom/xiaomi/accountsdk/utils/l;Lcom/xiaomi/accountsdk/utils/b;)Lcom/xiaomi/accountsdk/utils/j;

    move-result-object v0

    return-object v0
.end method

.method ahK(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;Lcom/xiaomi/accountsdk/utils/l;Lcom/xiaomi/accountsdk/utils/b;)Lcom/xiaomi/accountsdk/utils/j;
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    return-object v4

    :cond_1
    if-nez p3, :cond_2

    return-object v4

    :cond_2
    :try_start_0
    invoke-interface {p3}, Lcom/xiaomi/accountsdk/utils/b;->mZ()Z
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    return-object v4

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FidNonce"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :cond_3
    sget-object v0, Lcom/xiaomi/accountsdk/utils/FidNonce$Type;->Zq:Lcom/xiaomi/accountsdk/utils/FidNonce$Type;

    if-ne p1, v0, :cond_4

    const-string/jumbo v0, "n"

    :goto_0
    invoke-interface {p2}, Lcom/xiaomi/accountsdk/utils/l;->ahO()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->ahM(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/k;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->ahL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :try_start_2
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/xiaomi/accountsdk/utils/b;->na([B)[B
    :try_end_2
    .catch Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    if-nez v0, :cond_5

    return-object v4

    :cond_4
    const-string/jumbo v0, "wb"

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "FidNonce"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :catch_2
    move-exception v0

    const-string/jumbo v1, "FidNonce"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :catch_3
    move-exception v0

    const-string/jumbo v1, "FidNonce"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :cond_5
    invoke-static {v0, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    :try_start_3
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4

    new-instance v0, Lcom/xiaomi/accountsdk/utils/j;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_4
    move-exception v0

    const-string/jumbo v1, "FidNonce"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method

.method ahL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "tp"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "nonce"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "v"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "should not happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ahM(J)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/xiaomi/accountsdk/utils/h;->ahz(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/B;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
