.class final Lcom/xiaomi/accountsdk/account/data/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lcom/xiaomi/accountsdk/account/data/h;

    const-string/jumbo v2, "register_status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/xiaomi/accountsdk/account/data/h;-><init>(I)V

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/h;->Ww(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v1

    const-string/jumbo v2, "user_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/h;->Wx(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v1

    const-string/jumbo v2, "avatar_address"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/h;->Wy(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v1

    const-string/jumbo v2, "ticket_token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/h;->Wz(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/h;->Wv(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v1

    const-string/jumbo v2, "masked_user_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/h;->WA(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v1

    const-string/jumbo v2, "has_pwd"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/data/h;->WB(Z)Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/h;->build()Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/i;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/i;->newArray(I)[Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    move-result-object v0

    return-object v0
.end method
