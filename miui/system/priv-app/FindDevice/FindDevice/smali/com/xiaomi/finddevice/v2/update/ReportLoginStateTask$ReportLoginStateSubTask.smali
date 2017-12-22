.class Lcom/xiaomi/finddevice/v2/update/ReportLoginStateTask$ReportLoginStateSubTask;
.super Ljava/lang/Object;
.source "ReportLoginStateTask.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/update/ReportLoginStateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportLoginStateSubTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/update/ReportLoginStateTask$ReportLoginStateSubTask;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/update/ReportLoginStateTask$ReportLoginStateSubTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;)V
    .locals 13
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
    .line 36
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;

    move-result-object v9

    .line 38
    .local v9, "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/finddevice/common/util/AccountHelper;->hasXiaomiAccountLogined(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 39
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->reportLogin()V

    .line 43
    :goto_0
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "SUCCESS"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 34
    :goto_1
    return-void

    .line 41
    :cond_0
    :try_start_1
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->reportLogout()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v8

    .line 45
    .local v8, "e":Ljava/lang/InterruptedException;
    const/4 v10, 0x1

    :try_start_2
    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto :goto_1

    .line 64
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v5

    .line 65
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    const/4 v10, 0x1

    :try_start_3
    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto :goto_1

    .line 61
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    :catch_2
    move-exception v0

    .line 62
    .local v0, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    const/4 v10, 0x1

    :try_start_4
    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 63
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    .end local v0    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catchall_0
    move-exception v10

    .line 70
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 69
    throw v10

    .line 58
    :catch_3
    move-exception v7

    .line 59
    .local v7, "e":Ljava/io/IOException;
    const/4 v10, 0x1

    :try_start_5
    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 60
    throw v7

    .line 55
    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 56
    .local v3, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 57
    throw v3

    .line 52
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_5
    move-exception v2

    .line 53
    .local v2, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 54
    throw v2

    .line 50
    .end local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_6
    move-exception v6

    .line 51
    .local v6, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 70
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto :goto_1

    .line 48
    .end local v6    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    :catch_7
    move-exception v4

    .line 49
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    const/4 v10, 0x1

    :try_start_6
    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 70
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto :goto_1

    .line 46
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_8
    move-exception v1

    .line 47
    .local v1, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    const/4 v10, 0x1

    :try_start_7
    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 70
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto :goto_1
.end method
