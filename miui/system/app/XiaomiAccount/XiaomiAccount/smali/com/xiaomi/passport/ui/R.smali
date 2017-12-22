.class final Lcom/xiaomi/passport/ui/R;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic tu:Lcom/xiaomi/passport/ui/e;

.field final synthetic tv:Ljava/lang/String;

.field final synthetic tw:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/e;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/R;->tu:Lcom/xiaomi/passport/ui/e;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/R;->tv:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/R;->tw:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/R;->tu:Lcom/xiaomi/passport/ui/e;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/R;->tv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/ui/e;->tb(Lcom/xiaomi/passport/ui/e;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/R;->tw:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
