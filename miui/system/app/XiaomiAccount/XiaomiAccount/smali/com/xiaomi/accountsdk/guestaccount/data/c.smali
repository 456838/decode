.class public final Lcom/xiaomi/accountsdk/guestaccount/data/c;
.super Lcom/xiaomi/accountsdk/guestaccount/data/g;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/guestaccount/data/g;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/g;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public Tl()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Oe:Landroid/os/Bundle;

    const-string/jumbo v1, "sdk_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    return-object v0
.end method

.method public Tm(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Oe:Landroid/os/Bundle;

    const-string/jumbo v1, "sdk_version"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public Tn(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Oe:Landroid/os/Bundle;

    const-string/jumbo v1, "error_msg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setErrorCode(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Oe:Landroid/os/Bundle;

    const-string/jumbo v1, "error_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method
