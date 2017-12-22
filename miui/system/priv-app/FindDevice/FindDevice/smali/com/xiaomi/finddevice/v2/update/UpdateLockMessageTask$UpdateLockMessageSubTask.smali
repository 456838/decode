.class Lcom/xiaomi/finddevice/v2/update/UpdateLockMessageTask$UpdateLockMessageSubTask;
.super Ljava/lang/Object;
.source "UpdateLockMessageTask.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/update/UpdateLockMessageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateLockMessageSubTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/update/UpdateLockMessageTask$UpdateLockMessageSubTask;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/update/UpdateLockMessageTask$UpdateLockMessageSubTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;)V
    .locals 14
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
    .line 37
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;

    move-result-object v10

    .line 39
    .local v10, "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_start_0
    invoke-virtual {v10}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->lockMessage()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;

    move-result-object v9

    .line 40
    .local v9, "message":Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v8, "extra":Landroid/os/Bundle;
    const-string/jumbo v11, "notify_extra_key_update_message_content"

    .line 42
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;->toJSON()Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    .line 41
    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v11, 0x2

    .line 43
    invoke-static {p1, v11, v8}, Lmiui/cloud/finddevice/FindDeviceKeyguardController;->notify(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {v10}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 35
    .end local v8    # "extra":Landroid/os/Bundle;
    .end local v9    # "message":Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v6

    .line 63
    .local v6, "e":Ljava/io/IOException;
    const/4 v11, 0x2

    :try_start_1
    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "Failed to get the lock message. "

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v6, v11, v12

    invoke-static {v11}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 64
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 66
    invoke-virtual {v10}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 65
    throw v11

    .line 59
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    const/4 v11, 0x2

    :try_start_2
    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "Failed to get the lock message. "

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v0, v11, v12

    invoke-static {v11}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 61
    throw v0

    .line 57
    .end local v0    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catch_2
    move-exception v5

    .line 58
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "Failed to get the lock message. "

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v5, v11, v12

    invoke-static {v11}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    invoke-virtual {v10}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto :goto_0

    .line 54
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    :catch_3
    move-exception v2

    .line 55
    .local v2, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    const/4 v11, 0x2

    :try_start_3
    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "Failed to get the lock message. "

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v2, v11, v12

    invoke-static {v11}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 56
    throw v2

    .line 52
    .end local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_4
    move-exception v4

    .line 53
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "Failed to get the lock message. "

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-static {v11}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    invoke-virtual {v10}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto :goto_0

    .line 49
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_5
    move-exception v3

    .line 50
    .local v3, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    const/4 v11, 0x2

    :try_start_4
    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "Failed to get the lock message. "

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-static {v11}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 51
    throw v3

    .line 47
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_6
    move-exception v1

    .line 48
    .local v1, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "Failed to get the lock message. "

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v1, v11, v12

    invoke-static {v11}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    invoke-virtual {v10}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto/16 :goto_0

    .line 45
    .end local v1    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_7
    move-exception v7

    .line 46
    .local v7, "e":Ljava/lang/InterruptedException;
    const/4 v11, 0x2

    :try_start_5
    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "Failed to get the lock message. "

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v7, v11, v12

    invoke-static {v11}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 66
    invoke-virtual {v10}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto/16 :goto_0
.end method
