.class Lcom/xiaomi/mistatistic/sdk/a/R;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic ahL:Lcom/xiaomi/mistatistic/sdk/a/n;

.field final synthetic ahM:Ljava/util/Map;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/n;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/R;->ahL:Lcom/xiaomi/mistatistic/sdk/a/n;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/a/R;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/a/R;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/mistatistic/sdk/a/R;->ahM:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/a/R;->e:Z

    return-void
.end method

.method static synthetic arR(Lcom/xiaomi/mistatistic/sdk/a/R;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/a/R;->e:Z

    return p1
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/d;

    invoke-direct {v1, p0, p2, p0}, Lcom/xiaomi/mistatistic/sdk/a/d;-><init>(Lcom/xiaomi/mistatistic/sdk/a/R;Landroid/os/IBinder;Landroid/content/ServiceConnection;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqw(Lcom/xiaomi/mistatistic/sdk/a/L;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "error while perform IPC connection."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/a/R;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/R;->ahL:Lcom/xiaomi/mistatistic/sdk/a/n;

    invoke-interface {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "disconnected, remote http post hasn\'t not processed"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
