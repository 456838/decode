.class Lcom/xiaomi/passport/appwhitelist/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KL:Ljava/lang/Integer;

.field private static KM:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static KN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/passport/appwhitelist/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final KO:Lcom/xiaomi/passport/appwhitelist/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/h;->KL:Ljava/lang/Integer;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/h;->KM:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/h;->KN:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/appwhitelist/p;-><init>(Lcom/xiaomi/passport/appwhitelist/p;)V

    iput-object v0, p0, Lcom/xiaomi/passport/appwhitelist/h;->KO:Lcom/xiaomi/passport/appwhitelist/p;

    return-void
.end method


# virtual methods
.method Om(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/xiaomi/passport/appwhitelist/h;->KM:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/passport/appwhitelist/h;->KM:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/xiaomi/passport/appwhitelist/h;->KN:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/appwhitelist/m;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/h;->KO:Lcom/xiaomi/passport/appwhitelist/p;

    invoke-static {v0, p1}, Lcom/xiaomi/passport/appwhitelist/p;->OI(Lcom/xiaomi/passport/appwhitelist/p;Ljava/lang/String;)Lcom/xiaomi/passport/appwhitelist/m;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/passport/appwhitelist/h;->KN:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/passport/appwhitelist/m;->Ow()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    :goto_0
    :try_start_1
    iget v0, v2, Lcom/xiaomi/passport/appwhitelist/m;->La:I

    sget-object v4, Lcom/xiaomi/passport/appwhitelist/h;->KL:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-ge v0, v4, :cond_3

    const/4 v0, 0x1

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Lcom/xiaomi/passport/appwhitelist/m;->Ou()Lcom/xiaomi/passport/appwhitelist/m;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/passport/appwhitelist/h;->KN:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/h;->KO:Lcom/xiaomi/passport/appwhitelist/p;

    invoke-static {v2, p1, v1}, Lcom/xiaomi/passport/appwhitelist/p;->OJ(Lcom/xiaomi/passport/appwhitelist/p;Ljava/lang/String;Lcom/xiaomi/passport/appwhitelist/m;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    return v0

    :cond_2
    :try_start_3
    new-instance v0, Lcom/xiaomi/passport/appwhitelist/m;

    invoke-direct {v0}, Lcom/xiaomi/passport/appwhitelist/m;-><init>()V

    sget-object v2, Lcom/xiaomi/passport/appwhitelist/h;->KN:Ljava/util/Map;

    new-instance v4, Lcom/xiaomi/passport/appwhitelist/m;

    invoke-direct {v4}, Lcom/xiaomi/passport/appwhitelist/m;-><init>()V

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/xiaomi/passport/appwhitelist/m;->Ou()Lcom/xiaomi/passport/appwhitelist/m;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/passport/appwhitelist/h;->KN:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/h;->KO:Lcom/xiaomi/passport/appwhitelist/p;

    invoke-static {v2, p1, v1}, Lcom/xiaomi/passport/appwhitelist/p;->OJ(Lcom/xiaomi/passport/appwhitelist/p;Ljava/lang/String;Lcom/xiaomi/passport/appwhitelist/m;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0
.end method
