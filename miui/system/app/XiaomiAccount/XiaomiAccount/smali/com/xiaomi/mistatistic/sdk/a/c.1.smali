.class Lcom/xiaomi/mistatistic/sdk/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/L;


# instance fields
.field final synthetic agw:Lcom/xiaomi/mistatistic/sdk/a/A;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/A;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/c;->agw:Lcom/xiaomi/mistatistic/sdk/a/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v3, 0x4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/c;->agw:Lcom/xiaomi/mistatistic/sdk/a/A;

    const-string/jumbo v2, "upload_policy"

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/ad;->asr(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/A;->aqW(Lcom/xiaomi/mistatistic/sdk/a/A;I)I

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/c;->agw:Lcom/xiaomi/mistatistic/sdk/a/A;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/A;->aqV(Lcom/xiaomi/mistatistic/sdk/a/A;)I

    move-result v1

    if-eq v1, v3, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/c;->agw:Lcom/xiaomi/mistatistic/sdk/a/A;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/A;->aqX(Lcom/xiaomi/mistatistic/sdk/a/A;J)J

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/c;->agw:Lcom/xiaomi/mistatistic/sdk/a/A;

    const-string/jumbo v2, "upload_interval"

    const-wide/32 v4, 0x2bf20

    invoke-static {v0, v2, v4, v5}, Lcom/xiaomi/mistatistic/sdk/a/ad;->ass(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/A;->aqX(Lcom/xiaomi/mistatistic/sdk/a/A;J)J

    goto :goto_0
.end method
