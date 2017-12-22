.class final Lcom/xiaomi/passport/appwhitelist/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic KF:Lcom/xiaomi/passport/appwhitelist/a;

.field final synthetic KG:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/appwhitelist/a;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/appwhitelist/f;->KF:Lcom/xiaomi/passport/appwhitelist/a;

    iput-object p2, p0, Lcom/xiaomi/passport/appwhitelist/f;->KG:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/f;->KG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
