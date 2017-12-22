.class public final Lcom/xiaomi/accountsdk/guestaccount/data/b;
.super Lcom/xiaomi/accountsdk/a/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/accountsdk/a/f",
        "<",
        "Lcom/xiaomi/accountsdk/guestaccount/data/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .locals 3

    :try_start_0
    invoke-super {p0}, Lcom/xiaomi/accountsdk/a/f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/guestaccount/data/c;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GuestAccountFuture"

    const-string/jumbo v2, "get()"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/j;->Ot:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .locals 3

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/accountsdk/a/f;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/guestaccount/data/c;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GuestAccountFuture"

    const-string/jumbo v2, "get(,)"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/j;->Ot:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->get()Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->get(JLjava/util/concurrent/TimeUnit;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0
.end method
