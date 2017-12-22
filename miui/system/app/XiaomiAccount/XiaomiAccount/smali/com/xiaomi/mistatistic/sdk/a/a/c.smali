.class public Lcom/xiaomi/mistatistic/sdk/a/a/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:I

.field private agl:Lorg/json/JSONArray;

.field private agm:J

.field private agn:J

.field final synthetic ago:Lcom/xiaomi/mistatistic/sdk/a/a/f;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/a/f;Lorg/json/JSONArray;JJI)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/c;->ago:Lcom/xiaomi/mistatistic/sdk/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/a/a/c;->agl:Lorg/json/JSONArray;

    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/a/a/c;->agm:J

    iput-wide p5, p0, Lcom/xiaomi/mistatistic/sdk/a/a/c;->agn:J

    iput p7, p0, Lcom/xiaomi/mistatistic/sdk/a/a/c;->a:I

    return-void
.end method

.method static synthetic apZ(Lcom/xiaomi/mistatistic/sdk/a/a/c;)Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/c;->agl:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic aqa(Lcom/xiaomi/mistatistic/sdk/a/a/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/c;->agm:J

    return-wide v0
.end method

.method static synthetic aqb(Lcom/xiaomi/mistatistic/sdk/a/a/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/c;->agn:J

    return-wide v0
.end method
