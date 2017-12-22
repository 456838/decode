.class Lcom/xiaomi/accountsdk/guestaccount/B;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method UP(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/accountsdk/guestaccount/B;->UQ(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    return-object v0
.end method

.method UQ(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/w;->Uv(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/w;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/guestaccount/w;->Uw(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    return-object v0
.end method

.method UR(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/w;->Uv(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/w;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/guestaccount/w;->Uz(Ljava/lang/String;)V

    return-void
.end method

.method US(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/w;->Uv(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/w;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/guestaccount/w;->Ux(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V

    return-void
.end method

.method UT(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/w;->Uv(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/w;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/guestaccount/w;->Uy(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V

    return-void
.end method
