.class Lcom/xiaomi/finddevice/v2/update/RegIdUpdateTask$UploadRegIdIfFindDeviceOpenSubTask;
.super Ljava/lang/Object;
.source "RegIdUpdateTask.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/update/RegIdUpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadRegIdIfFindDeviceOpenSubTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/update/RegIdUpdateTask$UploadRegIdIfFindDeviceOpenSubTask;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/update/RegIdUpdateTask$UploadRegIdIfFindDeviceOpenSubTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;)V
    .locals 12
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
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 36
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpen()Z

    move-result v9

    if-nez v9, :cond_0

    .line 37
    new-array v9, v10, [Ljava/lang/Object;

    const-string/jumbo v10, "Find device not opened. "

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 38
    return-void

    .line 41
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;

    move-result-object v8

    .line 43
    .local v8, "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_start_0
    invoke-static {}, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->get()Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->getRegId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->reportRegId(Ljava/lang/String;)V

    .line 44
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Succeed to upload RegId. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {v8}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 35
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    const/4 v9, 0x2

    :try_start_1
    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Uploading failed. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v0, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 64
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .end local v0    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catchall_0
    move-exception v9

    .line 66
    invoke-virtual {v8}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 65
    throw v9

    .line 59
    :catch_1
    move-exception v6

    .line 60
    .local v6, "e":Ljava/io/IOException;
    const/4 v9, 0x2

    :try_start_2
    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Uploading failed. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 61
    throw v6

    .line 56
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 57
    .local v2, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Uploading failed. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 58
    throw v2

    .line 54
    .end local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_3
    move-exception v5

    .line 55
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Uploading failed. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    invoke-virtual {v8}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto :goto_0

    .line 52
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    :catch_4
    move-exception v7

    .line 53
    .local v7, "e":Ljava/lang/InterruptedException;
    const/4 v9, 0x2

    :try_start_3
    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Uploading failed. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    invoke-virtual {v8}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto :goto_0

    .line 50
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v1

    .line 51
    .local v1, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    const/4 v9, 0x2

    :try_start_4
    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Uploading failed. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    invoke-virtual {v8}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto :goto_0

    .line 47
    .end local v1    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_6
    move-exception v3

    .line 48
    .local v3, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    const/4 v9, 0x2

    :try_start_5
    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Uploading failed. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 49
    throw v3

    .line 45
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_7
    move-exception v4

    .line 46
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Uploading failed. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 66
    invoke-virtual {v8}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto/16 :goto_0
.end method
