.class public Lcom/xiaomi/mistatistic/sdk/a/ab;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ahW:Ljava/util/concurrent/ExecutorService;

.field public static final ahX:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/ab;->ahW:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/ab;->ahX:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
