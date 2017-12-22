.class public Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;
.super Ljava/lang/Object;
.source "ReloadPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceCredentialTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

.field private volatile mForceReloadSuccess:Z

.field private mLastReloadError:Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

.field private mLastReloadTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "deviceCredentialTZ"    # Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mForceReloadSuccess:Z

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mLastReloadError:Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 126
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mLastReloadTime:J

    .line 26
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mDeviceCredentialTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    .line 25
    return-void
.end method

.method private performReloadLocked()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mLastReloadError:Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    if-eqz v13, :cond_1

    .line 62
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mLastReloadError:Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    iget v13, v13, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;->errorCode:I

    const/16 v14, -0x6b

    if-eq v13, v14, :cond_0

    .line 63
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mLastReloadError:Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    iget v13, v13, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;->errorCode:I

    const/16 v14, -0x6a

    if-ne v13, v14, :cond_1

    .line 64
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 65
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mLastReloadTime:J

    cmp-long v13, v14, v10

    if-gez v13, :cond_1

    .line 66
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mLastReloadTime:J

    sub-long v14, v10, v14

    const-wide/32 v16, 0x493e0

    cmp-long v13, v14, v16

    if-gez v13, :cond_1

    .line 67
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mLastReloadError:Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    throw v13

    .line 71
    .end local v10    # "now":J
    :cond_1
    const/4 v9, 0x0

    .line 74
    .local v9, "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mDeviceCredentialTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/finddevice/common/SDKMTServiceKeyProvider;->get()Lcom/xiaomi/finddevice/common/SDKMTServiceKeyProvider;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v14, v0, v15}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->provision(Landroid/content/Context;ZLcom/xiaomi/finddevice/common/IMTServiceKeyProvider;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 75
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const-string/jumbo v14, "No available key on server. "

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v13}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 76
    new-instance v12, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 77
    const/16 v13, -0x6a

    .line 76
    invoke-direct {v12, v13}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    .end local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .local v12, "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :try_start_1
    throw v12
    :try_end_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :catch_0
    move-exception v2

    .local v2, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    move-object v9, v12

    .line 82
    .end local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :goto_0
    const/4 v13, 0x1

    :try_start_2
    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-static {v13}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 83
    new-instance v12, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 84
    const/16 v13, -0x65

    .line 83
    invoke-direct {v12, v13}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    .restart local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :try_start_3
    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    .end local v2    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catchall_0
    move-exception v13

    move-object v9, v12

    .line 117
    .end local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :goto_1
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mLastReloadError:Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mLastReloadTime:J

    .line 116
    throw v13

    .line 80
    .restart local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :cond_2
    const/4 v13, 0x0

    .line 117
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mLastReloadError:Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mLastReloadTime:J

    .line 59
    return-void

    .line 111
    :catch_1
    move-exception v7

    .line 112
    .end local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .local v7, "e":Ljava/io/IOException;
    :goto_2
    const/4 v13, 0x1

    :try_start_4
    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    invoke-static {v13}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 113
    new-instance v12, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 114
    const/16 v13, -0x69

    .line 113
    invoke-direct {v12, v13}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    .restart local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :try_start_5
    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 106
    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .restart local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :catch_2
    move-exception v4

    .line 107
    .end local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :goto_3
    const/4 v13, 0x1

    :try_start_6
    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    invoke-static {v13}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 108
    new-instance v12, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 109
    const/16 v13, -0x6b

    .line 108
    invoke-direct {v12, v13}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 110
    .restart local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :try_start_7
    throw v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 101
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    .end local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .restart local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :catch_3
    move-exception v6

    .line 102
    .end local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .local v6, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :goto_4
    const/4 v13, 0x1

    :try_start_8
    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-static {v13}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 103
    new-instance v12, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 104
    const/16 v13, -0x6b

    .line 103
    invoke-direct {v12, v13}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 105
    .restart local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :try_start_9
    throw v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 96
    .end local v6    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    .end local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .restart local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :catch_4
    move-exception v5

    .line 97
    .end local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :goto_5
    const/4 v13, 0x1

    :try_start_a
    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    invoke-static {v13}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 98
    new-instance v12, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 99
    const/16 v13, -0x6b

    .line 98
    invoke-direct {v12, v13}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 100
    .restart local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :try_start_b
    throw v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 91
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    .end local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .restart local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :catch_5
    move-exception v3

    .line 92
    .end local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .local v3, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :goto_6
    const/4 v13, 0x1

    :try_start_c
    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-static {v13}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 93
    new-instance v12, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 94
    const/16 v13, -0x6b

    .line 93
    invoke-direct {v12, v13}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 95
    .restart local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :try_start_d
    throw v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 86
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    .end local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .restart local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :catch_6
    move-exception v8

    .line 87
    .end local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .local v8, "e":Ljava/lang/InterruptedException;
    :goto_7
    const/4 v13, 0x1

    :try_start_e
    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    invoke-static {v13}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 88
    new-instance v12, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 89
    const/16 v13, -0x6b

    .line 88
    invoke-direct {v12, v13}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 90
    .restart local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :try_start_f
    throw v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 116
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :catchall_1
    move-exception v13

    goto/16 :goto_1

    .line 81
    .restart local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    goto/16 :goto_0

    .line 86
    .end local v2    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    .end local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .restart local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :catch_8
    move-exception v8

    .restart local v8    # "e":Ljava/lang/InterruptedException;
    move-object v9, v12

    .end local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .local v9, "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    goto :goto_7

    .line 91
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .restart local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :catch_9
    move-exception v3

    .restart local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    move-object v9, v12

    .end local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .restart local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    goto :goto_6

    .line 96
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    .end local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .restart local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :catch_a
    move-exception v5

    .restart local v5    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    move-object v9, v12

    .end local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .restart local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    goto :goto_5

    .line 101
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    .end local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .restart local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :catch_b
    move-exception v6

    .restart local v6    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    move-object v9, v12

    .end local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .restart local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    goto :goto_4

    .line 106
    .end local v6    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    .end local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .restart local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :catch_c
    move-exception v4

    .restart local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    move-object v9, v12

    .end local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .restart local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    goto :goto_3

    .line 111
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    .end local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .restart local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    :catch_d
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v9, v12

    .end local v12    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    .restart local v9    # "reloadError":Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    goto/16 :goto_2
.end method


# virtual methods
.method public declared-synchronized handleForceReload()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mDeviceCredentialTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->isProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-boolean v1, p0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mForceReloadSuccess:Z

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 48
    const/16 v2, -0x6c

    .line 47
    invoke-direct {v1, v2}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :try_start_1
    new-instance v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 55
    const/16 v2, -0x65

    .line 54
    invoke-direct {v1, v2}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 51
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->performReloadLocked()V

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mForceReloadSuccess:Z
    :try_end_2
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 43
    return-void
.end method

.method public declared-synchronized handleReload()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->mDeviceCredentialTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->isProvisioned()Z
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 34
    return-void

    .line 36
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/devicecredential/ReloadPolicy;->performReloadLocked()V
    :try_end_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 30
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :try_start_2
    new-instance v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    .line 39
    const/16 v2, -0x65

    .line 38
    invoke-direct {v1, v2}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
