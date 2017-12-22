.class public Lcom/xiaomi/account/data/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static lx:Lcom/xiaomi/account/data/j;


# instance fields
.field private volatile lu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/account/data/k;",
            ">;"
        }
    .end annotation
.end field

.field private volatile lv:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/account/data/LockedDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile lw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/account/data/j;

    invoke-direct {v0}, Lcom/xiaomi/account/data/j;-><init>()V

    sput-object v0, Lcom/xiaomi/account/data/j;->lx:Lcom/xiaomi/account/data/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mA(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/account/data/LockedDeviceInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/account/data/j;->mE()Lcom/xiaomi/account/data/j;

    move-result-object v0

    iput-object p0, v0, Lcom/xiaomi/account/data/j;->lv:Ljava/util/ArrayList;

    return-void
.end method

.method public static mB()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/account/data/LockedDeviceInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/account/data/j;->mE()Lcom/xiaomi/account/data/j;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/account/data/j;->lv:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static mC(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/account/data/j;->mE()Lcom/xiaomi/account/data/j;

    move-result-object v0

    iput-boolean p0, v0, Lcom/xiaomi/account/data/j;->lw:Z

    return-void
.end method

.method public static mD()Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/account/data/j;->mE()Lcom/xiaomi/account/data/j;

    move-result-object v0

    iget-boolean v0, v0, Lcom/xiaomi/account/data/j;->lw:Z

    return v0
.end method

.method public static declared-synchronized mE()Lcom/xiaomi/account/data/j;
    .locals 2

    const-class v0, Lcom/xiaomi/account/data/j;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/account/data/j;->lx:Lcom/xiaomi/account/data/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static my(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/account/data/k;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/account/data/j;->mE()Lcom/xiaomi/account/data/j;

    move-result-object v0

    iput-object p0, v0, Lcom/xiaomi/account/data/j;->lu:Ljava/util/ArrayList;

    return-void
.end method

.method public static mz()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/account/data/k;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/account/data/j;->mE()Lcom/xiaomi/account/data/j;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/account/data/j;->lu:Ljava/util/ArrayList;

    return-object v0
.end method
