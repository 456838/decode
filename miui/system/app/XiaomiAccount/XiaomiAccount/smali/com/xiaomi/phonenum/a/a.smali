.class public Lcom/xiaomi/phonenum/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ado:Lcom/xiaomi/phonenum/utils/n;

.field private adp:Lcom/xiaomi/phonenum/c/j;


# direct methods
.method public constructor <init>(Lcom/xiaomi/phonenum/c/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/p;->amM()Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/a/a;->ado:Lcom/xiaomi/phonenum/utils/n;

    iput-object p1, p0, Lcom/xiaomi/phonenum/a/a;->adp:Lcom/xiaomi/phonenum/c/j;

    return-void
.end method


# virtual methods
.method public ang(ILcom/xiaomi/phonenum/c/h;Ljava/lang/String;)Lcom/xiaomi/phonenum/c/a;
    .locals 8
    .param p2    # Lcom/xiaomi/phonenum/c/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v7, 0xa

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v0, Lcom/xiaomi/phonenum/c/i;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/c/i;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/phonenum/c/i;->aok(I)Lcom/xiaomi/phonenum/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/c/i;->build()Lcom/xiaomi/phonenum/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/a;->adp:Lcom/xiaomi/phonenum/c/j;

    invoke-virtual {v1, v0}, Lcom/xiaomi/phonenum/c/j;->aoh(Lcom/xiaomi/phonenum/c/d;)Lcom/xiaomi/phonenum/c/n;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p2}, Lcom/xiaomi/phonenum/c/n;->aof(Lcom/xiaomi/phonenum/c/h;)Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/a;->ado:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v4, "DataProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "data response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/xiaomi/phonenum/utils/n;->amE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/a;->ado:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v4, "DataProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dataRequestTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/xiaomi/phonenum/utils/n;->amE(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "requestTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    new-instance v0, Lcom/xiaomi/phonenum/c/c;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/c/c;-><init>()V

    invoke-virtual {v0, p3}, Lcom/xiaomi/phonenum/c/c;->url(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/c/c;->aoa(Ljava/util/Map;)Lcom/xiaomi/phonenum/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/a;->adp:Lcom/xiaomi/phonenum/c/j;

    invoke-virtual {v1}, Lcom/xiaomi/phonenum/c/j;->aol()Lcom/xiaomi/phonenum/c/n;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/c/c;->build()Lcom/xiaomi/phonenum/c/h;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xiaomi/phonenum/c/n;->aof(Lcom/xiaomi/phonenum/c/h;)Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "followUpRequest response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/a;->ado:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v4, "DataProxy"

    const-string/jumbo v5, "data request"

    invoke-interface {v1, v4, v5, v0}, Lcom/xiaomi/phonenum/utils/n;->amD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/xiaomi/phonenum/bean/HttpError;->acD:Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/HttpError;->alH()Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v2, "code"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/xiaomi/phonenum/c/a;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, v0, Lcom/xiaomi/phonenum/c/a;->aes:Ljava/util/Map;

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v0, v0, Lcom/xiaomi/phonenum/c/a;->aes:Ljava/util/Map;

    invoke-static {v0}, Lcom/xiaomi/phonenum/utils/o;->amK(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "headers"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/phonenum/a/a;->ado:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v3, "DataProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "headers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "\\"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/xiaomi/phonenum/utils/n;->amE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/xiaomi/phonenum/a/a;->ado:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v3, "DataProxy"

    const-string/jumbo v4, "joinToJson"

    invoke-interface {v2, v3, v4, v0}, Lcom/xiaomi/phonenum/utils/n;->amD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v2, "body"

    iget-object v3, v0, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget v1, v0, Lcom/xiaomi/phonenum/c/a;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v0
.end method
