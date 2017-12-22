.class Lcom/xiaomi/mistatistic/sdk/a/B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ahj:Lcom/xiaomi/mistatistic/sdk/a/L;

.field final synthetic ahk:Lcom/xiaomi/mistatistic/sdk/a/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/e;Lcom/xiaomi/mistatistic/sdk/a/L;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/B;->ahk:Lcom/xiaomi/mistatistic/sdk/a/e;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/a/B;->ahj:Lcom/xiaomi/mistatistic/sdk/a/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/B;->ahj:Lcom/xiaomi/mistatistic/sdk/a/L;

    invoke-interface {v0}, Lcom/xiaomi/mistatistic/sdk/a/L;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "error while executing job."

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
