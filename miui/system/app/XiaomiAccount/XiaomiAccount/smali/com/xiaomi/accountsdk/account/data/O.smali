.class final Lcom/xiaomi/accountsdk/account/data/O;
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
        "Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/O;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;
    .locals 1

    new-array v0, p1, [Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/O;->newArray(I)[Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;

    move-result-object v0

    return-object v0
.end method
