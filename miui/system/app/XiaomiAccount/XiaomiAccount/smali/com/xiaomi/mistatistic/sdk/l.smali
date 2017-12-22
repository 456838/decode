.class Lcom/xiaomi/mistatistic/sdk/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ajj:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/l;->ajj:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/g;->att()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://data.mistat.xiaomi.com/micrash"

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/l;->ajj:Ljava/util/Map;

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/k;

    invoke-direct {v2, p0}, Lcom/xiaomi/mistatistic/sdk/k;-><init>(Lcom/xiaomi/mistatistic/sdk/l;)V

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/N;->arI(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/a/n;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "http://10.99.168.145:8097/micrash"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error to upload the exception "

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
