.class abstract Lcom/xiaomi/passport/servicetoken/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/servicetoken/a;


# static fields
.field private static executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/xiaomi/passport/servicetoken/j;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic MI()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/servicetoken/j;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public final Ck(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/b;
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/u;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/u;-><init>(Lcom/xiaomi/passport/servicetoken/j;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/u;->MM()Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v0

    return-object v0
.end method

.method public final Co(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/b;
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/k;-><init>(Lcom/xiaomi/passport/servicetoken/j;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/k;->MM()Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v0

    return-object v0
.end method

.method protected abstract MG(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end method

.method protected abstract MH(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end method
