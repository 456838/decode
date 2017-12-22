.class Lcom/xiaomi/mistatistic/sdk/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/L;


# instance fields
.field final synthetic agx:Landroid/os/IBinder;

.field final synthetic agy:Landroid/content/ServiceConnection;

.field final synthetic agz:Lcom/xiaomi/mistatistic/sdk/a/R;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/R;Landroid/os/IBinder;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->agz:Lcom/xiaomi/mistatistic/sdk/a/R;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->agx:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->agy:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->agx:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/xiaomi/xmsf/push/service/a$a;->atL(Landroid/os/IBinder;)Lcom/xiaomi/xmsf/push/service/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->agz:Lcom/xiaomi/mistatistic/sdk/a/R;

    iget-object v1, v1, Lcom/xiaomi/mistatistic/sdk/a/R;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->agz:Lcom/xiaomi/mistatistic/sdk/a/R;

    iget-object v2, v2, Lcom/xiaomi/mistatistic/sdk/a/R;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/U;->asc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->agz:Lcom/xiaomi/mistatistic/sdk/a/R;

    iget-object v2, v2, Lcom/xiaomi/mistatistic/sdk/a/R;->ahM:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/xmsf/push/service/a;->atK(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->agz:Lcom/xiaomi/mistatistic/sdk/a/R;

    iget-object v1, v1, Lcom/xiaomi/mistatistic/sdk/a/R;->ahL:Lcom/xiaomi/mistatistic/sdk/a/n;

    invoke-interface {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->agz:Lcom/xiaomi/mistatistic/sdk/a/R;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/R;->arR(Lcom/xiaomi/mistatistic/sdk/a/R;Z)Z

    const-string/jumbo v0, "connected, do remote http post"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->agz:Lcom/xiaomi/mistatistic/sdk/a/R;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/R;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->agy:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "error while uploading the logs by IPC."

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->agz:Lcom/xiaomi/mistatistic/sdk/a/R;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/R;->ahL:Lcom/xiaomi/mistatistic/sdk/a/n;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->agz:Lcom/xiaomi/mistatistic/sdk/a/R;

    invoke-static {v0, v3}, Lcom/xiaomi/mistatistic/sdk/a/R;->arR(Lcom/xiaomi/mistatistic/sdk/a/R;Z)Z

    goto :goto_0
.end method
