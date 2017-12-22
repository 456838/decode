.class Lcom/xiaomi/phonenum/utils/q;
.super Lcom/xiaomi/phonenum/utils/e;
.source ""


# instance fields
.field final synthetic adb:Lcom/xiaomi/phonenum/utils/C;


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/utils/C;I)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/phonenum/utils/q;->adb:Lcom/xiaomi/phonenum/utils/C;

    iget-object v0, p1, Lcom/xiaomi/phonenum/utils/C;->adl:Lcom/xiaomi/phonenum/utils/h;

    invoke-direct {p0, v0, p2}, Lcom/xiaomi/phonenum/utils/e;-><init>(Lcom/xiaomi/phonenum/utils/h;I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/utils/q;->adb:Lcom/xiaomi/phonenum/utils/C;

    iget-object v0, v0, Lcom/xiaomi/phonenum/utils/C;->adl:Lcom/xiaomi/phonenum/utils/h;

    invoke-static {v0}, Lcom/xiaomi/phonenum/utils/h;->amt(Lcom/xiaomi/phonenum/utils/h;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method
