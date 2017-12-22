.class abstract Lcom/xiaomi/passport/servicetoken/n;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/servicetoken/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract MJ()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end method

.method MM()Lcom/xiaomi/passport/servicetoken/b;
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/servicetoken/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/b;-><init>(Lcom/xiaomi/accountsdk/a/b;)V

    invoke-static {}, Lcom/xiaomi/passport/servicetoken/j;->MI()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/passport/servicetoken/l;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/passport/servicetoken/l;-><init>(Lcom/xiaomi/passport/servicetoken/n;Lcom/xiaomi/passport/servicetoken/b;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
