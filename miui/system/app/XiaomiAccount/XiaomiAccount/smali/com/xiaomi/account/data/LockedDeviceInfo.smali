.class public Lcom/xiaomi/account/data/LockedDeviceInfo;
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
            "Lcom/xiaomi/account/data/LockedDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final le:Ljava/lang/String;

.field private final lf:Ljava/lang/String;

.field private final lg:Z

.field private final lh:Ljava/lang/String;

.field private final li:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

.field private final lj:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/account/data/m;

    invoke-direct {v0}, Lcom/xiaomi/account/data/m;-><init>()V

    sput-object v0, Lcom/xiaomi/account/data/LockedDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->values()[Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->li:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->lh:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->le:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->lf:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->lg:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->lj:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/account/data/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/account/data/i;->mw(Lcom/xiaomi/account/data/i;)Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->li:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    invoke-static {p1}, Lcom/xiaomi/account/data/i;->mv(Lcom/xiaomi/account/data/i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/account/data/i;->mu(Lcom/xiaomi/account/data/i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->lh:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/account/data/i;->mr(Lcom/xiaomi/account/data/i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->le:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/account/data/i;->ms(Lcom/xiaomi/account/data/i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->lf:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/account/data/i;->mt(Lcom/xiaomi/account/data/i;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->lg:Z

    invoke-static {p1}, Lcom/xiaomi/account/data/i;->mx(Lcom/xiaomi/account/data/i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->lj:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/data/i;Lcom/xiaomi/account/data/LockedDeviceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/data/LockedDeviceInfo;-><init>(Lcom/xiaomi/account/data/i;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->lh:Ljava/lang/String;

    return-object v0
.end method

.method public mg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public mh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->lg:Z

    return v0
.end method

.method public mi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->le:Ljava/lang/String;

    return-object v0
.end method

.method public mj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->lf:Ljava/lang/String;

    return-object v0
.end method

.method public mk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->lj:Ljava/lang/String;

    return-object v0
.end method

.method public type()Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->li:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->li:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    invoke-virtual {v0}, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->lh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->le:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->lf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->lg:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/account/data/LockedDeviceInfo;->lj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
