.class Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$DeviceCredentialUpdateSubTask;
.super Ljava/lang/Object;
.source "PeriodicUpdateTask.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceCredentialUpdateSubTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$DeviceCredentialUpdateSubTask;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$DeviceCredentialUpdateSubTask;-><init>()V

    return-void
.end method

.method private doDeviceCredentialUpdate(Landroid/content/Context;)V
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 102
    new-array v8, v11, [Ljava/lang/Object;

    const-string/jumbo v9, "called."

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 104
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->updateDeviceCredential(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v0, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 125
    throw v0

    .line 120
    .end local v0    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catch_1
    move-exception v6

    .line 121
    .local v6, "e":Ljava/io/IOException;
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 122
    throw v6

    .line 117
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 118
    .local v2, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 119
    throw v2

    .line 114
    .end local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_3
    move-exception v5

    .line 115
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 116
    throw v5

    .line 112
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    :catch_4
    move-exception v4

    .line 113
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_5
    move-exception v3

    .line 110
    .local v3, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 111
    throw v3

    .line 107
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_6
    move-exception v1

    .line 108
    .local v1, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    .end local v1    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_7
    move-exception v7

    .line 106
    .local v7, "e":Ljava/lang/InterruptedException;
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v7, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public run(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$ProvisionInProcessException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "called"

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    const-string/jumbo v1, "device_provisioned"

    .line 88
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$ProvisionInProcessException;

    .line 91
    const-string/jumbo v1, "PROVISION in process. Do NOT update. "

    .line 90
    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$ProvisionInProcessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$DeviceCredentialUpdateSubTask;->doDeviceCredentialUpdate(Landroid/content/Context;)V

    .line 84
    return-void
.end method
