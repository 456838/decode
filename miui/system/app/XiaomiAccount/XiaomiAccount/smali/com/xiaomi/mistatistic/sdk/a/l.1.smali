.class Lcom/xiaomi/mistatistic/sdk/a/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private agM:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic agN:Lcom/xiaomi/mistatistic/sdk/a/i;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/l;->agN:Lcom/xiaomi/mistatistic/sdk/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/l;->agM:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public aqG(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/l;->agM:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/l;->agM:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/l;->agM:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "clearActivity exception: "

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v6, 0x41980000    # 19.0f

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v2, v1

    aget v4, v2, v0

    const/4 v5, 0x2

    aget v5, v2, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    move v2, v0

    :goto_0
    if-nez v2, :cond_0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v6

    if-lez v2, :cond_3

    :goto_1
    if-nez v0, :cond_0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/l;->agN:Lcom/xiaomi/mistatistic/sdk/a/i;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/i;->aqF(Lcom/xiaomi/mistatistic/sdk/a/i;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v0, "shaking..."

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
