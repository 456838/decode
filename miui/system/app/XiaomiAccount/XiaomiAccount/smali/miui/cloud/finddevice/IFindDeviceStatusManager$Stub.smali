.class public abstract Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lmiui/cloud/finddevice/IFindDeviceStatusManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.cloud.finddevice.IFindDeviceStatusManager"

    invoke-virtual {p0, p0, v0}, Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static aHc(Landroid/os/IBinder;)Lmiui/cloud/finddevice/IFindDeviceStatusManager;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "miui.cloud.finddevice.IFindDeviceStatusManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/cloud/finddevice/IFindDeviceStatusManager;

    if-eqz v1, :cond_1

    check-cast v0, Lmiui/cloud/finddevice/IFindDeviceStatusManager;

    return-object v0

    :cond_1
    new-instance v0, Lmiui/cloud/finddevice/f;

    invoke-direct {v0, p0}, Lmiui/cloud/finddevice/f;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "miui.cloud.finddevice.IFindDeviceStatusManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    const-string/jumbo v2, "miui.cloud.finddevice.IFindDeviceStatusManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;->isOpen()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_2
    const-string/jumbo v2, "miui.cloud.finddevice.IFindDeviceStatusManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;->aGJ()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_3
    const-string/jumbo v2, "miui.cloud.finddevice.IFindDeviceStatusManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;->aGT()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_4
    const-string/jumbo v2, "miui.cloud.finddevice.IFindDeviceStatusManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;->aGS()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_5
    const-string/jumbo v0, "miui.cloud.finddevice.IFindDeviceStatusManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;->aGR()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_6
    const-string/jumbo v2, "miui.cloud.finddevice.IFindDeviceStatusManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;->aGK()Lmiui/cloud/finddevice/FindDeviceInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lmiui/cloud/finddevice/FindDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return v1

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "miui.cloud.finddevice.IFindDeviceStatusManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v2, Lmiui/cloud/finddevice/FindDeviceInfo;

    invoke-direct {v2}, Lmiui/cloud/finddevice/FindDeviceInfo;-><init>()V

    invoke-virtual {p0, v2}, Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;->aGM(Lmiui/cloud/finddevice/FindDeviceInfo;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_5

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v1}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lmiui/cloud/finddevice/FindDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    return v1

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :sswitch_8
    const-string/jumbo v2, "miui.cloud.finddevice.IFindDeviceStatusManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v1

    :goto_3
    invoke-virtual {p0, v2}, Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;->aGN(Z)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_8

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    return v1

    :cond_7
    move v2, v0

    goto :goto_3

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :sswitch_9
    const-string/jumbo v2, "miui.cloud.finddevice.IFindDeviceStatusManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;->close()Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_9

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    return v1

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :sswitch_a
    const-string/jumbo v2, "miui.cloud.finddevice.IFindDeviceStatusManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;->aGO()Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_a

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    return v1

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :sswitch_b
    const-string/jumbo v2, "miui.cloud.finddevice.IFindDeviceStatusManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;->aGQ()Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_b

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    return v1

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :sswitch_c
    const-string/jumbo v2, "miui.cloud.finddevice.IFindDeviceStatusManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;->aGP()Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_c

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    return v1

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :sswitch_d
    const-string/jumbo v2, "miui.cloud.finddevice.IFindDeviceStatusManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v2, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;

    invoke-direct {v2}, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;-><init>()V

    invoke-virtual {p0, v2}, Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;->aGL(Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_d

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v1}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    if-eqz v2, :cond_e

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    return v1

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
