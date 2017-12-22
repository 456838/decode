.class public abstract Lcom/xiaomi/finddevice/v2/command/command/Command;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;,
        Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;,
        Lcom/xiaomi/finddevice/v2/command/command/Command$IExecutionCompleteHandler;,
        Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;,
        Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;,
        Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;
    }
.end annotation


# instance fields
.field public SMSEncode:Ljava/lang/String;

.field public SMSfrom:Ljava/lang/String;

.field public SMSfromSlotId:I

.field public SMSfromSubId:I

.field public auto:Z

.field private mCtx:Landroid/content/Context;

.field private mExcutionResultCode:I

.field private mExcutionResultExtra:Landroid/os/Bundle;

.field private mExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mExecutionCompleteHandler:Lcom/xiaomi/finddevice/v2/command/command/Command$IExecutionCompleteHandler;

.field private mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mSessionKey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

.field public seq:J

.field public timestamp:J

.field public uid:Ljava/lang/String;

.field public version:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;


# direct methods
.method static synthetic -get0(Lcom/xiaomi/finddevice/v2/command/command/Command;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mExcutionResultCode:I

    return v0
.end method

.method static synthetic -get1(Lcom/xiaomi/finddevice/v2/command/command/Command;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mExcutionResultExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/xiaomi/finddevice/v2/command/command/Command;)Lcom/xiaomi/finddevice/v2/command/command/Command$IExecutionCompleteHandler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mExecutionCompleteHandler:Lcom/xiaomi/finddevice/v2/command/command/Command$IExecutionCompleteHandler;

    return-object v0
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "skey"    # Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide v4, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    .line 64
    iput-wide v4, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->timestamp:J

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->uid:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfrom:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfromSlotId:I

    .line 69
    iput v1, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfromSubId:I

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSEncode:Ljava/lang/String;

    .line 72
    iput-boolean v2, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->auto:Z

    .line 377
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 378
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 380
    iput v2, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mExcutionResultCode:I

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mExcutionResultExtra:Landroid/os/Bundle;

    .line 108
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mCtx:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mSessionKey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mMainThreadHandler:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method private encrypt([B)[B
    .locals 18
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;
        }
    .end annotation

    .prologue
    .line 333
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/finddevice/v2/command/command/Command;->uid:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 335
    .local v14, "uidLong":J
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 336
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 338
    .local v4, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v4, v14, v15}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 339
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-static {v4}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 345
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 348
    .local v12, "iv":[B
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mSessionKey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    invoke-virtual {v13}, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->getKeyDescription()Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;

    move-result-object v13

    iget-object v13, v13, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey$KeyDescription;->encryptAlgorithm:Ljava/lang/String;

    invoke-static {v13}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 349
    .local v3, "cipher":Ljavax/crypto/Cipher;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mSessionKey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    new-instance v16, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v13, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 350
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    return-object v13

    .line 340
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v12    # "iv":[B
    :catch_0
    move-exception v5

    .line 341
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v13, Ljava/lang/RuntimeException;

    const-string/jumbo v16, "Never happen. "

    move-object/from16 v0, v16

    invoke-direct {v13, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 342
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 343
    invoke-static {v4}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 342
    throw v13

    .line 361
    .restart local v12    # "iv":[B
    :catch_1
    move-exception v9

    .line 362
    .local v9, "e":Ljavax/crypto/BadPaddingException;
    new-instance v13, Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;

    const-string/jumbo v16, "Encryption failed. "

    move-object/from16 v0, v16

    invoke-direct {v13, v0, v9}, Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 359
    .end local v9    # "e":Ljavax/crypto/BadPaddingException;
    :catch_2
    move-exception v10

    .line 360
    .local v10, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v13, Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;

    const-string/jumbo v16, "Encryption failed. "

    move-object/from16 v0, v16

    invoke-direct {v13, v0, v10}, Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 357
    .end local v10    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_3
    move-exception v6

    .line 358
    .local v6, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v13, Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;

    const-string/jumbo v16, "Encryption failed. "

    move-object/from16 v0, v16

    invoke-direct {v13, v0, v6}, Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 355
    .end local v6    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v7

    .line 356
    .local v7, "e":Ljava/security/InvalidKeyException;
    new-instance v13, Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;

    const-string/jumbo v16, "Encryption failed. "

    move-object/from16 v0, v16

    invoke-direct {v13, v0, v7}, Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 353
    .end local v7    # "e":Ljava/security/InvalidKeyException;
    :catch_5
    move-exception v11

    .line 354
    .local v11, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v13, Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;

    const-string/jumbo v16, "Encryption failed. "

    move-object/from16 v0, v16

    invoke-direct {v13, v0, v11}, Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 351
    .end local v11    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_6
    move-exception v8

    .line 352
    .local v8, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v13, Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;

    const-string/jumbo v16, "Encryption failed. "

    move-object/from16 v0, v16

    invoke-direct {v13, v0, v8}, Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method

.method private replyByNetwork(Ljava/lang/Object;)V
    .locals 2
    .param p1, "args"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/Command;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;

    move-result-object v0

    .line 303
    .local v0, "sp":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/Command;->getFullJsonReplyMessage(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->sendCommandExecInfo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 300
    return-void

    .line 304
    :catchall_0
    move-exception v1

    .line 305
    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 304
    throw v1
.end method

.method private replyBySMS(Ljava/lang/Object;)V
    .locals 8
    .param p1, "args"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 311
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/Command;->getFullBinaryReplyMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "sms":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfrom:Ljava/lang/String;

    .line 314
    .local v2, "to":Ljava/lang/String;
    iget v3, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfromSubId:I

    if-ltz v3, :cond_1

    .line 315
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    iget v4, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfromSubId:I

    invoke-virtual {v3, v4}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    .line 316
    .local v0, "slotId":I
    if-ltz v0, :cond_0

    .line 317
    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "Use SMSManager for slot %s. "

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 318
    invoke-static {v0, v1, v2}, Lcom/xiaomi/finddevice/adapter/SmsManagerAdapter;->sendSmsBySlot(ILjava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void

    .line 321
    :cond_0
    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "Subscription %s not inserted. "

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfromSubId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 327
    .end local v0    # "slotId":I
    :goto_0
    const/4 v3, -0x1

    invoke-static {v3, v1, v2}, Lcom/xiaomi/finddevice/adapter/SmsManagerAdapter;->sendSmsBySlot(ILjava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void

    .line 324
    :cond_1
    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "SMSfromSubId < 0"

    aput-object v4, v3, v7

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/xiaomi/finddevice/v2/command/command/Command$IExecutionCompleteHandler;)V
    .locals 3
    .param p1, "handler"    # Lcom/xiaomi/finddevice/v2/command/command/Command$IExecutionCompleteHandler;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Each command can be executed only once. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    if-nez p1, :cond_1

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mExecutionCompleteHandler:Lcom/xiaomi/finddevice/v2/command/command/Command$IExecutionCompleteHandler;

    .line 95
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;->FINISHED:Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onExecute()Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/Command;->finishExecution()V

    .line 84
    :cond_2
    return-void
.end method

.method protected finishExecution()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Execution already finished. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mExecutionCompleteHandler:Lcom/xiaomi/finddevice/v2/command/command/Command$IExecutionCompleteHandler;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Execution not started. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/Command$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/command/command/Command$1;-><init>(Lcom/xiaomi/finddevice/v2/command/command/Command;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method protected getFullBinaryReplyMessage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .param p1, "args"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v5, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->uid:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 241
    .local v6, "uidLong":J
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onGetBinaryReplyContent(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/xiaomi/finddevice/v2/command/command/Command;->encrypt([B)[B

    move-result-object v4

    .line 243
    .local v4, "receiptContent":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 244
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 246
    .local v2, "dos":Ljava/io/DataOutputStream;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 247
    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 248
    iget-wide v8, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    invoke-virtual {v2, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 249
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-static {v2}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mf"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 257
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iget-object v9, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSEncode:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandCoder;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 256
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "content":Ljava/lang/String;
    return-object v1

    .line 250
    .end local v1    # "content":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 251
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Never happen. "

    invoke-direct {v5, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 253
    invoke-static {v2}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 252
    throw v5
.end method

.method protected getFullJsonReplyMessage(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "args"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->uid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 225
    .local v4, "uidLong":J
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onGetJSONReplyContent(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xiaomi/finddevice/v2/command/command/Command;->encrypt([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/finddevice/common/util/KeyTool;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "receiptContent":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v0, "content":Ljava/util/Map;
    const-string/jumbo v3, "version"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string/jumbo v3, "userId"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string/jumbo v3, "seqno"

    iget-wide v6, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string/jumbo v3, "receiptContent"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {v0}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 236
    .local v1, "contentObj":Lorg/json/JSONObject;
    return-object v1
.end method

.method public initWithPushData(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "pushData"    # Lorg/json/JSONObject;
    .param p2, "commandContent"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onInitWithPushData(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 79
    return-void
.end method

.method protected onExecute()Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;->FINISHED:Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    return-object v0
.end method

.method protected abstract onGetBinaryName()S
.end method

.method protected onGetBinaryReplyContent(Ljava/lang/Object;)[B
    .locals 6
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    .line 272
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 273
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 275
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onGetBinaryReplyType(Ljava/lang/Object;)B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 277
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onGetBinaryName()S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 283
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 278
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Never happen. "

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 281
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 280
    throw v3
.end method

.method protected onGetBinaryReplyType(Ljava/lang/Object;)B
    .locals 1
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetJSONReplyContent(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    .local v0, "content":Ljava/util/Map;
    const-string/jumbo v1, "type"

    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onGetStringReplyType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string/jumbo v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string/jumbo v1, "command"

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onGetStringName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {v0}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    return-object v1
.end method

.method protected abstract onGetStringName()Ljava/lang/String;
.end method

.method protected onGetStringReplyType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    .line 290
    const-string/jumbo v0, "ordinary"

    return-object v0
.end method

.method protected onInitWithPushData(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "pushData"    # Lorg/json/JSONObject;
    .param p2, "commandContent"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;
        }
    .end annotation

    .prologue
    .line 133
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method protected reply(Ljava/lang/Object;)Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;
    .locals 8
    .param p1, "args"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 181
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/net/ConnectivityHelper;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/Command;->replyByNetwork(Ljava/lang/Object;)V

    .line 184
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Succeed to reply by network. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 185
    sget-object v2, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;->NETWORK:Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 188
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "e":Ljava/lang/Exception;
    throw v1

    .line 190
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Reply by network failed. "

    aput-object v3, v2, v5

    aput-object v1, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 194
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No network or failed to reply by netwrok. Try to reply by SMS.  "

    aput-object v3, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 196
    iget-boolean v2, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->auto:Z

    if-eqz v2, :cond_2

    .line 197
    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Auto message. Abort to reply by SMS. "

    aput-object v3, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 198
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;

    invoke-direct {v2}, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;-><init>()V

    throw v2

    .line 201
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfrom:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 202
    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "No source address. Abort to reply by SMS. "

    aput-object v3, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 203
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;

    invoke-direct {v2}, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;-><init>()V

    throw v2

    .line 212
    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/Command;->replyBySMS(Ljava/lang/Object;)V

    .line 213
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Succeed to reply by SMS. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 214
    sget-object v2, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;->SMS:Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;
    :try_end_1
    .catch Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 215
    :catch_1
    move-exception v0

    .line 216
    .local v0, "e":Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Reply by SMS failed. "

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 219
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;

    invoke-direct {v2}, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;-><init>()V

    throw v2
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onStop()V

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 369
    const-string/jumbo v0, "version:%s, type: %s, seq: %s, timestame: %s, uid: %s, smsfrom:%s, smsencode:%s"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    .line 370
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->version:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/Command;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->uid:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfrom:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSEncode:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 369
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
