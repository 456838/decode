.class public Lcom/xiaomi/accountsdk/activate/ActivateServiceResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/accountsdk/activate/ActivateServiceResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aaA:Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/activate/f;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/activate/f;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/activate/ActivateServiceResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse$Stub;->akJ(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/activate/ActivateServiceResponse;->aaA:Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/activate/ActivateServiceResponse;->aaA:Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
