.class Lcom/xiaomi/mistatistic/sdk/a/V;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/L;


# instance fields
.field final synthetic ahQ:Lcom/xiaomi/mistatistic/sdk/a/q;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/q;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/V;->ahQ:Lcom/xiaomi/mistatistic/sdk/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/V;->ahQ:Lcom/xiaomi/mistatistic/sdk/a/q;

    iget-object v1, v1, Lcom/xiaomi/mistatistic/sdk/a/q;->agU:Lcom/xiaomi/mistatistic/sdk/a/m;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/a/m;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/V;->ahQ:Lcom/xiaomi/mistatistic/sdk/a/q;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/q;->agU:Lcom/xiaomi/mistatistic/sdk/a/m;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/m;->d()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/V;->ahQ:Lcom/xiaomi/mistatistic/sdk/a/q;

    iget-object v1, v1, Lcom/xiaomi/mistatistic/sdk/a/q;->agU:Lcom/xiaomi/mistatistic/sdk/a/m;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/a/m;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    add-int/lit8 v0, v1, 0x1e

    if-ge v0, v3, :cond_2

    add-int/lit8 v0, v1, 0x1e

    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_2
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/V;->ahQ:Lcom/xiaomi/mistatistic/sdk/a/q;

    iget-object v4, v4, Lcom/xiaomi/mistatistic/sdk/a/q;->agU:Lcom/xiaomi/mistatistic/sdk/a/m;

    new-instance v5, Lcom/xiaomi/mistatistic/sdk/a/W;

    invoke-direct {v5, p0, v0}, Lcom/xiaomi/mistatistic/sdk/a/W;-><init>(Lcom/xiaomi/mistatistic/sdk/a/V;Ljava/util/List;)V

    invoke-static {v4, v0, v5}, Lcom/xiaomi/mistatistic/sdk/a/m;->aqM(Lcom/xiaomi/mistatistic/sdk/a/m;Ljava/util/List;Lcom/xiaomi/mistatistic/sdk/a/n;)V

    add-int/lit8 v0, v1, 0x1e

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-interface {v2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/V;->ahQ:Lcom/xiaomi/mistatistic/sdk/a/q;

    iget-object v1, v1, Lcom/xiaomi/mistatistic/sdk/a/q;->agU:Lcom/xiaomi/mistatistic/sdk/a/m;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/a/G;

    invoke-direct {v2, p0}, Lcom/xiaomi/mistatistic/sdk/a/G;-><init>(Lcom/xiaomi/mistatistic/sdk/a/V;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/mistatistic/sdk/a/m;->aqK(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/a/n;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
