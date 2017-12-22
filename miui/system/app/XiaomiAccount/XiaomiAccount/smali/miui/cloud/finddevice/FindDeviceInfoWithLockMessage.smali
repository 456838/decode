.class public Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;
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
            "Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final asW:Lmiui/cloud/finddevice/FindDeviceInfo;

.field public final asX:Lmiui/cloud/finddevice/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/cloud/finddevice/c;

    invoke-direct {v0}, Lmiui/cloud/finddevice/c;-><init>()V

    sput-object v0, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/cloud/finddevice/FindDeviceInfo;

    invoke-direct {v0}, Lmiui/cloud/finddevice/FindDeviceInfo;-><init>()V

    iput-object v0, p0, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;->asW:Lmiui/cloud/finddevice/FindDeviceInfo;

    new-instance v0, Lmiui/cloud/finddevice/d;

    invoke-direct {v0}, Lmiui/cloud/finddevice/d;-><init>()V

    iput-object v0, p0, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;->asX:Lmiui/cloud/finddevice/d;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;->aGV(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public aGV(Landroid/os/Parcel;)V
    .locals 1

    iget-object v0, p0, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;->asW:Lmiui/cloud/finddevice/FindDeviceInfo;

    invoke-virtual {v0, p1}, Lmiui/cloud/finddevice/FindDeviceInfo;->aGU(Landroid/os/Parcel;)V

    iget-object v0, p0, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;->asX:Lmiui/cloud/finddevice/d;

    invoke-virtual {v0, p1}, Lmiui/cloud/finddevice/d;->aGW(Landroid/os/Parcel;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;->asW:Lmiui/cloud/finddevice/FindDeviceInfo;

    invoke-virtual {v0, p1, p2}, Lmiui/cloud/finddevice/FindDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;->asX:Lmiui/cloud/finddevice/d;

    invoke-virtual {v0, p1}, Lmiui/cloud/finddevice/d;->aGX(Landroid/os/Parcel;)V

    return-void
.end method
