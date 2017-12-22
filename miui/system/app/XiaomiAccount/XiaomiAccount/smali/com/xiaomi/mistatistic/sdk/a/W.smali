.class Lcom/xiaomi/mistatistic/sdk/a/W;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/n;


# instance fields
.field final synthetic ahR:Ljava/util/List;

.field final synthetic ahS:Lcom/xiaomi/mistatistic/sdk/a/V;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/V;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/W;->ahS:Lcom/xiaomi/mistatistic/sdk/a/V;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/a/W;->ahR:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http data complete, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/aa;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "ok"

    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/W;->ahS:Lcom/xiaomi/mistatistic/sdk/a/V;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/V;->ahQ:Lcom/xiaomi/mistatistic/sdk/a/q;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/q;->agU:Lcom/xiaomi/mistatistic/sdk/a/m;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/m;->a(Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/W;->ahS:Lcom/xiaomi/mistatistic/sdk/a/V;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/V;->ahQ:Lcom/xiaomi/mistatistic/sdk/a/q;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/q;->agU:Lcom/xiaomi/mistatistic/sdk/a/m;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/m;->aqL(Lcom/xiaomi/mistatistic/sdk/a/m;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/W;->ahS:Lcom/xiaomi/mistatistic/sdk/a/V;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/V;->ahQ:Lcom/xiaomi/mistatistic/sdk/a/q;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/q;->agU:Lcom/xiaomi/mistatistic/sdk/a/m;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/m;->aqL(Lcom/xiaomi/mistatistic/sdk/a/m;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/W;->ahR:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "upload events response exception:"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
