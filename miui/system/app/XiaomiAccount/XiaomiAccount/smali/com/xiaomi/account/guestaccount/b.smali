.class Lcom/xiaomi/account/guestaccount/b;
.super Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService$Stub;
.source ""


# instance fields
.field final synthetic hZ:Lcom/xiaomi/account/guestaccount/GuestAccountService;


# direct methods
.method private constructor <init>(Lcom/xiaomi/account/guestaccount/GuestAccountService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/guestaccount/b;->hZ:Lcom/xiaomi/account/guestaccount/GuestAccountService;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/guestaccount/GuestAccountService;Lcom/xiaomi/account/guestaccount/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/guestaccount/b;-><init>(Lcom/xiaomi/account/guestaccount/GuestAccountService;)V

    return-void
.end method


# virtual methods
.method public jp(Landroid/os/Bundle;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Landroid/os/Bundle;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jl()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/account/guestaccount/b;->hZ:Lcom/xiaomi/account/guestaccount/GuestAccountService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jc(Landroid/os/Bundle;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GuestAccountService"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public jq(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jl()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/account/guestaccount/b;->hZ:Lcom/xiaomi/account/guestaccount/GuestAccountService;

    invoke-static {v0}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jm(Lcom/xiaomi/account/guestaccount/GuestAccountService;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GuestAccountService"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public jr()V
    .locals 0

    return-void
.end method

.method public js(Landroid/os/Bundle;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Landroid/os/Bundle;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jl()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/account/guestaccount/b;->hZ:Lcom/xiaomi/account/guestaccount/GuestAccountService;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jn(Lcom/xiaomi/account/guestaccount/GuestAccountService;Landroid/os/Bundle;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GuestAccountService"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
