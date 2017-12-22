.class final Lcom/xiaomi/accountsdk/account/data/t;
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
        "Lcom/xiaomi/accountsdk/account/data/MetaLoginData;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/t;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
    .locals 1

    new-array v0, p1, [Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/t;->newArray(I)[Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v0

    return-object v0
.end method
