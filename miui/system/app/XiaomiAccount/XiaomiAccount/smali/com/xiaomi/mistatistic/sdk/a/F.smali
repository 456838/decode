.class Lcom/xiaomi/mistatistic/sdk/a/F;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/L;


# instance fields
.field final synthetic ahr:Landroid/app/Activity;

.field final synthetic ahs:Lcom/xiaomi/mistatistic/sdk/a/i;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/i;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/F;->ahs:Lcom/xiaomi/mistatistic/sdk/a/i;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/a/F;->ahr:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/F;->ahs:Lcom/xiaomi/mistatistic/sdk/a/i;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/F;->ahr:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/i;->aqB(Landroid/app/Activity;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    if-nez v4, :cond_0

    move v1, v0

    :goto_0
    const-string/jumbo v4, "height"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "width"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/b;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/b;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/F;->ahr:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/b;->aqv(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/b;->a()Ljava/util/List;

    move-result-object v1

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "clickable_views"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "appId"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "appKey"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "deviceId"

    new-instance v5, Lcom/xiaomi/mistatistic/sdk/a/X;

    invoke-direct {v5}, Lcom/xiaomi/mistatistic/sdk/a/X;-><init>()V

    invoke-virtual {v5}, Lcom/xiaomi/mistatistic/sdk/a/X;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "meta"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "sdk_version"

    const-string/jumbo v4, "1.9.7"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "https://dev.mi.com/mistats/xmstats/event/dynamic/upload"

    const-string/jumbo v4, "test"

    invoke-static {v3, v0, v2, v4}, Lcom/xiaomi/mistatistic/sdk/a/N;->arJ(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "upload snapshot with clickable views "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/aa;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->a(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/data/d;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/data/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "uploadSnapShot task exception: "

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
