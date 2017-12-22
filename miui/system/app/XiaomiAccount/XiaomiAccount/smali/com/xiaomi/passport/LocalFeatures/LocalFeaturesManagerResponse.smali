.class public Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;
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
            "Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Cv:Lcom/xiaomi/accounts/ILocalFeatureManagerResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/LocalFeatures/e;

    invoke-direct {v0}, Lcom/xiaomi/passport/LocalFeatures/e;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accounts/ILocalFeatureManagerResponse$Stub;->Th(Landroid/os/IBinder;)Lcom/xiaomi/accounts/ILocalFeatureManagerResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;->Cv:Lcom/xiaomi/accounts/ILocalFeatureManagerResponse;

    return-void
.end method


# virtual methods
.method public Hx(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;->Cv:Lcom/xiaomi/accounts/ILocalFeatureManagerResponse;

    invoke-interface {v0, p1}, Lcom/xiaomi/accounts/ILocalFeatureManagerResponse;->Te(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public Hy(ILjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;->Cv:Lcom/xiaomi/accounts/ILocalFeatureManagerResponse;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/accounts/ILocalFeatureManagerResponse;->Tg(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerResponse;->Cv:Lcom/xiaomi/accounts/ILocalFeatureManagerResponse;

    invoke-interface {v0}, Lcom/xiaomi/accounts/ILocalFeatureManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
