.class Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;
.super Ljava/lang/Object;
.source "PhoneInfoUpdateTask.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadPhoneInfoIfFindDeviceOpenSubTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;
    }
.end annotation


# static fields
.field private static volatile sCacheSlot:Lmiui/cloud/common/XWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/cloud/common/XWrapper",
            "<[",
            "Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final singleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->buildSingleTaskController()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    move-result-object v0

    .line 228
    sput-object v0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;->singleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    .line 261
    new-instance v0, Lmiui/cloud/common/XWrapper;

    invoke-direct {v0}, Lmiui/cloud/common/XWrapper;-><init>()V

    sput-object v0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;->sCacheSlot:Lmiui/cloud/common/XWrapper;

    .line 225
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;-><init>()V

    return-void
.end method

.method private static buildUpdatedPhoneInfo([Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;Lmiui/cloud/common/XWrapper;)Ljava/util/List;
    .locals 14
    .param p0, "activationInfos"    # [Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;",
            "Lmiui/cloud/common/XWrapper",
            "<[",
            "Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "cacheSlot":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<[Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;>;"
    invoke-virtual {p1}, Lmiui/cloud/common/XWrapper;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;

    .line 365
    .local v2, "lastUploadedActivationInfo":[Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Old: %s. "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 366
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "New: %s. "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 368
    const/4 v7, 0x0

    .line 370
    .local v7, "updated":Z
    if-eqz v2, :cond_7

    .line 371
    array-length v9, v2

    array-length v10, p0

    if-ne v9, v10, :cond_7

    .line 372
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, p0

    if-ge v1, v9, :cond_8

    .line 373
    aget-object v3, p0, v1

    .line 374
    .local v3, "n":Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;
    aget-object v4, v2, v1

    .line 375
    .local v4, "o":Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;
    if-nez v3, :cond_3

    .line 376
    if-nez v4, :cond_1

    .line 372
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    :cond_1
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Lmiui/telephony/TelephonyManager;->getSimStateForSlot(I)I

    move-result v9

    .line 380
    const/4 v10, 0x1

    .line 379
    if-eq v9, v10, :cond_2

    .line 389
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "May saved the world. This worth a piece of log. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_1

    .line 391
    :cond_2
    const/4 v7, 0x1

    goto :goto_1

    .line 395
    :cond_3
    if-nez v4, :cond_4

    .line 396
    const/4 v7, 0x1

    goto :goto_1

    .line 398
    :cond_4
    iget-object v9, v3, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;->id:Ljava/lang/String;

    iget-object v10, v4, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;->id:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 399
    const/4 v7, 0x1

    goto :goto_1

    .line 401
    :cond_5
    iget-object v9, v4, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;->phoneTicket:Ljava/lang/String;

    iget-object v10, v3, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;->phoneTicket:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 402
    iget-object v9, v4, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;->simId:Ljava/lang/String;

    iget-object v10, v3, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;->simId:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 403
    :cond_6
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "SIM activation info changed. This worth a piece of log, too. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_1

    .line 410
    .end local v1    # "i":I
    .end local v3    # "n":Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;
    .end local v4    # "o":Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;
    :cond_7
    const/4 v7, 0x1

    .line 413
    :cond_8
    if-nez v7, :cond_9

    .line 414
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Not changed. "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 415
    const/4 v9, 0x0

    return-object v9

    .line 418
    :cond_9
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v8, "updatedPhoneInfo":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v9, 0x0

    array-length v10, p0

    :goto_2
    if-ge v9, v10, :cond_b

    aget-object v0, p0, v9

    .line 420
    .local v0, "c":Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;
    if-eqz v0, :cond_a

    .line 421
    new-instance v11, Landroid/util/Pair;

    iget-object v12, v0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;->phoneTicket:Ljava/lang/String;

    iget-object v13, v0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;->simId:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 425
    .end local v0    # "c":Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;
    :cond_b
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "UpdatedPhoneInfo (%s): "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 426
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "p$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 427
    .local v5, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "------ <%s, %s>. "

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    iget-object v12, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_3

    .line 429
    .end local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "UpdatedPhoneInfo end. "

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 431
    return-object v8
.end method

.method public static invalidateCache()V
    .locals 1

    .prologue
    .line 236
    new-instance v0, Lmiui/cloud/common/XWrapper;

    invoke-direct {v0}, Lmiui/cloud/common/XWrapper;-><init>()V

    sput-object v0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;->sCacheSlot:Lmiui/cloud/common/XWrapper;

    .line 235
    return-void
.end method

.method private static saveLastUploadedActivationInfo([Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;Lmiui/cloud/common/XWrapper;)V
    .locals 0
    .param p0, "activationInfos"    # [Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;",
            "Lmiui/cloud/common/XWrapper",
            "<[",
            "Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "cacheSlot":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<[Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;>;"
    invoke-virtual {p1, p0}, Lmiui/cloud/common/XWrapper;->set(Ljava/lang/Object;)V

    .line 435
    return-void
.end method


# virtual methods
.method public asTask()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    .locals 2

    .prologue
    .line 232
    sget-object v0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;->singleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    return-object v0
.end method

.method public run(Landroid/content/Context;)V
    .locals 29
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
    .line 268
    sget-object v5, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;->sCacheSlot:Lmiui/cloud/common/XWrapper;

    .line 270
    .local v5, "cacheSlot":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<[Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;>;"
    const/16 v19, 0x0

    .line 272
    .local v19, "pendingIOException":Ljava/io/IOException;
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->-wrap0(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 273
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Find device not open. "

    const/16 v27, 0x0

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 274
    return-void

    .line 277
    :cond_0
    invoke-static {}, Lmiui/telephony/CloudTelephonyManager;->getMultiSimCount()I

    move-result v23

    .line 278
    .local v23, "simCount":I
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->get(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/ActivateManager;

    move-result-object v6

    .line 279
    .local v6, "cm":Lcom/xiaomi/accountsdk/activate/ActivateManager;
    move/from16 v0, v23

    new-array v4, v0, [Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;

    .line 280
    .local v4, "activationInfos":[Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;
    const/16 v17, 0x0

    .end local v19    # "pendingIOException":Ljava/io/IOException;
    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 282
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManager;->getSimSerialNumberForSlot(I)Ljava/lang/String;

    move-result-object v18

    .line 283
    .local v18, "id":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 284
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Card "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const-string/jumbo v26, "empty ID. "

    const/16 v27, 0x1

    aput-object v26, v25, v27

    const-string/jumbo v26, "IGNORE"

    const/16 v27, 0x2

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 280
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 288
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lmiui/telephony/CloudTelephonyManager;->getSimId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    .line 289
    .local v24, "simId":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 290
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Card "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const-string/jumbo v26, "empty simId. "

    const/16 v27, 0x1

    aput-object v26, v25, v27

    const-string/jumbo v26, "IGNORE"

    const/16 v27, 0x2

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_1

    .line 294
    :cond_2
    const/16 v21, 0x0

    .line 296
    .local v21, "phoneTicket":Ljava/lang/String;
    const/16 v25, 0x2

    :try_start_0
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Card "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const-string/jumbo v26, "getting the phone ticket. "

    const/16 v27, 0x1

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 297
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->getMXPhoneTicket(I)Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/Bundle;

    .line 298
    const-string/jumbo v26, "activate_phone_ticket"

    .line 297
    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 299
    .local v21, "phoneTicket":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 300
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Card "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const-string/jumbo v26, "empty phoneticket. "

    const/16 v27, 0x1

    aput-object v26, v25, v27

    const-string/jumbo v26, "IGNORE"

    const/16 v27, 0x2

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 303
    .end local v21    # "phoneTicket":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 304
    .local v15, "e":Ljava/io/IOException;
    move-object/from16 v19, v15

    .line 305
    .local v19, "pendingIOException":Ljava/io/IOException;
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Card "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const-string/jumbo v26, "getting the phone ticket. "

    const/16 v27, 0x1

    aput-object v26, v25, v27

    const/16 v26, 0x2

    aput-object v15, v25, v26

    const-string/jumbo v26, "IGNORE"

    const/16 v27, 0x3

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 310
    .end local v15    # "e":Ljava/io/IOException;
    .end local v19    # "pendingIOException":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 311
    .local v8, "e":Lcom/xiaomi/accountsdk/activate/OperationCancelledException;
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Card "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const-string/jumbo v26, "getting the phone ticket. "

    const/16 v27, 0x1

    aput-object v26, v25, v27

    const/16 v26, 0x2

    aput-object v8, v25, v26

    const-string/jumbo v26, "IGNORE"

    const/16 v27, 0x3

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 307
    .end local v8    # "e":Lcom/xiaomi/accountsdk/activate/OperationCancelledException;
    :catch_2
    move-exception v7

    .line 308
    .local v7, "e":Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException;
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Card "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const-string/jumbo v26, "getting the phone ticket. "

    const/16 v27, 0x1

    aput-object v26, v25, v27

    const/16 v26, 0x2

    aput-object v7, v25, v26

    const-string/jumbo v26, "IGNORE"

    const/16 v27, 0x3

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 315
    .end local v7    # "e":Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException;
    .restart local v21    # "phoneTicket":Ljava/lang/String;
    :cond_3
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Card "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const-string/jumbo v26, "succeed to get the phone info"

    const/16 v27, 0x1

    aput-object v26, v25, v27

    .line 316
    const-string/jumbo v26, "simId: %s, phoneTicket: %s"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v24, v27, v28

    const/16 v28, 0x1

    aput-object v21, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x2

    aput-object v26, v25, v27

    .line 315
    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 318
    new-instance v25, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v25, v4, v17

    goto/16 :goto_1

    .line 321
    .end local v18    # "id":Ljava/lang/String;
    .end local v21    # "phoneTicket":Ljava/lang/String;
    .end local v24    # "simId":Ljava/lang/String;
    :cond_4
    invoke-static {v4, v5}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;->buildUpdatedPhoneInfo([Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;Lmiui/cloud/common/XWrapper;)Ljava/util/List;

    move-result-object v20

    .line 322
    .local v20, "phoneInfo":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v20, :cond_5

    .line 323
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Upload phone info. "

    const/16 v27, 0x0

    aput-object v26, v25, v27

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Total: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ". "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 325
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;

    move-result-object v22

    .line 327
    .local v22, "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_start_1
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->reportPhoneInfo(Ljava/util/List;)V

    .line 328
    invoke-static {v4, v5}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;->saveLastUploadedActivationInfo([Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask$ActivationInfo;Lmiui/cloud/common/XWrapper;)V

    .line 329
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Succeed to upload the phone info. "

    const/16 v27, 0x0

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 355
    .end local v22    # "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :cond_5
    :goto_2
    if-eqz v19, :cond_6

    .line 356
    throw v19

    .line 347
    .restart local v22    # "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :catch_3
    move-exception v9

    .line 348
    .local v9, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    const/16 v25, 0x2

    :try_start_2
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Uploading failed. "

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const/16 v26, 0x1

    aput-object v9, v25, v26

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 349
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    .end local v9    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catchall_0
    move-exception v25

    .line 351
    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 350
    throw v25

    .line 344
    :catch_4
    move-exception v15

    .line 345
    .restart local v15    # "e":Ljava/io/IOException;
    const/16 v25, 0x2

    :try_start_3
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Uploading failed. "

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const/16 v26, 0x1

    aput-object v15, v25, v26

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 346
    throw v15

    .line 341
    .end local v15    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v11

    .line 342
    .local v11, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Uploading failed. "

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const/16 v26, 0x1

    aput-object v11, v25, v26

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 343
    throw v11

    .line 339
    .end local v11    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_6
    move-exception v14

    .line 340
    .local v14, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Uploading failed. "

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const/16 v26, 0x1

    aput-object v14, v25, v26

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto :goto_2

    .line 337
    .end local v14    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    :catch_7
    move-exception v16

    .line 338
    .local v16, "e":Ljava/lang/InterruptedException;
    const/16 v25, 0x2

    :try_start_4
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Uploading failed. "

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const/16 v26, 0x1

    aput-object v16, v25, v26

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 351
    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto/16 :goto_2

    .line 335
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catch_8
    move-exception v10

    .line 336
    .local v10, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    const/16 v25, 0x2

    :try_start_5
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Uploading failed. "

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const/16 v26, 0x1

    aput-object v10, v25, v26

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 351
    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto/16 :goto_2

    .line 332
    .end local v10    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_9
    move-exception v12

    .line 333
    .local v12, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    const/16 v25, 0x2

    :try_start_6
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Uploading failed. "

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const/16 v26, 0x1

    aput-object v12, v25, v26

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 334
    throw v12

    .line 330
    .end local v12    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_a
    move-exception v13

    .line 331
    .local v13, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Uploading failed. "

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const/16 v26, 0x1

    aput-object v13, v25, v26

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 351
    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto/16 :goto_2

    .line 266
    .end local v13    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    .end local v22    # "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :cond_6
    return-void
.end method
