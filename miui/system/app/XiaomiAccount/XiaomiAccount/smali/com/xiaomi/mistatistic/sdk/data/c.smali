.class public abstract Lcom/xiaomi/mistatistic/sdk/data/c;
.super Lcom/xiaomi/mistatistic/sdk/data/f;
.source ""


# instance fields
.field protected a:J

.field private ain:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/f;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->a:J

    if-eqz p5, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->ain:Ljava/util/Map;

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->ain:Ljava/util/Map;

    goto :goto_0
.end method

.method private asO(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "json error"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public asL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public asM()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "category"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "key"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "value"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->ain:Ljava/util/Map;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "params"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->ain:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public asN()Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 4

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->aio:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->air:J

    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->aip:J

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/c;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->ain:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/xiaomi/mistatistic/sdk/data/c;->asO(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->aiq:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p0, p1, :cond_1

    instance-of v1, p1, Lcom/xiaomi/mistatistic/sdk/data/c;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/xiaomi/mistatistic/sdk/data/c;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    return v2

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->a:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->ain:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/c;->ain:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->ain:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
