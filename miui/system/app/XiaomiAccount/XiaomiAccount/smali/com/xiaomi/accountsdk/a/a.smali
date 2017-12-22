.class public abstract Lcom/xiaomi/accountsdk/a/a;
.super Ljava/util/concurrent/FutureTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ServerDataType:",
        "Ljava/lang/Object;",
        "ClientDataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TClientDataType;>;"
    }
.end annotation


# instance fields
.field private final aal:Lcom/xiaomi/accountsdk/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/a/b",
            "<TClientDataType;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/xiaomi/accountsdk/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/a/b",
            "<TClientDataType;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/a/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/a/c;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/a/a;->aal:Lcom/xiaomi/accountsdk/a/b;

    return-void
.end method

.method private ajD()V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/a/a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/a/a;->aal:Lcom/xiaomi/accountsdk/a/b;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaomi/accountsdk/a/d;

    invoke-direct {v1, p0}, Lcom/xiaomi/accountsdk/a/d;-><init>(Lcom/xiaomi/accountsdk/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic ajE(Lcom/xiaomi/accountsdk/a/a;)Lcom/xiaomi/accountsdk/a/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/a/a;->aal:Lcom/xiaomi/accountsdk/a/b;

    return-object v0
.end method


# virtual methods
.method protected abstract LL(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TServerDataType;)TClientDataType;"
        }
    .end annotation
.end method

.method public final ajB(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/a/a;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ajC(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TServerDataType;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/a/a;->LL(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/a/a;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/a/a;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected done()V
    .locals 0

    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/a/a;->ajD()V

    return-void
.end method
