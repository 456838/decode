.class final Lcom/xiaomi/account/guestaccount/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic id:Lcom/xiaomi/accountsdk/guestaccount/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/guestaccount/f;->id:Lcom/xiaomi/accountsdk/guestaccount/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/guestaccount/f;->id:Lcom/xiaomi/accountsdk/guestaccount/h;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/guestaccount/h;->TY()Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->get()Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Tl()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/guestaccount/f;->id:Lcom/xiaomi/accountsdk/guestaccount/h;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/guestaccount/h;->Ud()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/xiaomi/account/guestaccount/GuestAccountService;->jl()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/account/guestaccount/f;->id:Lcom/xiaomi/accountsdk/guestaccount/h;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/guestaccount/h;->Ue()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GuestAccountService"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
