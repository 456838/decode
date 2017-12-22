.class final Lcom/xiaomi/accountsdk/guestaccount/m;
.super Lcom/xiaomi/accountsdk/guestaccount/r;
.source ""


# instance fields
.field final synthetic OA:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

.field final synthetic Oz:Lcom/xiaomi/accountsdk/guestaccount/s;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/s;Lcom/xiaomi/accountsdk/guestaccount/s;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/accountsdk/guestaccount/m;->Oz:Lcom/xiaomi/accountsdk/guestaccount/s;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/guestaccount/m;->OA:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/r;-><init>(Lcom/xiaomi/accountsdk/guestaccount/s;)V

    return-void
.end method


# virtual methods
.method protected Uk()Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/m;->Oz:Lcom/xiaomi/accountsdk/guestaccount/s;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/guestaccount/s;->Ut(Lcom/xiaomi/accountsdk/guestaccount/s;)Lcom/xiaomi/accountsdk/guestaccount/A;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/m;->OA:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/guestaccount/A;->UE(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Tl()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/m;->OA:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NM:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->Tj(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Tm(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    :cond_0
    return-object v0
.end method
