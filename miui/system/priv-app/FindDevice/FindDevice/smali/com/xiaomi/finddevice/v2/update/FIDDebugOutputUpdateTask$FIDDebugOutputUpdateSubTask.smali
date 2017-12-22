.class Lcom/xiaomi/finddevice/v2/update/FIDDebugOutputUpdateTask$FIDDebugOutputUpdateSubTask;
.super Ljava/lang/Object;
.source "FIDDebugOutputUpdateTask.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/update/FIDDebugOutputUpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FIDDebugOutputUpdateSubTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/update/FIDDebugOutputUpdateTask$FIDDebugOutputUpdateSubTask;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/update/FIDDebugOutputUpdateTask$FIDDebugOutputUpdateSubTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;)V
    .locals 17
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$ProvisionInProcessException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 41
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/finddevice/v2/DeviceTypeBasedFactory;->getDeviceCredentialManager(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    move-result-object v1

    .line 42
    .local v1, "deviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    if-nez v1, :cond_0

    const-string/jumbo v11, "N/A"

    .line 43
    .local v11, "fid":Ljava/lang/String;
    :goto_0
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const-string/jumbo v15, "Succeed to get fid. "

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v11, v14, v15

    invoke-static {v14}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 46
    .local v10, "external":Ljava/io/File;
    if-nez v10, :cond_1

    .line 47
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const-string/jumbo v15, "NULL external storage. "

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v14}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 48
    return-void

    .line 42
    .end local v10    # "external":Ljava/io/File;
    .end local v11    # "fid":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/IDeviceCredential;->getFId()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "fid":Ljava/lang/String;
    goto :goto_0

    .line 51
    .restart local v10    # "external":Ljava/io/File;
    :cond_1
    new-instance v12, Ljava/io/File;

    const-string/jumbo v14, "did"

    invoke-direct {v12, v10, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 53
    .local v12, "fidPath":Ljava/io/File;
    :try_start_1
    new-instance v13, Ljava/io/PrintWriter;

    invoke-direct {v13, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 54
    .local v13, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v13, v11}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v13}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 37
    .end local v1    # "deviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .end local v10    # "external":Ljava/io/File;
    .end local v11    # "fid":Ljava/lang/String;
    .end local v12    # "fidPath":Ljava/io/File;
    .end local v13    # "pw":Ljava/io/PrintWriter;
    :goto_1
    return-void

    .line 57
    .restart local v1    # "deviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .restart local v10    # "external":Ljava/io/File;
    .restart local v11    # "fid":Ljava/lang/String;
    .restart local v12    # "fidPath":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 58
    .local v7, "e":Ljava/io/FileNotFoundException;
    const/4 v14, 0x3

    :try_start_2
    new-array v14, v14, [Ljava/lang/Object;

    const-string/jumbo v15, "Cannot write: "

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    const/4 v15, 0x2

    aput-object v7, v14, v15

    invoke-static {v14}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 60
    .end local v1    # "deviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "external":Ljava/io/File;
    .end local v11    # "fid":Ljava/lang/String;
    .end local v12    # "fidPath":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 61
    .local v2, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const-string/jumbo v15, "Failed to get FID"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v2, v14, v15

    invoke-static {v14}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 62
    throw v2

    .line 75
    .end local v2    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catch_2
    move-exception v8

    .line 76
    .local v8, "e":Ljava/io/IOException;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const-string/jumbo v15, "Failed to get FID"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v8, v14, v15

    invoke-static {v14}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 77
    throw v8

    .line 72
    .end local v8    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 73
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const-string/jumbo v15, "Failed to get FID"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v4, v14, v15

    invoke-static {v14}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 74
    throw v4

    .line 70
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_4
    move-exception v3

    .line 71
    .local v3, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const-string/jumbo v15, "Failed to get FID"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v3, v14, v15

    invoke-static {v14}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_1

    .line 67
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_5
    move-exception v5

    .line 68
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const-string/jumbo v15, "Failed to get FID"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v5, v14, v15

    invoke-static {v14}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 69
    throw v5

    .line 65
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_6
    move-exception v6

    .line 66
    .local v6, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const-string/jumbo v15, "Failed to get FID"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v6, v14, v15

    invoke-static {v14}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 63
    .end local v6    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_7
    move-exception v9

    .line 64
    .local v9, "e":Ljava/lang/InterruptedException;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const-string/jumbo v15, "Failed to get FID"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v9, v14, v15

    invoke-static {v14}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
