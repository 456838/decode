.class public Lcom/xiaomi/mistatistic/sdk/a/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static agA:Lcom/xiaomi/mistatistic/sdk/a/e;

.field private static agB:Lcom/xiaomi/mistatistic/sdk/a/e;


# instance fields
.field private volatile agC:Landroid/os/Handler;

.field private agD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/a/L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/e;->agA:Lcom/xiaomi/mistatistic/sdk/a/e;

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/e;->agB:Lcom/xiaomi/mistatistic/sdk/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/e;->agD:Ljava/util/ArrayList;

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/w;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/mistatistic/sdk/a/w;-><init>(Lcom/xiaomi/mistatistic/sdk/a/e;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/w;->start()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/xiaomi/mistatistic/sdk/a/e;
    .locals 3

    const-class v1, Lcom/xiaomi/mistatistic/sdk/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/e;->agA:Lcom/xiaomi/mistatistic/sdk/a/e;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/e;->agA:Lcom/xiaomi/mistatistic/sdk/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/e;

    const-string/jumbo v2, "local_job_dispatcher"

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/a/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/e;->agA:Lcom/xiaomi/mistatistic/sdk/a/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic aqy(Lcom/xiaomi/mistatistic/sdk/a/e;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/e;->agC:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic aqz(Lcom/xiaomi/mistatistic/sdk/a/e;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/e;->agD:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static declared-synchronized b()Lcom/xiaomi/mistatistic/sdk/a/e;
    .locals 3

    const-class v1, Lcom/xiaomi/mistatistic/sdk/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/e;->agB:Lcom/xiaomi/mistatistic/sdk/a/e;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/e;->agB:Lcom/xiaomi/mistatistic/sdk/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/e;

    const-string/jumbo v2, "remote_job_dispatcher"

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/a/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/e;->agB:Lcom/xiaomi/mistatistic/sdk/a/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public aqw(Lcom/xiaomi/mistatistic/sdk/a/L;)V
    .locals 3

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/e;->agD:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/e;->agC:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/e;->agC:Landroid/os/Handler;

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/a/B;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/mistatistic/sdk/a/B;-><init>(Lcom/xiaomi/mistatistic/sdk/a/e;Lcom/xiaomi/mistatistic/sdk/a/L;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/e;->agD:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public aqx(Lcom/xiaomi/mistatistic/sdk/a/L;J)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/e;->agC:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string/jumbo v0, "drop the job as handler is not ready."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/e;->agC:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/O;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/a/O;-><init>(Lcom/xiaomi/mistatistic/sdk/a/e;Lcom/xiaomi/mistatistic/sdk/a/L;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
