.class abstract Lcom/xiaomi/accounts/i;
.super Ljava/util/concurrent/FutureTask;
.source ""

# interfaces
.implements Landroid/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/accounts/AccountManagerFuture",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final MP:Landroid/app/Activity;

.field final MQ:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final MR:Landroid/os/Handler;

.field final MS:Lcom/xiaomi/accounts/IAccountManagerResponse;

.field final synthetic MT:Lcom/xiaomi/accounts/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accounts/h;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/accounts/i;->MT:Lcom/xiaomi/accounts/h;

    new-instance v0, Lcom/xiaomi/accounts/v;

    invoke-direct {v0, p1}, Lcom/xiaomi/accounts/v;-><init>(Lcom/xiaomi/accounts/h;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p3, p0, Lcom/xiaomi/accounts/i;->MR:Landroid/os/Handler;

    iput-object p4, p0, Lcom/xiaomi/accounts/i;->MQ:Landroid/accounts/AccountManagerCallback;

    iput-object p2, p0, Lcom/xiaomi/accounts/i;->MP:Landroid/app/Activity;

    new-instance v0, Lcom/xiaomi/accounts/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accounts/j;-><init>(Lcom/xiaomi/accounts/i;Lcom/xiaomi/accounts/j;)V

    iput-object v0, p0, Lcom/xiaomi/accounts/i;->MS:Lcom/xiaomi/accounts/IAccountManagerResponse;

    return-void
.end method

.method private Sv(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/accounts/i;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accounts/i;->MT:Lcom/xiaomi/accounts/h;

    invoke-static {v0}, Lcom/xiaomi/accounts/h;->Sr(Lcom/xiaomi/accounts/h;)V

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accounts/i;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2}, Lcom/xiaomi/accounts/i;->cancel(Z)Z

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/xiaomi/accounts/i;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v2}, Lcom/xiaomi/accounts/i;->cancel(Z)Z

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/xiaomi/accounts/i;->cancel(Z)Z

    throw v0

    :cond_2
    :try_start_3
    instance-of v1, v0, Ljava/lang/UnsupportedOperationException;

    if-eqz v1, :cond_3

    new-instance v1, Landroid/accounts/AuthenticatorException;

    invoke-direct {v1, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    instance-of v1, v0, Landroid/accounts/AuthenticatorException;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/accounts/AuthenticatorException;

    throw v0

    :cond_4
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_5
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_6

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/xiaomi/accounts/i;->cancel(Z)Z

    :goto_0
    new-instance v0, Landroid/accounts/OperationCanceledException;

    invoke-direct {v0}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/xiaomi/accounts/i;->cancel(Z)Z

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_4
    new-instance v0, Landroid/accounts/OperationCanceledException;

    invoke-direct {v0}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method static synthetic Sy(Lcom/xiaomi/accounts/i;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accounts/i;->setException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public abstract Su()V
.end method

.method protected Sw(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "AccountManager"

    const-string/jumbo v1, "the bundle must not be null"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final Sx()Landroid/accounts/AccountManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accounts/i;->Su()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accounts/i;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected done()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/accounts/i;->MQ:Landroid/accounts/AccountManagerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accounts/i;->MT:Lcom/xiaomi/accounts/h;

    iget-object v1, p0, Lcom/xiaomi/accounts/i;->MR:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/accounts/i;->MQ:Landroid/accounts/AccountManagerCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/xiaomi/accounts/h;->Ss(Lcom/xiaomi/accounts/h;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V

    :cond_0
    return-void
.end method

.method public getResult()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/xiaomi/accounts/i;->Sv(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/xiaomi/accounts/i;->Sv(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/accounts/i;->getResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/accounts/i;->getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accounts/i;->Sw(Landroid/os/Bundle;)V

    return-void
.end method
