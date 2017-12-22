.class Lcom/xiaomi/phonenum/utils/l;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# instance fields
.field final synthetic acU:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic acV:Ljava/util/concurrent/CountDownLatch;

.field final synthetic acW:Lcom/xiaomi/phonenum/utils/z;


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/utils/z;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/utils/l;->acW:Lcom/xiaomi/phonenum/utils/z;

    iput-object p2, p0, Lcom/xiaomi/phonenum/utils/l;->acU:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/xiaomi/phonenum/utils/l;->acV:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/phonenum/utils/l;->acW:Lcom/xiaomi/phonenum/utils/z;

    invoke-static {v0}, Lcom/xiaomi/phonenum/utils/z;->anc(Lcom/xiaomi/phonenum/utils/z;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/utils/l;->acW:Lcom/xiaomi/phonenum/utils/z;

    invoke-static {v0}, Lcom/xiaomi/phonenum/utils/z;->and(Lcom/xiaomi/phonenum/utils/z;)Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    const-string/jumbo v1, "PhoneUtilImpl"

    const-string/jumbo v2, "get cellularNetwork"

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/phonenum/utils/n;->amB(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/phonenum/utils/l;->acU:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/phonenum/utils/l;->acV:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/utils/l;->acW:Lcom/xiaomi/phonenum/utils/z;

    invoke-static {v0}, Lcom/xiaomi/phonenum/utils/z;->and(Lcom/xiaomi/phonenum/utils/z;)Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    const-string/jumbo v1, "PhoneUtilImpl"

    const-string/jumbo v2, "network get DISCONNECTED:"

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/phonenum/utils/n;->amB(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    return-void
.end method
