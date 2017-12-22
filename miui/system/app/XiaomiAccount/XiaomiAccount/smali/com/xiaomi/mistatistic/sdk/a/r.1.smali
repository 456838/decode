.class Lcom/xiaomi/mistatistic/sdk/a/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/L;


# instance fields
.field private agV:Lcom/xiaomi/mistatistic/sdk/data/f;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/data/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/r;->agV:Lcom/xiaomi/mistatistic/sdk/data/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/r;->agV:Lcom/xiaomi/mistatistic/sdk/data/f;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/data/f;->asN()Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/D;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/a/D;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/r;->agV:Lcom/xiaomi/mistatistic/sdk/data/f;

    instance-of v2, v2, Lcom/xiaomi/mistatistic/sdk/data/l;

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->aio:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/mistatistic/sdk/a/D;->aqZ(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_1
    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/D;->arb(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/r;->agV:Lcom/xiaomi/mistatistic/sdk/data/f;

    instance-of v2, v2, Lcom/xiaomi/mistatistic/sdk/data/i;

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/D;->arb(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    goto :goto_0

    :cond_3
    iget-object v5, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    iget-object v4, v4, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/a/D;->ard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
