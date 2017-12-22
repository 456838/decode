.class public final Lcom/xiaomi/accountsdk/guestaccount/data/f;
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
.method public TJ()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/f;->Oe:Landroid/os/Bundle;

    const-string/jumbo v1, "callback"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TK()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/f;->Oe:Landroid/os/Bundle;

    const-string/jumbo v1, "psid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TL()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/f;->Oe:Landroid/os/Bundle;

    const-string/jumbo v1, "sdk_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TM()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/f;->Oe:Landroid/os/Bundle;

    const-string/jumbo v1, "sid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TN(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/f;->Oe:Landroid/os/Bundle;

    const-string/jumbo v1, "psid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public TO(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/f;->Oe:Landroid/os/Bundle;

    const-string/jumbo v1, "sdk_version"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public TP(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/f;->Oe:Landroid/os/Bundle;

    const-string/jumbo v1, "sid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
