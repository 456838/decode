.class Lcom/xiaomi/account/l;
.super Lcom/xiaomi/account/IXiaomiAuthService$Stub;
.source ""


# instance fields
.field final synthetic oo:Lcom/xiaomi/account/XiaomiAuthService;


# direct methods
.method private constructor <init>(Lcom/xiaomi/account/XiaomiAuthService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/l;->oo:Lcom/xiaomi/account/XiaomiAuthService;

    invoke-direct {p0}, Lcom/xiaomi/account/IXiaomiAuthService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/XiaomiAuthService;Lcom/xiaomi/account/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/l;-><init>(Lcom/xiaomi/account/XiaomiAuthService;)V

    return-void
.end method

.method private rZ(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "method_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/account/l;->oo:Lcom/xiaomi/account/XiaomiAuthService;

    const-string/jumbo v2, "oauth_call"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/xiaomi/account/XiaomiAuthService;->rN(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;I)V

    return-void
.end method


# virtual methods
.method public qO(Lcom/xiaomi/account/IXiaomiAuthResponse;Landroid/os/Bundle;II)V
    .locals 9

    const-string/jumbo v0, "getAccessTokenInResponse"

    invoke-direct {p0, v0}, Lcom/xiaomi/account/l;->rZ(Ljava/lang/String;)V

    const-string/jumbo v0, "XiaomiAuthService"

    const-string/jumbo v1, "getAccessToken called from oauth jar version %s.%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v0, Lcom/xiaomi/account/k;

    iget-object v1, p0, Lcom/xiaomi/account/l;->oo:Lcom/xiaomi/account/XiaomiAuthService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v2, 0x0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/account/k;-><init>(Lcom/xiaomi/account/XiaomiAuthService;Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/account/IXiaomiAuthResponse;III)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public qP(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v0, "getMiCloudAccessToken"

    invoke-direct {p0, v0}, Lcom/xiaomi/account/l;->rZ(Ljava/lang/String;)V

    new-instance v4, Lcom/xiaomi/account/m;

    invoke-direct {v4}, Lcom/xiaomi/account/m;-><init>()V

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v0, Lcom/xiaomi/account/k;

    iget-object v1, p0, Lcom/xiaomi/account/l;->oo:Lcom/xiaomi/account/XiaomiAuthService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/account/k;-><init>(Lcom/xiaomi/account/XiaomiAuthService;Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/account/m;I)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v4}, Lcom/xiaomi/account/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v7

    :catch_1
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-object v7
.end method

.method public qQ(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "getMiCloudUserInfo"

    invoke-direct {p0, v0}, Lcom/xiaomi/account/l;->rZ(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/account/m;

    invoke-direct {v0}, Lcom/xiaomi/account/m;-><init>()V

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/account/j;

    iget-object v3, p0, Lcom/xiaomi/account/l;->oo:Lcom/xiaomi/account/XiaomiAuthService;

    invoke-direct {v2, v3, p1, p2, v0}, Lcom/xiaomi/account/j;-><init>(Lcom/xiaomi/account/XiaomiAuthService;Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/account/m;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/account/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v4

    :catch_1
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-object v4
.end method

.method public qR(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string/jumbo v0, "getSnsAccessToken"

    invoke-direct {p0, v0}, Lcom/xiaomi/account/l;->rZ(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "don\'t call this"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public qS()I
    .locals 1

    const-string/jumbo v0, "getVersionNum"

    invoke-direct {p0, v0}, Lcom/xiaomi/account/l;->rZ(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public qT(Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "invalidateAccessToken"

    invoke-direct {p0, v0}, Lcom/xiaomi/account/l;->rZ(Ljava/lang/String;)V

    return-void
.end method

.method public qU()Z
    .locals 1

    const-string/jumbo v0, "supportResponseWay"

    invoke-direct {p0, v0}, Lcom/xiaomi/account/l;->rZ(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
