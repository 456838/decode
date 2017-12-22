.class public Lcom/xiaomi/passport/uicontroller/v;
.super Ljava/util/concurrent/FutureTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private IY:Lcom/xiaomi/passport/uicontroller/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/w",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lcom/xiaomi/passport/uicontroller/w",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/v;->IY:Lcom/xiaomi/passport/uicontroller/w;

    return-void
.end method

.method static synthetic Nu(Lcom/xiaomi/passport/uicontroller/v;)Lcom/xiaomi/passport/uicontroller/w;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/v;->IY:Lcom/xiaomi/passport/uicontroller/w;

    return-object v0
.end method


# virtual methods
.method protected done()V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/v;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/v;->IY:Lcom/xiaomi/passport/uicontroller/w;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/x;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/uicontroller/x;-><init>(Lcom/xiaomi/passport/uicontroller/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    return-void
.end method
