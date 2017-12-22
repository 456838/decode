.class public final Lcom/xiaomi/passport/accountmanager/h;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CP(Lcom/xiaomi/passport/servicetoken/b;)Landroid/accounts/AccountManagerFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/servicetoken/b;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/passport/accountmanager/i;

    invoke-direct {v0}, Lcom/xiaomi/passport/accountmanager/i;-><init>()V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/xiaomi/passport/accountmanager/l;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/passport/accountmanager/l;-><init>(Lcom/xiaomi/passport/servicetoken/b;Lcom/xiaomi/passport/accountmanager/i;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
