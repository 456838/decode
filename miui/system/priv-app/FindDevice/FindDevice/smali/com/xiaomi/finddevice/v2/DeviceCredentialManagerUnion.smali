.class public Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;
.super Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager;
.source "DeviceCredentialManagerUnion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;,
        Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;
    }
.end annotation


# instance fields
.field private mDeviceCredentialManagerNoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;

.field private mDeviceCredentialType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

.field private mDeviceCredentialUpdateType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

.field private mLastCheckNoTZ2TZTime:J

.field private mTZ2NoTZChecked:Z


# direct methods
.method static synthetic -wrap0(Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;Lcom/xiaomi/finddevice/v2/IDeviceCredential;Lcom/xiaomi/finddevice/v2/IDeviceCredential;)Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;
    .locals 1
    .param p1, "oldDeviceCredential"    # Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .param p2, "newDeviceCredential"    # Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->getUpdateProvider(Lcom/xiaomi/finddevice/v2/IDeviceCredential;Lcom/xiaomi/finddevice/v2/IDeviceCredential;)Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager;-><init>()V

    .line 305
    sget-object v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->NO_NEED:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    .line 304
    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialUpdateType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    .line 307
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mLastCheckNoTZ2TZTime:J

    .line 28
    new-instance v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;

    invoke-direct {v0, p1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialManagerNoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;

    .line 27
    return-void
.end method

.method private changeDeviceCredentialTypeLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    .prologue
    .line 266
    iget-object v0, p2, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->mark:[B

    invoke-static {p1, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->saveDeviceCredentialTypeMark(Landroid/content/Context;[B)V

    .line 267
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    .line 268
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->outputDeviceCredentialTypeDebugFlag(Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;)V

    .line 265
    return-void
.end method

.method private doNoTZ2NoTZUpdateLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "updateDeviceCredentialHandler"    # Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    :try_start_0
    new-instance v0, Lmiui/cloud/common/XWrapper;

    invoke-direct {v0}, Lmiui/cloud/common/XWrapper;-><init>()V

    .line 94
    .local v0, "updateResult":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<Lcom/xiaomi/finddevice/v2/IDeviceCredential;>;"
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialManagerNoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;

    .line 95
    new-instance v2, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$1;-><init>(Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;Lmiui/cloud/common/XWrapper;)V

    .line 94
    invoke-virtual {v1, p1, v2}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->updateDeviceCredential(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;)V

    .line 110
    invoke-virtual {v0}, Lmiui/cloud/common/XWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0}, Lmiui/cloud/common/XWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->notifyDeviceCredentialChange(Lcom/xiaomi/finddevice/v2/IDeviceCredential;)V

    .line 88
    :goto_0
    return-void

    .line 118
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "mDeviceCredentialManagerNoTZ.updateDeviceCredential did nothing. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    .end local v0    # "updateResult":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<Lcom/xiaomi/finddevice/v2/IDeviceCredential;>;"
    :catchall_0
    move-exception v1

    throw v1
.end method

.method private doNoTZ2TZUpdateLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "updateDeviceCredentialHandler"    # Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialManagerNoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;

    invoke-virtual {v2, p1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    move-result-object v1

    .line 137
    .local v1, "oldDeviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    invoke-static {}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->get()Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    move-result-object v0

    .line 139
    .local v0, "newDeviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    invoke-direct {p0, v1, v0}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->getUpdateProvider(Lcom/xiaomi/finddevice/v2/IDeviceCredential;Lcom/xiaomi/finddevice/v2/IDeviceCredential;)Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;

    move-result-object v2

    .line 138
    invoke-interface {p2, v2}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;->doStatusUpdate(Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;)V

    .line 140
    sget-object v2, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->TZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    invoke-direct {p0, p1, v2}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->changeDeviceCredentialTypeLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->notifyDeviceCredentialChange(Lcom/xiaomi/finddevice/v2/IDeviceCredential;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    return-void

    .line 142
    .end local v0    # "newDeviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .end local v1    # "oldDeviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method private doTZ2NoTZUpdateLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "updateDeviceCredentialHandler"    # Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    new-instance v0, Lmiui/cloud/common/XWrapper;

    invoke-direct {v0}, Lmiui/cloud/common/XWrapper;-><init>()V

    .line 158
    .local v0, "updateResult":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<Lcom/xiaomi/finddevice/v2/IDeviceCredential;>;"
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialManagerNoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->deprecateDeviceCredential()V

    .line 159
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialManagerNoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;

    .line 160
    new-instance v2, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$2;-><init>(Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;Lmiui/cloud/common/XWrapper;)V

    .line 159
    invoke-virtual {v1, p1, v2}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->updateDeviceCredential(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;)V

    .line 178
    invoke-virtual {v0}, Lmiui/cloud/common/XWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Device credential never update to null. "

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v0    # "updateResult":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<Lcom/xiaomi/finddevice/v2/IDeviceCredential;>;"
    :catchall_0
    move-exception v1

    throw v1

    .line 182
    .restart local v0    # "updateResult":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<Lcom/xiaomi/finddevice/v2/IDeviceCredential;>;"
    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    invoke-direct {p0, p1, v1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->changeDeviceCredentialTypeLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;)V

    .line 183
    invoke-virtual {v0}, Lmiui/cloud/common/XWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->notifyDeviceCredentialChange(Lcom/xiaomi/finddevice/v2/IDeviceCredential;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    return-void
.end method

.method private getDeviceCredentialTypeLocked(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 252
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    if-nez v1, :cond_0

    .line 253
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->getDeviceCredentialTypeMark(Landroid/content/Context;)[B

    move-result-object v0

    .line 254
    .local v0, "typeMark":[B
    sget-object v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->TZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    iget-object v1, v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->mark:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    sget-object v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->TZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    .line 259
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->outputDeviceCredentialTypeDebugFlag(Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;)V

    .line 262
    .end local v0    # "typeMark":[B
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    return-object v1

    .line 257
    .restart local v0    # "typeMark":[B
    :cond_1
    sget-object v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    goto :goto_0
.end method

.method private getUpdateProvider(Lcom/xiaomi/finddevice/v2/IDeviceCredential;Lcom/xiaomi/finddevice/v2/IDeviceCredential;)Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;
    .locals 1
    .param p1, "oldDeviceCredential"    # Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .param p2, "newDeviceCredential"    # Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    .prologue
    .line 238
    new-instance v0, Lcom/xiaomi/finddevice/v2/UpdateDeviceCredentialProvider;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/finddevice/v2/UpdateDeviceCredentialProvider;-><init>(Lcom/xiaomi/finddevice/v2/IDeviceCredential;Lcom/xiaomi/finddevice/v2/IDeviceCredential;)V

    return-object v0
.end method

.method private static outputDeviceCredentialTypeDebugFlag(Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;)V
    .locals 9
    .param p0, "type"    # Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 272
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v7

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 274
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 275
    .local v1, "external":Ljava/io/File;
    if-nez v1, :cond_0

    .line 276
    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "NULL external storage. "

    aput-object v6, v5, v7

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 277
    return-void

    .line 280
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "dctp"

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 281
    .local v2, "flagPath":Ljava/io/File;
    const/4 v3, 0x0

    .line 282
    .local v3, "flagToOutput":Ljava/lang/String;
    sget-object v5, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    if-ne p0, v5, :cond_1

    .line 283
    const-string/jumbo v3, "0"

    .line 291
    .local v3, "flagToOutput":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 292
    .local v4, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v4    # "pw":Ljava/io/PrintWriter;
    :goto_1
    return-void

    .line 284
    .local v3, "flagToOutput":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->TZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    if-ne p0, v5, :cond_2

    .line 285
    const-string/jumbo v3, "1"

    .local v3, "flagToOutput":Ljava/lang/String;
    goto :goto_0

    .line 287
    .local v3, "flagToOutput":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "-1"

    .local v3, "flagToOutput":Ljava/lang/String;
    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "Cannot write: "

    aput-object v6, v5, v7

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private updateDeviceCredentialUpdateTypeLocked(Landroid/content/Context;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 202
    invoke-static {}, Lmiui/cloud/common/XDeviceInfo;->getKeyStoreTypeUnblocking()Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    move-result-object v4

    sget-object v6, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->TZ:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    if-ne v4, v6, :cond_1

    const/4 v1, 0x1

    .line 204
    .local v1, "tzSupport":Z
    :goto_0
    sget-object v4, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->TZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->getDeviceCredentialTypeLocked(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    move-result-object v6

    if-ne v4, v6, :cond_5

    .line 205
    if-nez v1, :cond_2

    .line 206
    sget-object v4, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->TZ2NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    iput-object v4, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialUpdateType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    .line 199
    :cond_0
    :goto_1
    return-void

    .line 202
    .end local v1    # "tzSupport":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "tzSupport":Z
    goto :goto_0

    .line 208
    :cond_2
    invoke-static {}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->get()Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    move-result-object v0

    .line 210
    .local v0, "deviceCredentialTZ":Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;
    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->hasSignError()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mTZ2NoTZChecked:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 211
    :goto_2
    invoke-static {}, Lcom/xiaomi/finddevice/common/FindDeviceMTServiceKeyProvider;->get()Lcom/xiaomi/finddevice/common/FindDeviceMTServiceKeyProvider;

    move-result-object v6

    .line 209
    invoke-virtual {v0, p1, v4, v6}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->provision(Landroid/content/Context;ZLcom/xiaomi/finddevice/common/IMTServiceKeyProvider;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 212
    sget-object v4, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->TZ2NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    iput-object v4, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialUpdateType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    .line 214
    :cond_3
    iput-boolean v5, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mTZ2NoTZChecked:Z

    goto :goto_1

    :cond_4
    move v4, v5

    .line 210
    goto :goto_2

    .line 217
    .end local v0    # "deviceCredentialTZ":Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;
    :cond_5
    if-eqz v1, :cond_8

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 219
    .local v2, "now":J
    iget-wide v6, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mLastCheckNoTZ2TZTime:J

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-eqz v4, :cond_6

    iget-wide v6, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mLastCheckNoTZ2TZTime:J

    sub-long v6, v2, v6

    .line 220
    const-wide/32 v8, 0x5265c00

    .line 219
    cmp-long v4, v6, v8

    if-lez v4, :cond_8

    .line 221
    :cond_6
    invoke-static {}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->get()Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    move-result-object v4

    invoke-static {}, Lcom/xiaomi/finddevice/common/FindDeviceMTServiceKeyProvider;->get()Lcom/xiaomi/finddevice/common/FindDeviceMTServiceKeyProvider;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->provision(Landroid/content/Context;ZLcom/xiaomi/finddevice/common/IMTServiceKeyProvider;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 222
    sget-object v4, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->NoTZ2TZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    iput-object v4, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialUpdateType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    .line 224
    :cond_7
    iput-wide v2, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mLastCheckNoTZ2TZTime:J

    .line 228
    .end local v2    # "now":J
    :cond_8
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialUpdateType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    sget-object v5, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->NO_NEED:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    if-ne v4, v5, :cond_0

    .line 229
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialManagerNoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;

    invoke-virtual {v4, p1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->isDeviceCredentialUpdateNeeded(Landroid/content/Context;)Z

    move-result v4

    .line 228
    if-eqz v4, :cond_0

    .line 230
    sget-object v4, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->NoTZ2NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    iput-object v4, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialUpdateType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, "deviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    :try_start_0
    sget-object v2, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->TZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->getDeviceCredentialTypeLocked(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 41
    invoke-static {}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->get()Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    move-result-object v1

    .line 47
    .local v1, "deviceCredentialTZ":Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;
    invoke-static {}, Lcom/xiaomi/finddevice/common/FindDeviceMTServiceKeyProvider;->get()Lcom/xiaomi/finddevice/common/FindDeviceMTServiceKeyProvider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->provision(Landroid/content/Context;ZLcom/xiaomi/finddevice/common/IMTServiceKeyProvider;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    move-object v0, v1

    .end local v1    # "deviceCredentialTZ":Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;
    .local v0, "deviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    :goto_0
    monitor-exit p0

    .line 53
    return-object v0

    .line 50
    .local v0, "deviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialManagerNoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;

    invoke-virtual {v2, p1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "deviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    goto :goto_0

    .local v0, "deviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized updateDeviceCredential(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;)V
    .locals 3
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

    .line 64
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->updateDeviceCredentialUpdateTypeLocked(Landroid/content/Context;)V

    .line 66
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialUpdateType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    sget-object v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->NO_NEED:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    if-ne v0, v1, :cond_0

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "No need to update. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 68
    return-void

    .line 71
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialUpdateType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    sget-object v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->NoTZ2NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    if-ne v0, v1, :cond_2

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->doNoTZ2NoTZUpdateLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;)V

    .line 79
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->NO_NEED:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialUpdateType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 62
    return-void

    .line 73
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialUpdateType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    sget-object v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->NoTZ2TZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    if-ne v0, v1, :cond_3

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->doNoTZ2TZUpdateLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 75
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->mDeviceCredentialUpdateType:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    sget-object v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->TZ2NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    if-ne v0, v1, :cond_1

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->doTZ2NoTZUpdateLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
