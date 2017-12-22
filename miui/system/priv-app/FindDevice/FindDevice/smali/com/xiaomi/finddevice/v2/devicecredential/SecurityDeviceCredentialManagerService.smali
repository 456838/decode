.class public Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;
.super Landroid/os/Binder;
.source "SecurityDeviceCredentialManagerService.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceCredentialTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

.field private mReloadPolicy:Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->get()Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->mDeviceCredentialTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    .line 32
    new-instance v0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->mDeviceCredentialTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;-><init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->mReloadPolicy:Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;

    .line 29
    return-void
.end method

.method private enforcePermission()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.xiaomi.permission.ACCESS_SECURITY_DEVICE_CREDENTIAL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Need com.xiaomi.permission.ACCESS_SECURITY_DEVICE_CREDENTIAL permission. "

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    return-void
.end method

.method private forceReload()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "PID:"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 108
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->isThisDeviceSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 110
    const/16 v1, -0x64

    .line 109
    invoke-direct {v0, v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->mReloadPolicy:Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->handleForceReload()V

    .line 104
    return-void
.end method

.method private getSecurityDeviceId()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Called. "

    aput-object v2, v1, v4

    const-string/jumbo v2, "PID:"

    aput-object v2, v1, v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->isThisDeviceSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 47
    const/16 v2, -0x64

    .line 46
    invoke-direct {v1, v2}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v1

    .line 51
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->mDeviceCredentialTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->getFId()Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 54
    new-instance v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 55
    const/16 v2, -0x65

    .line 54
    invoke-direct {v1, v2}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v1
.end method

.method private isThisDeviceSupported()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Called. "

    aput-object v3, v2, v1

    const-string/jumbo v3, "PID:"

    aput-object v3, v2, v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Lmiui/cloud/common/XDeviceInfo;->getKeyStoreTypeUnblocking()Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    move-result-object v2

    sget-object v3, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->TZ:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private writeOperationFailure(Landroid/os/Parcel;Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;)V
    .locals 1
    .param p1, "replay"    # Landroid/os/Parcel;
    .param p2, "e"    # Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .prologue
    .line 190
    iget v0, p2, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    return-void
.end method

.method private writeOperationSuccess(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "replay"    # Landroid/os/Parcel;

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 119
    sparse-switch p1, :sswitch_data_0

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    .line 121
    :sswitch_0
    const-string/jumbo v7, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v8

    .line 126
    :sswitch_1
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->enforcePermission()V

    .line 127
    const-string/jumbo v9, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->isThisDeviceSupported()Z

    move-result v6

    .line 129
    .local v6, "support":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v6, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return v8

    .line 135
    .end local v6    # "support":Z
    :sswitch_2
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->enforcePermission()V

    .line 136
    const-string/jumbo v7, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->getSecurityDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-direct {p0, p3}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->writeOperationSuccess(Landroid/os/Parcel;)V

    .line 141
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1    # "id":Ljava/lang/String;
    :goto_0
    return v8

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-direct {p0, p3, v0}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->writeOperationFailure(Landroid/os/Parcel;Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;)V

    goto :goto_0

    .line 151
    .end local v0    # "e":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :sswitch_3
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->enforcePermission()V

    .line 152
    const-string/jumbo v7, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    :try_start_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, "keyType":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 156
    .local v4, "signData":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x1

    .line 157
    .local v3, "reloadIfNecessary":Z
    :goto_1
    invoke-virtual {p0, v2, v4, v3}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->sign(I[BZ)[B

    move-result-object v5

    .line 158
    .local v5, "signRst":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-direct {p0, p3}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->writeOperationSuccess(Landroid/os/Parcel;)V

    .line 160
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_1
    .catch Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .end local v2    # "keyType":I
    .end local v3    # "reloadIfNecessary":Z
    .end local v4    # "signData":[B
    .end local v5    # "signRst":[B
    :goto_2
    return v8

    .line 156
    .restart local v2    # "keyType":I
    .restart local v4    # "signData":[B
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "reloadIfNecessary":Z
    goto :goto_1

    .line 161
    .end local v2    # "keyType":I
    .end local v3    # "reloadIfNecessary":Z
    .end local v4    # "signData":[B
    :catch_1
    move-exception v0

    .line 162
    .restart local v0    # "e":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-direct {p0, p3, v0}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->writeOperationFailure(Landroid/os/Parcel;Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;)V

    goto :goto_2

    .line 170
    .end local v0    # "e":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :sswitch_4
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->enforcePermission()V

    .line 171
    const-string/jumbo v7, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    :try_start_2
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->forceReload()V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-direct {p0, p3}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->writeOperationSuccess(Landroid/os/Parcel;)V
    :try_end_2
    .catch Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 181
    :goto_3
    return v8

    .line 176
    :catch_2
    move-exception v0

    .line 177
    .restart local v0    # "e":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-direct {p0, p3, v0}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->writeOperationFailure(Landroid/os/Parcel;Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;)V

    goto :goto_3

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.method public sign(I[BZ)[B
    .locals 8
    .param p1, "keyType"    # I
    .param p2, "data"    # [B
    .param p3, "reloadIfNecessary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .prologue
    const/16 v7, -0x65

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 62
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Called. "

    aput-object v3, v2, v5

    const-string/jumbo v3, "PID:"

    aput-object v3, v2, v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 63
    const-string/jumbo v3, "Args: "

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 62
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->isThisDeviceSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    new-instance v2, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 67
    const/16 v3, -0x64

    .line 66
    invoke-direct {v2, v3}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v2

    .line 70
    :cond_0
    if-eq p1, v6, :cond_1

    if-eqz p1, :cond_1

    .line 71
    new-instance v2, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 72
    const/16 v3, -0x66

    .line 71
    invoke-direct {v2, v3}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v2

    .line 75
    :cond_1
    if-eqz p2, :cond_2

    array-length v2, p2

    if-gtz v2, :cond_3

    .line 76
    :cond_2
    new-instance v2, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 77
    const/16 v3, -0x67

    .line 76
    invoke-direct {v2, v3}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v2

    .line 81
    :cond_3
    if-eqz p3, :cond_4

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->mDeviceCredentialTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->isProvisioned()Z
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_5

    .line 91
    :cond_4
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->mDeviceCredentialTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    invoke-virtual {v2, p2}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->sign([B)[B

    move-result-object v1

    .line 92
    .local v1, "signature":[B
    invoke-static {v1}, Lcom/xiaomi/finddevice/common/util/KeyTool;->isValidStandardSignature([B)Z

    move-result v2

    if-nez v2, :cond_6

    .line 93
    new-instance v2, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 94
    const/16 v3, -0x68

    .line 93
    invoke-direct {v2, v3}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v2
    :try_end_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .end local v1    # "signature":[B
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    new-instance v2, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    invoke-direct {v2, v7}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v2

    .line 82
    .end local v0    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/devicecredential/SecurityDeviceCredentialManagerService;->mReloadPolicy:Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;

    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->handleReload()V
    :try_end_2
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    .restart local v0    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 86
    new-instance v2, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    invoke-direct {v2, v7}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v2

    .line 96
    .end local v0    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    .restart local v1    # "signature":[B
    :cond_6
    return-object v1
.end method
