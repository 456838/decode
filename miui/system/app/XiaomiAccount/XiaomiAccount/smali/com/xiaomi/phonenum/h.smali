.class Lcom/xiaomi/phonenum/h;
.super Ljava/util/concurrent/FutureTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/xiaomi/phonenum/bean/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic afv:Lcom/xiaomi/phonenum/utils/b;

.field final synthetic afw:Lcom/xiaomi/phonenum/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/a;Ljava/util/concurrent/Callable;Lcom/xiaomi/phonenum/utils/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/h;->afw:Lcom/xiaomi/phonenum/a;

    iput-object p3, p0, Lcom/xiaomi/phonenum/h;->afv:Lcom/xiaomi/phonenum/utils/b;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/h;->afv:Lcom/xiaomi/phonenum/utils/b;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/utils/b;->cancel()V

    const/4 v0, 0x1

    return v0
.end method
