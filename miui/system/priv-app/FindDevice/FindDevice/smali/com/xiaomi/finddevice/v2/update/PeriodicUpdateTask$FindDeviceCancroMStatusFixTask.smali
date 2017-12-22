.class Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceCancroMStatusFixTask;
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
    name = "FindDeviceCancroMStatusFixTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceCancroMStatusFixTask;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceCancroMStatusFixTask;-><init>()V

    return-void
.end method

.method private static clearStatusOldVersion(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 414
    const-string/jumbo v1, "miui.cloud.finddevice"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 415
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "miui.cloud.status"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 412
    return-void
.end method

.method private doFindDeviceCancroMStatusFixTask(Landroid/content/Context;)V
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 343
    sget-boolean v10, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v10, :cond_0

    .line 344
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "Stable version. No need to doFindDeviceCancroMStatusFixTask"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 345
    return-void

    .line 348
    :cond_0
    sget-object v10, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "device":Ljava/lang/String;
    const-string/jumbo v10, "virgo"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string/jumbo v10, "cancro"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 354
    :cond_1
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceCancroMStatusFixTask;->getStatusOldVersion(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    move-result-object v9

    .line 355
    .local v9, "statusOld":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    if-nez v9, :cond_3

    .line 356
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "No old status. IGNORE. "

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 357
    return-void

    .line 350
    .end local v9    # "statusOld":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :cond_2
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "No need to doFindDeviceCancroMStatusFixTask. "

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 351
    return-void

    .line 360
    .restart local v9    # "statusOld":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :cond_3
    invoke-interface {v9}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->isOpen()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 362
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->open(Landroid/content/Context;Z)V
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_4
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceCancroMStatusFixTask;->clearStatusOldVersion(Landroid/content/Context;)V

    .line 341
    return-void

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "Open failed. "

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 386
    throw v1

    .line 381
    .end local v1    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catch_1
    move-exception v7

    .line 382
    .local v7, "e":Ljava/io/IOException;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "Open failed. "

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v7, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 383
    throw v7

    .line 378
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 379
    .local v3, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "Open failed. "

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 380
    throw v3

    .line 375
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_3
    move-exception v2

    .line 376
    .local v2, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "Open failed. "

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v2, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 377
    return-void

    .line 372
    .end local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_4
    move-exception v4

    .line 373
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "Open failed. "

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 374
    throw v4

    .line 369
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_5
    move-exception v5

    .line 370
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "Open failed. "

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 371
    return-void

    .line 366
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_6
    move-exception v8

    .line 367
    .local v8, "e":Ljava/lang/InterruptedException;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "Open failed. "

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 368
    return-void

    .line 363
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catch_7
    move-exception v6

    .line 364
    .local v6, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "Open failed. "

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 365
    throw v6
.end method

.method private static getStatusOldVersion(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 397
    const-string/jumbo v2, "miui.cloud.finddevice"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 399
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "miui.cloud.status"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 400
    return-object v6

    .line 404
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string/jumbo v3, "miui.cloud.status"

    const-string/jumbo v4, "BAD JSON"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-static {v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 405
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Lorg/json/JSONException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Bad JSON string in the shared preference. "

    aput-object v3, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 408
    return-object v6
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

    .line 323
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "called"

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 326
    const-string/jumbo v1, "device_provisioned"

    .line 325
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$ProvisionInProcessException;

    .line 328
    const-string/jumbo v1, "PROVISION in process. Do NOT update. "

    .line 327
    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$ProvisionInProcessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceCancroMStatusFixTask;->doFindDeviceCancroMStatusFixTask(Landroid/content/Context;)V

    .line 321
    return-void
.end method
