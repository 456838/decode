.class Lcom/xiaomi/phonenum/a/u;
.super Lcom/xiaomi/phonenum/a/f;
.source ""


# instance fields
.field final synthetic aep:Lcom/xiaomi/phonenum/a/t;

.field final synthetic aeq:Lcom/xiaomi/phonenum/a/m;

.field private volatile index:I


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/a/m;Lcom/xiaomi/phonenum/a/t;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/phonenum/a/u;->aeq:Lcom/xiaomi/phonenum/a/m;

    iput-object p2, p0, Lcom/xiaomi/phonenum/a/u;->aep:Lcom/xiaomi/phonenum/a/t;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/phonenum/a/f;-><init>(Lcom/xiaomi/phonenum/a/m;Lcom/xiaomi/phonenum/a/u;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/phonenum/a/u;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/phonenum/a/u;->aeq:Lcom/xiaomi/phonenum/a/m;

    invoke-static {v1}, Lcom/xiaomi/phonenum/a/m;->anD(Lcom/xiaomi/phonenum/a/m;)Lorg/json/JSONArray;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/phonenum/a/u;->index:I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    return v0
.end method

.method public next()Lcom/xiaomi/phonenum/a/s;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/a/u;->aeq:Lcom/xiaomi/phonenum/a/m;

    invoke-static {v0}, Lcom/xiaomi/phonenum/a/m;->anD(Lcom/xiaomi/phonenum/a/m;)Lorg/json/JSONArray;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/phonenum/a/u;->index:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "clientMethod"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "server"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    iget v0, p0, Lcom/xiaomi/phonenum/a/u;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/phonenum/a/u;->index:I

    return-object v3

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/phonenum/a/u;->aep:Lcom/xiaomi/phonenum/a/t;

    iget-object v2, p0, Lcom/xiaomi/phonenum/a/u;->aeq:Lcom/xiaomi/phonenum/a/m;

    invoke-static {v2, v0}, Lcom/xiaomi/phonenum/a/m;->anE(Lcom/xiaomi/phonenum/a/m;Lorg/json/JSONObject;)Lcom/xiaomi/phonenum/a/r;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/phonenum/a/u;->aeq:Lcom/xiaomi/phonenum/a/m;

    invoke-static {v2}, Lcom/xiaomi/phonenum/a/m;->anF(Lcom/xiaomi/phonenum/a/m;)Lcom/xiaomi/phonenum/a/g;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/phonenum/a/t;->anh(Lcom/xiaomi/phonenum/a/r;Lcom/xiaomi/phonenum/a/g;)Lcom/xiaomi/phonenum/a/s;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/phonenum/a/u;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/phonenum/a/u;->index:I

    return-object v0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/phonenum/a/u;->aep:Lcom/xiaomi/phonenum/a/t;

    iget-object v2, p0, Lcom/xiaomi/phonenum/a/u;->aeq:Lcom/xiaomi/phonenum/a/m;

    invoke-static {v2, v0}, Lcom/xiaomi/phonenum/a/m;->anG(Lcom/xiaomi/phonenum/a/m;Lorg/json/JSONObject;)Lcom/xiaomi/phonenum/a/e;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/phonenum/a/u;->aeq:Lcom/xiaomi/phonenum/a/m;

    invoke-static {v2}, Lcom/xiaomi/phonenum/a/m;->anF(Lcom/xiaomi/phonenum/a/m;)Lcom/xiaomi/phonenum/a/g;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/phonenum/a/t;->ani(Lcom/xiaomi/phonenum/a/e;Lcom/xiaomi/phonenum/a/g;)Lcom/xiaomi/phonenum/a/s;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/phonenum/a/u;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/phonenum/a/u;->index:I

    return-object v0

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/phonenum/a/u;->aep:Lcom/xiaomi/phonenum/a/t;

    iget-object v2, p0, Lcom/xiaomi/phonenum/a/u;->aeq:Lcom/xiaomi/phonenum/a/m;

    invoke-static {v2, v0}, Lcom/xiaomi/phonenum/a/m;->anH(Lcom/xiaomi/phonenum/a/m;Lorg/json/JSONObject;)Lcom/xiaomi/phonenum/a/j;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/phonenum/a/u;->aeq:Lcom/xiaomi/phonenum/a/m;

    invoke-static {v2}, Lcom/xiaomi/phonenum/a/m;->anF(Lcom/xiaomi/phonenum/a/m;)Lcom/xiaomi/phonenum/a/g;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/phonenum/a/t;->anj(Lcom/xiaomi/phonenum/a/j;Lcom/xiaomi/phonenum/a/g;)Lcom/xiaomi/phonenum/a/s;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/phonenum/a/u;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/phonenum/a/u;->index:I

    return-object v0

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/xiaomi/phonenum/a/u;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/phonenum/a/u;->index:I

    return-object v3

    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/xiaomi/phonenum/a/u;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/phonenum/a/u;->index:I

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/phonenum/a/u;->next()Lcom/xiaomi/phonenum/a/s;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
