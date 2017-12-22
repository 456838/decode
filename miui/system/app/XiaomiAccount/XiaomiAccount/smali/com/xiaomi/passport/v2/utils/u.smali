.class final Lcom/xiaomi/passport/v2/utils/u;
.super Lcom/xiaomi/passport/uicontroller/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/w",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic GV:Lcom/xiaomi/passport/v2/utils/f;

.field final synthetic GW:Lcom/xiaomi/passport/v2/utils/i;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/f;Lcom/xiaomi/passport/v2/utils/i;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/u;->GV:Lcom/xiaomi/passport/v2/utils/f;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/utils/u;->GW:Lcom/xiaomi/passport/v2/utils/i;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/w;-><init>()V

    return-void
.end method


# virtual methods
.method public Lb(Lcom/xiaomi/passport/uicontroller/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/u;->GW:Lcom/xiaomi/passport/v2/utils/i;

    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/v;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/xiaomi/passport/v2/utils/i;->KE(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/u;->GV:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "LoginUIController"

    const-string/jumbo v2, "query user phone info"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidVerifyCodeException;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/u;->GW:Lcom/xiaomi/passport/v2/utils/i;

    invoke-interface {v0}, Lcom/xiaomi/passport/v2/utils/i;->KF()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/u;->GV:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/u;->GW:Lcom/xiaomi/passport/v2/utils/i;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->LI(Ljava/lang/Throwable;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaomi/passport/v2/utils/i;->KD(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/u;->GV:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v1}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "LoginUIController"

    const-string/jumbo v2, "query user phone info"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/u;->GW:Lcom/xiaomi/passport/v2/utils/i;

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Ho:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v1, v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/v2/utils/i;->KD(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/u;->GV:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    goto :goto_0
.end method
