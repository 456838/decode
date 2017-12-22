.class Lcom/xiaomi/mistatistic/sdk/a/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/L;


# instance fields
.field final synthetic a:I

.field final synthetic agX:Lcom/xiaomi/mistatistic/sdk/a/A;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/A;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/t;->agX:Lcom/xiaomi/mistatistic/sdk/a/A;

    iput p2, p0, Lcom/xiaomi/mistatistic/sdk/a/t;->a:I

    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/a/t;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/t;->agX:Lcom/xiaomi/mistatistic/sdk/a/A;

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/a/t;->a:I

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/A;->aqW(Lcom/xiaomi/mistatistic/sdk/a/A;I)I

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/t;->agX:Lcom/xiaomi/mistatistic/sdk/a/A;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/A;->aqV(Lcom/xiaomi/mistatistic/sdk/a/A;)I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/t;->agX:Lcom/xiaomi/mistatistic/sdk/a/A;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/A;->aqX(Lcom/xiaomi/mistatistic/sdk/a/A;J)J

    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "upload_policy"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/t;->agX:Lcom/xiaomi/mistatistic/sdk/a/A;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/A;->aqV(Lcom/xiaomi/mistatistic/sdk/a/A;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/ad;->asv(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/t;->agX:Lcom/xiaomi/mistatistic/sdk/a/A;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/A;->aqV(Lcom/xiaomi/mistatistic/sdk/a/A;)I

    move-result v1

    if-eq v1, v4, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/t;->agX:Lcom/xiaomi/mistatistic/sdk/a/A;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/a/t;->b:J

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/A;->aqX(Lcom/xiaomi/mistatistic/sdk/a/A;J)J

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "upload_interval"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/t;->agX:Lcom/xiaomi/mistatistic/sdk/a/A;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/A;->aqY(Lcom/xiaomi/mistatistic/sdk/a/A;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/ad;->asw(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/o;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/o;-><init>(Lcom/xiaomi/mistatistic/sdk/a/t;)V

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/t;->agX:Lcom/xiaomi/mistatistic/sdk/a/A;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/A;->aqY(Lcom/xiaomi/mistatistic/sdk/a/A;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqx(Lcom/xiaomi/mistatistic/sdk/a/L;J)V

    goto :goto_1
.end method
