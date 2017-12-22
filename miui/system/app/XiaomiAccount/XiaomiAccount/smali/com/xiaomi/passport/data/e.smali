.class public Lcom/xiaomi/passport/data/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static vM:Lcom/xiaomi/passport/data/e;


# instance fields
.field private volatile vL:Lcom/xiaomi/passport/data/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/data/e;

    invoke-direct {v0}, Lcom/xiaomi/passport/data/e;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/data/e;->vM:Lcom/xiaomi/passport/data/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static yX()Lcom/xiaomi/passport/data/f;
    .locals 1

    invoke-static {}, Lcom/xiaomi/passport/data/e;->yZ()Lcom/xiaomi/passport/data/e;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/passport/data/e;->vL:Lcom/xiaomi/passport/data/f;

    return-object v0
.end method

.method public static yY(Lcom/xiaomi/passport/data/f;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/passport/data/e;->yZ()Lcom/xiaomi/passport/data/e;

    move-result-object v0

    iput-object p0, v0, Lcom/xiaomi/passport/data/e;->vL:Lcom/xiaomi/passport/data/f;

    return-void
.end method

.method public static declared-synchronized yZ()Lcom/xiaomi/passport/data/e;
    .locals 2

    const-class v0, Lcom/xiaomi/passport/data/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/passport/data/e;->vM:Lcom/xiaomi/passport/data/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
