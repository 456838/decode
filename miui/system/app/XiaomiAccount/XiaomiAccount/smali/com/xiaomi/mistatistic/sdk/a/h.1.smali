.class Lcom/xiaomi/mistatistic/sdk/a/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/a/d;


# instance fields
.field final synthetic a:J

.field final synthetic agG:Lcom/xiaomi/mistatistic/sdk/a/p;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/p;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/h;->agG:Lcom/xiaomi/mistatistic/sdk/a/p;

    iput-wide p2, p0, Lcom/xiaomi/mistatistic/sdk/a/h;->a:J

    iput-wide p4, p0, Lcom/xiaomi/mistatistic/sdk/a/h;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/p;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo v0, "RDUM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upload failed, set Uploading "

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

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/h;->agG:Lcom/xiaomi/mistatistic/sdk/a/p;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/a/h;->a:J

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/a/h;->b:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/a/p;->aqQ(Lcom/xiaomi/mistatistic/sdk/a/p;JJ)V

    goto :goto_0
.end method
