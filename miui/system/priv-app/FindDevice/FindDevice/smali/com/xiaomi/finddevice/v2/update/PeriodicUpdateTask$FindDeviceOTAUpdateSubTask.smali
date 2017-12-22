.class Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;
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
    name = "FindDeviceOTAUpdateSubTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;-><init>()V

    return-void
.end method

.method private checkOTAOpenDoneMark(Landroid/content/Context;)Z
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 304
    const-string/jumbo v1, "status_update_service"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 305
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "ota_open_done"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private doFindDevciceOTAUpdate(Landroid/content/Context;)V
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {p1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 211
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 212
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "No account here. Do NOT need OTA update. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 213
    return-void

    .line 216
    :cond_0
    invoke-static {p1, v0}, Lmiui/cloud/CloudSyncUtils;->isFindDeviceEnabled(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 217
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Old finddevice is not open. Do NOT need OTA update. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 218
    return-void

    .line 221
    :cond_1
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Need OTA update. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 224
    const/4 v9, 0x1

    :try_start_0
    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Open V2 finddevice. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 225
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;->checkOTAOpenDoneMark(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 226
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "OTA open has been done in the past, skip. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    :goto_0
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Close finddevice V1. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 258
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;->turnOffV1FindDevice(Landroid/accounts/Account;Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 259
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Failed to close finddevice V1. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 208
    :goto_1
    return-void

    .line 228
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->open(Landroid/content/Context;Z)V

    .line 229
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;->markOTAOpenDone(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v6

    .line 232
    .local v6, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Failed to open finddevice V2. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 233
    throw v6

    .line 252
    .end local v6    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    :catch_1
    move-exception v1

    .line 253
    .local v1, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Failed to open finddevice V2. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 254
    throw v1

    .line 249
    .end local v1    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catch_2
    move-exception v7

    .line 250
    .local v7, "e":Ljava/io/IOException;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Failed to open finddevice V2. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 251
    throw v7

    .line 246
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 247
    .local v3, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Failed to open finddevice V2. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 248
    throw v3

    .line 243
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_4
    move-exception v2

    .line 244
    .local v2, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Failed to open finddevice V2. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 245
    return-void

    .line 240
    .end local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_5
    move-exception v4

    .line 241
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Failed to open finddevice V2. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 242
    throw v4

    .line 237
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_6
    move-exception v5

    .line 238
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Failed to open finddevice V2. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 239
    return-void

    .line 234
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_7
    move-exception v8

    .line 235
    .local v8, "e":Ljava/lang/InterruptedException;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Failed to open finddevice V2. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 236
    return-void

    .line 261
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Succeed to close finddevice V1. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private markOTAOpenDone(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 295
    const-string/jumbo v2, "status_update_service"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 297
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 298
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "ota_open_done"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 299
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 293
    return-void
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

    .line 193
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "called"

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 196
    const-string/jumbo v1, "device_provisioned"

    .line 195
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$ProvisionInProcessException;

    .line 198
    const-string/jumbo v1, "PROVISION in process. Do NOT update. "

    .line 197
    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$ProvisionInProcessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;->doFindDevciceOTAUpdate(Landroid/content/Context;)V

    .line 191
    return-void
.end method

.method public turnOffV1FindDevice(Landroid/accounts/Account;Landroid/content/Context;)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 266
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 268
    .local v5, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v9, "com.xiaomi.action.ENABLE_FIND_DEVICE_COMPLETED"

    invoke-direct {v3, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 269
    .local v3, "filter":Landroid/content/IntentFilter;
    new-instance v6, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask$1;

    invoke-direct {v6, p0, v5}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask$1;-><init>(Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;Ljava/util/concurrent/CountDownLatch;)V

    .line 275
    .local v6, "receiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {p2, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "com.xiaomi.action.DISABLE_FIND_DEVICE"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "account"

    invoke-virtual {v4, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    const-string/jumbo v9, "com.miui.cloudservice"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p2, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    const-wide/16 v0, 0x1e

    .line 283
    .local v0, "TIMEOUT_IN_SECONDS":J
    :try_start_1
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1e

    invoke-virtual {v5, v10, v11, v9}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 284
    invoke-static {p2, p1}, Lmiui/cloud/CloudSyncUtils;->isFindDeviceEnabled(Landroid/content/Context;Landroid/accounts/Account;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_0

    .line 289
    :goto_0
    invoke-virtual {p2, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    return v7

    :cond_0
    move v7, v8

    goto :goto_0

    .line 285
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p2, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 286
    return v7

    .line 288
    .end local v0    # "TIMEOUT_IN_SECONDS":J
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v7

    .line 289
    invoke-virtual {p2, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    throw v7
.end method
