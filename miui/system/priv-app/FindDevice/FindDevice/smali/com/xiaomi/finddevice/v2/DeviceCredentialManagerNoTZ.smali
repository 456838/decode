.class public Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;
.super Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager;
.source "DeviceCredentialManagerNoTZ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    }
.end annotation


# instance fields
.field private mDeviceCredential:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

.field private mDeviceCrendentialDeprecated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->loadFromPersistentStorage(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->mDeviceCredential:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    .line 31
    return-void
.end method

.method private static fetchFromServer(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;

    move-result-object v2

    .line 130
    .local v2, "sp":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_start_0
    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->register()Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;

    move-result-object v0

    .line 132
    .local v0, "ci":Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;
    new-instance v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    iget-object v3, v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;->fpriv:Ljava/security/PrivateKey;

    iget-object v4, v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;->fid:Ljava/lang/String;

    iget-object v5, v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;->host:Ljava/lang/String;

    iget-object v6, v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;->ownUserId:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;-><init>(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .local v1, "deviceCredential":Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 133
    return-object v1

    .line 134
    .end local v0    # "ci":Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;
    .end local v1    # "deviceCredential":Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    :catchall_0
    move-exception v3

    .line 135
    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 134
    throw v3
.end method

.method private static loadFromPersistentStorage(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 105
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->getSoftwareDeviceCredential(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    move-result-object v0

    .line 107
    .local v0, "credential":Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    if-eqz v0, :cond_0

    .line 108
    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "Credential loaded from the persistent store. fid: %s, ownUserId: %s. "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 109
    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->getFId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->getOwnUserId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 108
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 114
    :goto_0
    return-object v0

    .line 111
    :cond_0
    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "NULL device credential in storage. "

    aput-object v2, v1, v5

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static saveToPersistentStore(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "credentail"    # Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    invoke-static {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->saveSoftwareDeviceCredential(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;)V

    .line 120
    new-array v0, v5, [Ljava/lang/Object;

    const-string/jumbo v1, "New credential saved. fid: %s, ownUser: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 121
    invoke-virtual {p1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->getFId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->getOwnUserId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 120
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 118
    return-void
.end method


# virtual methods
.method public declared-synchronized deprecateDeviceCredential()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 99
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->mDeviceCrendentialDeprecated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 98
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->mDeviceCredential:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDeviceCredentialUpdateNeeded(Landroid/content/Context;)Z
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->mDeviceCredential:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    if-nez v2, :cond_0

    .line 75
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Device credential is null. Need to be updated. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 76
    return v6

    .line 79
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->mDeviceCrendentialDeprecated:Z

    if-eqz v2, :cond_1

    .line 80
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Device credential deprecated. Need to be updated. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 81
    return v6

    .line 84
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->mDeviceCredential:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->getOwnUserId()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "ownUserId":Ljava/lang/String;
    invoke-static {p1}, Lcom/xiaomi/finddevice/common/util/AccountHelper;->getLoginedXiaomiAccountUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "loginedUserId":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Device credential is not null, ownUserId: %s, loginedUserId: %s. "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 87
    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 86
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    monitor-exit p0

    .line 95
    return v7

    .line 91
    :cond_3
    const/4 v2, 0x1

    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Device credential owner is null or does not match loginedUserId. Need to be updated. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 92
    return v6

    .end local v0    # "loginedUserId":Ljava/lang/String;
    .end local v1    # "ownUserId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized updateDeviceCredential(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "updateDeviceCredentialHandler"    # Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 48
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->isDeviceCredentialUpdateNeeded(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Do not need to update the device credential. "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    .line 50
    return-void

    .line 55
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->mDeviceCredential:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    .line 56
    .local v1, "oldDeviceCredential":Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->fetchFromServer(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    move-result-object v0

    .line 59
    .local v0, "newDeviceCredential":Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    new-instance v2, Lcom/xiaomi/finddevice/v2/UpdateDeviceCredentialProvider;

    invoke-direct {v2, v1, v0}, Lcom/xiaomi/finddevice/v2/UpdateDeviceCredentialProvider;-><init>(Lcom/xiaomi/finddevice/v2/IDeviceCredential;Lcom/xiaomi/finddevice/v2/IDeviceCredential;)V

    .line 61
    .local v2, "provider":Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;
    invoke-interface {p2, v2}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;->doStatusUpdate(Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;)V

    .line 63
    invoke-static {p1, v0}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->saveToPersistentStore(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;)V

    .line 64
    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->mDeviceCredential:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    .line 65
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->mDeviceCrendentialDeprecated:Z

    .line 67
    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->notifyDeviceCredentialChange(Lcom/xiaomi/finddevice/v2/IDeviceCredential;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 46
    return-void

    .line 68
    .end local v0    # "newDeviceCredential":Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    .end local v1    # "oldDeviceCredential":Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    .end local v2    # "provider":Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;
    :catchall_0
    move-exception v3

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method
