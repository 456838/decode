.class public Lcom/xiaomi/mistatistic/sdk/data/k;
.super Lcom/xiaomi/mistatistic/sdk/data/f;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/f;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asL()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "mistat_pv"

    return-object v0
.end method

.method public asM()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "path"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "source"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public asN()Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 4

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/k;->asL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->aio:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->air:J

    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->aip:J

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->aiq:Ljava/lang/String;

    return-object v0
.end method
