.class public abstract Lcom/xiaomi/mistatistic/sdk/a/P;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile ahF:Lcom/xiaomi/xmsf/push/service/b;

.field private static volatile ahG:Z

.field private static ahH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/f;",
            ">;"
        }
    .end annotation
.end field

.field private static ahI:Ljava/lang/Object;

.field private static ahJ:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/P;->ahF:Lcom/xiaomi/xmsf/push/service/b;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/P;->ahG:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/P;->ahH:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/P;->ahI:Ljava/lang/Object;

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/j;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/j;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/P;->ahJ:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/P;->ahG:Z

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "mistat_basic"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "mistat_session"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mistat_pt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mistat_pv"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mistat_session_extra"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/a/P;->ahG:Z

    return p0
.end method

.method public static arL(Lcom/xiaomi/mistatistic/sdk/data/f;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/g;->aty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/e;->ato()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/g;->atv(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/r;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/r;-><init>(Lcom/xiaomi/mistatistic/sdk/data/f;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqw(Lcom/xiaomi/mistatistic/sdk/a/L;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/A;->a()Lcom/xiaomi/mistatistic/sdk/a/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/A;->c()V

    return-void

    :cond_1
    const-string/jumbo v0, "LER"

    const-string/jumbo v1, "mistats is not initialized properly."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo v0, "LER"

    const-string/jumbo v1, "disable local event upload for CTA build"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string/jumbo v0, "LER"

    const-string/jumbo v1, "insert event use systemstatsvc"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/s;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/s;-><init>(Lcom/xiaomi/mistatistic/sdk/data/f;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqw(Lcom/xiaomi/mistatistic/sdk/a/L;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/f;->asL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/P;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disabled local event upload, event category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/f;->asL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static arM(Lcom/xiaomi/mistatistic/sdk/data/f;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/P;->arN(Landroid/content/Context;)V

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/P;->ahF:Lcom/xiaomi/xmsf/push/service/b;

    if-nez v1, :cond_0

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/P;->ahI:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/a/P;->ahH:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/P;->arO(Landroid/content/Context;)V

    :goto_1
    return-void

    :cond_0
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/P;->ahF:Lcom/xiaomi/xmsf/push/service/b;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/f;->asM()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaomi/xmsf/push/service/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LER"

    const-string/jumbo v2, "insertEventUseSystemService exception: "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->ask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private static arN(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/P;->ahG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LER"

    const-string/jumbo v1, "StatSystemService is already binded"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asj(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.xiaomi.xmsf"

    const-string/jumbo v2, "com.xiaomi.xmsf.push.service.StatService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/P;->ahJ:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    sput-boolean v3, Lcom/xiaomi/mistatistic/sdk/a/P;->ahG:Z

    goto :goto_0
.end method

.method private static arO(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/Y;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/Y;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqx(Lcom/xiaomi/mistatistic/sdk/a/L;J)V

    return-void
.end method

.method static synthetic arP(Lcom/xiaomi/mistatistic/sdk/data/f;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/a/P;->arM(Lcom/xiaomi/mistatistic/sdk/data/f;)V

    return-void
.end method

.method static synthetic arQ(Lcom/xiaomi/xmsf/push/service/b;)Lcom/xiaomi/xmsf/push/service/b;
    .locals 0

    sput-object p0, Lcom/xiaomi/mistatistic/sdk/a/P;->ahF:Lcom/xiaomi/xmsf/push/service/b;

    return-object p0
.end method

.method static synthetic b()Landroid/content/ServiceConnection;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/P;->ahJ:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic c()Lcom/xiaomi/xmsf/push/service/b;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/P;->ahF:Lcom/xiaomi/xmsf/push/service/b;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/P;->ahI:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/P;->ahH:Ljava/util/List;

    return-object v0
.end method
