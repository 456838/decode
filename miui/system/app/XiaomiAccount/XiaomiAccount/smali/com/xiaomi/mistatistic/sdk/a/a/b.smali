.class Lcom/xiaomi/mistatistic/sdk/a/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/n;


# instance fields
.field final synthetic agk:Lcom/xiaomi/mistatistic/sdk/a/a/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->agk:Lcom/xiaomi/mistatistic/sdk/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->agk:Lcom/xiaomi/mistatistic/sdk/a/a/a;

    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/a/a/a;->apX(Lcom/xiaomi/mistatistic/sdk/a/a/a;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->agk:Lcom/xiaomi/mistatistic/sdk/a/a/a;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/a/a;->apY(Lcom/xiaomi/mistatistic/sdk/a/a/a;)Lcom/xiaomi/mistatistic/sdk/a/a/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/a/d;->a(Z)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Upload MiStat data failed: "

    invoke-static {v2, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method
