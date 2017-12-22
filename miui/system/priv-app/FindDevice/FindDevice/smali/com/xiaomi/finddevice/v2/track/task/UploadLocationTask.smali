.class public Lcom/xiaomi/finddevice/v2/track/task/UploadLocationTask;
.super Ljava/lang/Object;
.source "UploadLocationTask.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;


# static fields
.field private static singleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->buildSingleTaskController()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    move-result-object v0

    .line 27
    sput-object v0, Lcom/xiaomi/finddevice/v2/track/task/UploadLocationTask;->singleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private batchUploadByNetwork(Landroid/content/Context;[Lcom/xiaomi/finddevice/v2/track/LocationRecord;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "records"    # [Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 115
    const/16 v0, 0x32

    .line 117
    .local v0, "MAX_UPLOAD_ITEM_NUM":I
    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "Unselected"

    aput-object v5, v4, v6

    array-length v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 118
    const/16 v4, 0x32

    invoke-static {p2, v4}, Lcom/xiaomi/finddevice/v2/track/task/UploadLocationTask;->selectUploadItems([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "records":[Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    check-cast p2, [Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    .line 119
    .restart local p2    # "records":[Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "Selected"

    aput-object v5, v4, v6

    array-length v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 122
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;

    move-result-object v3

    .line 125
    .local v3, "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_start_0
    array-length v4, p2

    new-array v1, v4, [Lorg/json/JSONObject;

    .line 126
    .local v1, "dataToUpload":[Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 127
    aget-object v4, p2, v2

    invoke-virtual {v4}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getEncodedJSON()Lorg/json/JSONObject;

    move-result-object v4

    aput-object v4, v1, v2

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v3, v1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->sendCommandExecInfoBatch([Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 113
    return-void

    .line 131
    .end local v1    # "dataToUpload":[Lorg/json/JSONObject;
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    .line 132
    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 131
    throw v4
.end method

.method public static build()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/xiaomi/finddevice/v2/track/task/UploadLocationTask;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/track/task/UploadLocationTask;-><init>()V

    sget-object v1, Lcom/xiaomi/finddevice/v2/track/task/UploadLocationTask;->singleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    return-object v0
.end method

.method private static selectUploadItems([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 9
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v8, 0x0

    .line 154
    if-gez p1, :cond_0

    .line 155
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "maxNum < 0"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 158
    :cond_0
    array-length v7, p0

    sub-int v2, v7, p1

    .line 159
    .local v2, "diff":I
    if-gtz v2, :cond_1

    .line 160
    return-object p0

    .line 163
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 164
    .local v5, "selected":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_2

    .line 165
    return-object v5

    .line 168
    :cond_2
    const/4 v7, 0x1

    if-ne p1, v7, :cond_3

    .line 169
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget-object v7, p0, v7

    aput-object v7, v5, v8

    .line 170
    return-object v5

    .line 173
    :cond_3
    add-int/lit8 v7, p1, -0x1

    div-int v6, v2, v7

    .line 174
    .local v6, "step":I
    add-int/lit8 v7, p1, -0x1

    rem-int v3, v2, v7

    .line 176
    .local v3, "extra":I
    const/4 v0, 0x0

    .line 177
    .local v0, "c":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, p0

    if-ge v4, v7, :cond_5

    .line 178
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .local v1, "c":I
    aget-object v7, p0, v4

    aput-object v7, v5, v0

    .line 179
    add-int/lit8 v4, v4, 0x1

    .line 180
    add-int/2addr v4, v6

    .line 181
    if-eqz v3, :cond_4

    .line 182
    add-int/lit8 v4, v4, 0x1

    .line 183
    add-int/lit8 v3, v3, -0x1

    :cond_4
    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_0

    .line 187
    :cond_5
    return-object v5
.end method

.method private static trySendSMSBySlot(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 192
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Slot: %d. "

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 194
    invoke-static {p0, p1}, Lmiui/telephony/CloudTelephonyManager;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "op":Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Operator: %s. "

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 196
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Empty op. "

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 198
    return v6

    .line 201
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/track/TrackManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->getSMSGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "gateway":Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Gateway: %s. "

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Empty gateway. "

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 205
    return v6

    .line 208
    :cond_1
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Send SMS. "

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 210
    invoke-static {p1, p2, v0}, Lcom/xiaomi/finddevice/adapter/SmsManagerAdapter;->sendSmsBySlot(ILjava/lang/String;Ljava/lang/String;)V

    .line 211
    return v7
.end method

.method private uploadBySMS(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 138
    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 140
    invoke-static {}, Lmiui/telephony/CloudTelephonyManager;->getMultiSimCount()I

    move-result v1

    .line 142
    .local v1, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 143
    invoke-static {p1, v0, p2}, Lcom/xiaomi/finddevice/v2/track/task/UploadLocationTask;->trySendSMSBySlot(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Sent. "

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 136
    :cond_0
    return-void

    .line 147
    :cond_1
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Slot %d failed. "

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public run(Landroid/content/Context;)V
    .locals 21
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
    .line 39
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/track/TrackManager;

    move-result-object v14

    .line 41
    .local v14, "trackManager":Lcom/xiaomi/finddevice/v2/track/TrackManager;
    invoke-virtual {v14}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->getRecords()[Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    move-result-object v11

    .line 42
    .local v11, "locationRecords":[Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    if-nez v11, :cond_0

    .line 43
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const-string/jumbo v16, "getRecords: session ends. "

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v15}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 44
    return-void

    .line 47
    :cond_0
    array-length v15, v11

    if-nez v15, :cond_1

    .line 48
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const-string/jumbo v16, "getRecords: empty location record list. "

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v15}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 49
    return-void

    .line 54
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/xiaomi/finddevice/v2/track/task/UploadLocationTask;->batchUploadByNetwork(Landroid/content/Context;[Lcom/xiaomi/finddevice/v2/track/LocationRecord;)V

    .line 56
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v11}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->removeRecords(Landroid/content/Context;[Lcom/xiaomi/finddevice/v2/track/LocationRecord;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 57
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const-string/jumbo v16, "removeRecords: session ends. "

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v15}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 59
    :cond_2
    const/4 v11, 0x0

    .line 61
    .local v11, "locationRecords":[Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const-string/jumbo v16, "Succeed. "

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v15}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .end local v11    # "locationRecords":[Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    :cond_3
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v3

    .line 81
    .local v3, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    const/4 v15, 0x1

    :try_start_1
    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    invoke-static {v15}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 82
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .end local v3    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catchall_0
    move-exception v15

    .line 85
    if-eqz v11, :cond_13

    .line 86
    const/16 v16, 0x0

    array-length v0, v11

    move/from16 v17, v0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_13

    aget-object v13, v11, v16

    .line 87
    .local v13, "r":Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    invoke-virtual {v13}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getFlags()I

    move-result v18

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_10

    .line 86
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 77
    .end local v13    # "r":Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    :catch_1
    move-exception v9

    .line 78
    .local v9, "e":Ljava/io/IOException;
    const/4 v15, 0x1

    :try_start_2
    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    invoke-static {v15}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 79
    throw v9

    .line 74
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 75
    .local v6, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    invoke-static {v15}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 76
    throw v6

    .line 71
    .end local v6    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_3
    move-exception v5

    .line 72
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    invoke-static {v15}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 73
    throw v5

    .line 69
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_4
    move-exception v8

    .line 70
    .local v8, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    invoke-static {v15}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    if-eqz v11, :cond_3

    .line 86
    const/4 v15, 0x0

    array-length v0, v11

    move/from16 v16, v0

    :goto_3
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    aget-object v13, v11, v15

    .line 87
    .restart local v13    # "r":Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    invoke-virtual {v13}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getFlags()I

    move-result v17

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_4

    .line 86
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 91
    :cond_4
    invoke-virtual {v13}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->toBuilder()Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    move-result-object v12

    .line 92
    .local v12, "nr":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    iget v0, v12, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x2

    move/from16 v0, v17

    iput v0, v12, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->flags:I

    .line 93
    invoke-virtual {v12}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->build()Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v13, v1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->replaceRecord(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/track/LocationRecord;Lcom/xiaomi/finddevice/v2/track/LocationRecord;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 94
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->applySMSTicket(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 95
    invoke-virtual {v13}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getEncodedBinary()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/track/task/UploadLocationTask;->uploadBySMS(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 97
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Failed to apply a SMS ticket. "

    const/16 v19, 0x0

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_4

    .line 100
    :cond_6
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const-string/jumbo v16, "session ends"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v15}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 67
    .end local v8    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    .end local v12    # "nr":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    .end local v13    # "r":Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    :catch_5
    move-exception v7

    .line 68
    .local v7, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    const/4 v15, 0x1

    :try_start_3
    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    invoke-static {v15}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    if-eqz v11, :cond_3

    .line 86
    const/4 v15, 0x0

    array-length v0, v11

    move/from16 v16, v0

    :goto_5
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    aget-object v13, v11, v15

    .line 87
    .restart local v13    # "r":Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    invoke-virtual {v13}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getFlags()I

    move-result v17

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_7

    .line 86
    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 91
    :cond_7
    invoke-virtual {v13}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->toBuilder()Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    move-result-object v12

    .line 92
    .restart local v12    # "nr":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    iget v0, v12, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x2

    move/from16 v0, v17

    iput v0, v12, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->flags:I

    .line 93
    invoke-virtual {v12}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->build()Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v13, v1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->replaceRecord(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/track/LocationRecord;Lcom/xiaomi/finddevice/v2/track/LocationRecord;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 94
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->applySMSTicket(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 95
    invoke-virtual {v13}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getEncodedBinary()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/track/task/UploadLocationTask;->uploadBySMS(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 97
    :cond_8
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Failed to apply a SMS ticket. "

    const/16 v19, 0x0

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_6

    .line 100
    :cond_9
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const-string/jumbo v16, "session ends"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v15}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 65
    .end local v7    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    .end local v12    # "nr":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    .end local v13    # "r":Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    :catch_6
    move-exception v4

    .line 66
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    const/4 v15, 0x1

    :try_start_4
    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v15}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    if-eqz v11, :cond_3

    .line 86
    const/4 v15, 0x0

    array-length v0, v11

    move/from16 v16, v0

    :goto_7
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    aget-object v13, v11, v15

    .line 87
    .restart local v13    # "r":Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    invoke-virtual {v13}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getFlags()I

    move-result v17

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_a

    .line 86
    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 91
    :cond_a
    invoke-virtual {v13}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->toBuilder()Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    move-result-object v12

    .line 92
    .restart local v12    # "nr":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    iget v0, v12, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x2

    move/from16 v0, v17

    iput v0, v12, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->flags:I

    .line 93
    invoke-virtual {v12}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->build()Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v13, v1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->replaceRecord(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/track/LocationRecord;Lcom/xiaomi/finddevice/v2/track/LocationRecord;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 94
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->applySMSTicket(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 95
    invoke-virtual {v13}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getEncodedBinary()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/track/task/UploadLocationTask;->uploadBySMS(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    .line 97
    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Failed to apply a SMS ticket. "

    const/16 v19, 0x0

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_8

    .line 100
    :cond_c
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const-string/jumbo v16, "session ends"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v15}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 63
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    .end local v12    # "nr":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    .end local v13    # "r":Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    :catch_7
    move-exception v10

    .line 64
    .local v10, "e":Ljava/lang/InterruptedException;
    const/4 v15, 0x1

    :try_start_5
    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    invoke-static {v15}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 85
    if-eqz v11, :cond_3

    .line 86
    const/4 v15, 0x0

    array-length v0, v11

    move/from16 v16, v0

    :goto_9
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    aget-object v13, v11, v15

    .line 87
    .restart local v13    # "r":Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    invoke-virtual {v13}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getFlags()I

    move-result v17

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_d

    .line 86
    :goto_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 91
    :cond_d
    invoke-virtual {v13}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->toBuilder()Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    move-result-object v12

    .line 92
    .restart local v12    # "nr":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    iget v0, v12, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x2

    move/from16 v0, v17

    iput v0, v12, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->flags:I

    .line 93
    invoke-virtual {v12}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->build()Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v13, v1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->replaceRecord(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/track/LocationRecord;Lcom/xiaomi/finddevice/v2/track/LocationRecord;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 94
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->applySMSTicket(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 95
    invoke-virtual {v13}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getEncodedBinary()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/track/task/UploadLocationTask;->uploadBySMS(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    .line 97
    :cond_e
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Failed to apply a SMS ticket. "

    const/16 v19, 0x0

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_a

    .line 100
    :cond_f
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const-string/jumbo v16, "session ends"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v15}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 91
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "nr":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    :cond_10
    invoke-virtual {v13}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->toBuilder()Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    move-result-object v12

    .line 92
    .restart local v12    # "nr":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    iget v0, v12, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x2

    move/from16 v0, v18

    iput v0, v12, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->flags:I

    .line 93
    invoke-virtual {v12}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->build()Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v13, v1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->replaceRecord(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/track/LocationRecord;Lcom/xiaomi/finddevice/v2/track/LocationRecord;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 94
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->applySMSTicket(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 95
    invoke-virtual {v13}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getEncodedBinary()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/track/task/UploadLocationTask;->uploadBySMS(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 97
    :cond_11
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Failed to apply a SMS ticket. "

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static/range {v18 .. v18}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 100
    :cond_12
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const-string/jumbo v17, "session ends"

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-static/range {v16 .. v16}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 83
    .end local v12    # "nr":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    .end local v13    # "r":Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    :cond_13
    throw v15
.end method
