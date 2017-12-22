.class public Lcom/xiaomi/finddevice/common/FindDeviceExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "FindDeviceExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/common/FindDeviceExecutor$1;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final sInstance:Lcom/xiaomi/finddevice/common/FindDeviceExecutor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->CPU_COUNT:I

    .line 17
    sget v0, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->CORE_POOL_SIZE:I

    .line 18
    sget v0, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->MAXIMUM_POOL_SIZE:I

    .line 21
    new-instance v0, Lcom/xiaomi/finddevice/common/FindDeviceExecutor$1;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/common/FindDeviceExecutor$1;-><init>()V

    sput-object v0, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 31
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 30
    sput-object v0, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 33
    new-instance v0, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;-><init>()V

    sput-object v0, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->sInstance:Lcom/xiaomi/finddevice/common/FindDeviceExecutor;

    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    .line 36
    sget v2, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->CORE_POOL_SIZE:I

    sget v3, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    .line 37
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    move-object v1, p0

    .line 36
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 35
    return-void
.end method

.method public static get()Lcom/xiaomi/finddevice/common/FindDeviceExecutor;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->sInstance:Lcom/xiaomi/finddevice/common/FindDeviceExecutor;

    return-object v0
.end method
