.class abstract Lcom/xiaomi/accountsdk/guestaccount/C;
.super Lcom/xiaomi/accountsdk/a/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/accountsdk/a/e",
        "<",
        "Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic Pe:Lcom/xiaomi/accountsdk/guestaccount/p;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/p;Lcom/xiaomi/accountsdk/a/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/a/f",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/C;->Pe:Lcom/xiaomi/accountsdk/guestaccount/p;

    iget-object v0, p1, Lcom/xiaomi/accountsdk/guestaccount/p;->Ou:Landroid/content/Context;

    const-string/jumbo v1, "com.xiaomi.account.action.BIND_GUEST_ACCOUNT_SERVICE"

    const-string/jumbo v2, "com.xiaomi.account"

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/xiaomi/accountsdk/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/a/a;)V

    return-void
.end method


# virtual methods
.method protected MX(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService$Stub;->TU(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic MX(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/C;->MX(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;

    move-result-object v0

    return-object v0
.end method
