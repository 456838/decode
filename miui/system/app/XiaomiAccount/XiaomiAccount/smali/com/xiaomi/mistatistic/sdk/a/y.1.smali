.class Lcom/xiaomi/mistatistic/sdk/a/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/L;


# instance fields
.field final synthetic a:J

.field final synthetic ahc:Lcom/xiaomi/mistatistic/sdk/a/p;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/p;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/y;->ahc:Lcom/xiaomi/mistatistic/sdk/a/p;

    iput-wide p2, p0, Lcom/xiaomi/mistatistic/sdk/a/y;->a:J

    iput-wide p4, p0, Lcom/xiaomi/mistatistic/sdk/a/y;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/D;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/D;-><init>()V

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/a/y;->a:J

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/a/y;->b:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/a/D;->ari(JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/p;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo v0, "RDUM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "delete done, set Uploading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/p;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RDUM"

    const-string/jumbo v2, "doDeleting exception: "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->ask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
