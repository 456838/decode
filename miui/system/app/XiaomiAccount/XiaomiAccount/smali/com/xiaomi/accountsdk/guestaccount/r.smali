.class abstract Lcom/xiaomi/accountsdk/guestaccount/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final OG:Lcom/xiaomi/accountsdk/guestaccount/data/b;

.field final synthetic OH:Lcom/xiaomi/accountsdk/guestaccount/s;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/s;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/r;->OH:Lcom/xiaomi/accountsdk/guestaccount/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/r;->OG:Lcom/xiaomi/accountsdk/guestaccount/data/b;

    return-void
.end method


# virtual methods
.method protected abstract Uk()Lcom/xiaomi/accountsdk/guestaccount/data/c;
.end method

.method public Un()Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/r;->OG:Lcom/xiaomi/accountsdk/guestaccount/data/b;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/r;->run()V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/r;->Uk()Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Tl()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/r;->OG:Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->ajC(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {v1}, Lcom/xiaomi/accountsdk/guestaccount/s;->Uo(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/r;->OH:Lcom/xiaomi/accountsdk/guestaccount/s;

    invoke-static {v2}, Lcom/xiaomi/accountsdk/guestaccount/s;->Uu(Lcom/xiaomi/accountsdk/guestaccount/s;)Lcom/xiaomi/accountsdk/guestaccount/B;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/accountsdk/guestaccount/r;->OH:Lcom/xiaomi/accountsdk/guestaccount/s;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/guestaccount/s;->Ou:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/accountsdk/guestaccount/B;->US(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V

    :cond_1
    invoke-static {v1}, Lcom/xiaomi/accountsdk/guestaccount/s;->Up(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/r;->OH:Lcom/xiaomi/accountsdk/guestaccount/s;

    invoke-static {v2}, Lcom/xiaomi/accountsdk/guestaccount/s;->Uu(Lcom/xiaomi/accountsdk/guestaccount/s;)Lcom/xiaomi/accountsdk/guestaccount/B;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/accountsdk/guestaccount/r;->OH:Lcom/xiaomi/accountsdk/guestaccount/s;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/guestaccount/s;->Ou:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/accountsdk/guestaccount/B;->UT(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/r;->OG:Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->ajC(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v2, v1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NF:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/r;->OG:Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->ajC(Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/r;->OH:Lcom/xiaomi/accountsdk/guestaccount/s;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/guestaccount/s;->Ut(Lcom/xiaomi/accountsdk/guestaccount/s;)Lcom/xiaomi/accountsdk/guestaccount/A;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/A;->UB(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Tl()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/accountsdk/guestaccount/s;->Up(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/r;->OH:Lcom/xiaomi/accountsdk/guestaccount/s;

    invoke-static {v2}, Lcom/xiaomi/accountsdk/guestaccount/s;->Uu(Lcom/xiaomi/accountsdk/guestaccount/s;)Lcom/xiaomi/accountsdk/guestaccount/B;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/accountsdk/guestaccount/r;->OH:Lcom/xiaomi/accountsdk/guestaccount/s;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/guestaccount/s;->Ou:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/accountsdk/guestaccount/B;->UT(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/r;->OG:Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->ajC(Ljava/lang/Object;)V

    return-void
.end method
