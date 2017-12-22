.class abstract Lcom/xiaomi/accountsdk/activate/j;
.super Ljava/util/concurrent/FutureTask;
.source ""

# interfaces
.implements Lcom/xiaomi/accountsdk/activate/b;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Lcom/xiaomi/accountsdk/activate/b",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field aaW:Lcom/xiaomi/accountsdk/activate/IActivateService;

.field aaX:Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse;

.field final synthetic aaY:Lcom/xiaomi/accountsdk/activate/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/activate/c;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/activate/j;->aaY:Lcom/xiaomi/accountsdk/activate/c;

    new-instance v0, Lcom/xiaomi/accountsdk/activate/d;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/activate/d;-><init>(Lcom/xiaomi/accountsdk/activate/c;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lcom/xiaomi/accountsdk/activate/i;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/activate/i;-><init>(Lcom/xiaomi/accountsdk/activate/j;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/activate/j;->aaX:Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse;

    return-void
.end method

.method private akD(I)Ljava/lang/Exception;
    .locals 2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException;-><init>(Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method private akE()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/activate/j;->aaY:Lcom/xiaomi/accountsdk/activate/c;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/activate/c;->akb(Lcom/xiaomi/accountsdk/activate/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ActivateSdkHelper"

    const-string/jumbo v2, "calling this from your main thread can lead to deadlock and/or ANRs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/xiaomi/accountsdk/activate/j;->aaY:Lcom/xiaomi/accountsdk/activate/c;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/activate/c;->akb(Lcom/xiaomi/accountsdk/activate/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    throw v0

    :cond_0
    return-void
.end method

.method private akF(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/activate/j;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/activate/j;->akE()V

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/activate/j;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v3}, Lcom/xiaomi/accountsdk/activate/j;->cancel(Z)Z

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/xiaomi/accountsdk/activate/j;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v3}, Lcom/xiaomi/accountsdk/activate/j;->cancel(Z)Z

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "ActivateSdkHelper"

    const-string/jumbo v2, "internalGetResult caught Exception and will re-throw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    invoke-virtual {p0, v3}, Lcom/xiaomi/accountsdk/activate/j;->cancel(Z)Z

    throw v0

    :cond_2
    :try_start_3
    instance-of v1, v0, Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException;

    throw v0

    :cond_3
    new-instance v1, Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "ActivateSdkHelper"

    const-string/jumbo v2, "internalGetResult caught Exception and will re-throw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v3}, Lcom/xiaomi/accountsdk/activate/j;->cancel(Z)Z

    :goto_0
    new-instance v0, Lcom/xiaomi/accountsdk/activate/OperationCancelledException;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/activate/OperationCancelledException;-><init>()V

    throw v0

    :catch_2
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "ActivateSdkHelper"

    const-string/jumbo v2, "internalGetResult caught Exception and will re-throw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0, v3}, Lcom/xiaomi/accountsdk/activate/j;->cancel(Z)Z

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "ActivateSdkHelper"

    const-string/jumbo v2, "internalGetResult caught Exception and will re-throw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0, v3}, Lcom/xiaomi/accountsdk/activate/j;->cancel(Z)Z

    goto :goto_0
.end method

.method private akH()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/activate/j;->aaW:Lcom/xiaomi/accountsdk/activate/IActivateService;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/xiaomi/accountsdk/activate/j;->aaW:Lcom/xiaomi/accountsdk/activate/IActivateService;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/activate/j;->aaY:Lcom/xiaomi/accountsdk/activate/c;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/activate/c;->akb(Lcom/xiaomi/accountsdk/activate/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method static synthetic akI(Lcom/xiaomi/accountsdk/activate/j;I)Ljava/lang/Exception;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/activate/j;->akD(I)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method private close()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/activate/j;->akH()V

    return-void
.end method


# virtual methods
.method akC()Lcom/xiaomi/accountsdk/activate/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/accountsdk/activate/b",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/accountsdk/activate/o;->abn:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/activate/j;->aaY:Lcom/xiaomi/accountsdk/activate/c;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/activate/c;->akb(Lcom/xiaomi/accountsdk/activate/c;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/accountsdk/activate/ActivateSdkHelper$IntentType;->abj:Lcom/xiaomi/accountsdk/activate/ActivateSdkHelper$IntentType;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/accountsdk/activate/c;->akc(Landroid/content/Intent;Landroid/content/Context;Lcom/xiaomi/accountsdk/activate/ActivateSdkHelper$IntentType;)V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/activate/j;->aaY:Lcom/xiaomi/accountsdk/activate/c;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/activate/c;->akb(Lcom/xiaomi/accountsdk/activate/c;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-object p0
.end method

.method protected akG(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/activate/j;->close()V

    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    return-void
.end method

.method abstract akd(Lcom/xiaomi/accountsdk/activate/IActivateService;Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse;)V
.end method

.method public getResult()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/xiaomi/accountsdk/activate/j;->akF(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/xiaomi/accountsdk/activate/j;->akF(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/activate/j;->getResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/accountsdk/activate/j;->getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {p2}, Lcom/xiaomi/accountsdk/activate/IActivateService$Stub;->akL(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/activate/IActivateService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/activate/j;->aaW:Lcom/xiaomi/accountsdk/activate/IActivateService;

    invoke-static {}, Lcom/xiaomi/accountsdk/activate/c;->aka()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/activate/m;

    invoke-direct {v1, p0}, Lcom/xiaomi/accountsdk/activate/m;-><init>(Lcom/xiaomi/accountsdk/activate/j;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/activate/j;->aaW:Lcom/xiaomi/accountsdk/activate/IActivateService;

    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/activate/j;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/activate/j;->akG(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/activate/j;->close()V

    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
