.class Lcom/xiaomi/finddevice/v2/time/TimeCorrectionTask$TimeCorrectionSubTask;
.super Ljava/lang/Object;
.source "TimeCorrectionTask.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/time/TimeCorrectionTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeCorrectionSubTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/time/TimeCorrectionTask$TimeCorrectionSubTask;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/time/TimeCorrectionTask$TimeCorrectionSubTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;)V
    .locals 20
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;

    move-result-object v11

    .line 34
    .local v11, "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    const/4 v10, 0x0

    .line 36
    .local v10, "errorMsg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v11}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->time()J

    move-result-wide v14

    .line 37
    .local v14, "serverTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 39
    .local v12, "localTime":J
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    .line 40
    .local v3, "df":Ljava/text/DateFormat;
    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const-string/jumbo v17, "Time got. "

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const-string/jumbo v17, "server: "

    const/16 v18, 0x1

    aput-object v17, v16, v18

    new-instance v17, Ljava/util/Date;

    move-object/from16 v0, v17

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    aput-object v17, v16, v18

    .line 41
    const-string/jumbo v17, "local: "

    const/16 v18, 0x3

    aput-object v17, v16, v18

    new-instance v17, Ljava/util/Date;

    move-object/from16 v0, v17

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    aput-object v17, v16, v18

    .line 40
    invoke-static/range {v16 .. v16}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 43
    sub-long v16, v14, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    const-wide/32 v18, 0x927c0

    cmp-long v16, v16, v18

    if-gez v16, :cond_0

    .line 44
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const-string/jumbo v17, "delta too small, not going to correct time. "

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-static/range {v16 .. v16}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 52
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string/jumbo v16, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 47
    .local v2, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v2, v14, v15}, Landroid/app/AlarmManager;->setTime(J)V

    .line 49
    invoke-static/range {p1 .. p1}, Lmiui/cloud/finddevice/FindDeviceNotification;->notifyUserTimeCorrectionSuccess(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 54
    .end local v2    # "alarmManager":Landroid/app/AlarmManager;
    .end local v3    # "df":Ljava/text/DateFormat;
    .end local v12    # "localTime":J
    .end local v14    # "serverTime":J
    :catch_0
    move-exception v8

    .line 55
    .local v8, "e":Ljava/io/IOException;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const-string/jumbo v17, "Failed to get time. "

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const/16 v17, 0x1

    aput-object v8, v16, v17

    invoke-static/range {v16 .. v16}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 56
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/xiaomi/finddevice/common/util/ErrorUtil;->failureExceptionTofailureCauseString(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    .line 30
    .end local v8    # "e":Ljava/io/IOException;
    .local v10, "errorMsg":Ljava/lang/String;
    :goto_1
    return-void

    .line 69
    .local v10, "errorMsg":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 70
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const-string/jumbo v17, "Failed to get time. "

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const/16 v17, 0x1

    aput-object v5, v16, v17

    invoke-static/range {v16 .. v16}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 71
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/xiaomi/finddevice/common/util/ErrorUtil;->failureExceptionTofailureCauseString(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    .local v10, "errorMsg":Ljava/lang/String;
    goto :goto_1

    .line 66
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    .local v10, "errorMsg":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 67
    .local v9, "e":Ljava/lang/InterruptedException;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const-string/jumbo v17, "Failed to get time. "

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const/16 v17, 0x1

    aput-object v9, v16, v17

    invoke-static/range {v16 .. v16}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 68
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/xiaomi/finddevice/common/util/ErrorUtil;->failureExceptionTofailureCauseString(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    .local v10, "errorMsg":Ljava/lang/String;
    goto :goto_1

    .line 63
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .local v10, "errorMsg":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 64
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const-string/jumbo v17, "Failed to get time. "

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const/16 v17, 0x1

    aput-object v4, v16, v17

    invoke-static/range {v16 .. v16}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 65
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/xiaomi/finddevice/common/util/ErrorUtil;->failureExceptionTofailureCauseString(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    .local v10, "errorMsg":Ljava/lang/String;
    goto :goto_1

    .line 60
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    .local v10, "errorMsg":Ljava/lang/String;
    :catch_4
    move-exception v7

    .line 61
    .local v7, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const-string/jumbo v17, "Failed to get time. "

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const/16 v17, 0x1

    aput-object v7, v16, v17

    invoke-static/range {v16 .. v16}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 62
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/xiaomi/finddevice/common/util/ErrorUtil;->failureExceptionTofailureCauseString(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    .local v10, "errorMsg":Ljava/lang/String;
    goto :goto_1

    .line 57
    .end local v7    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    .local v10, "errorMsg":Ljava/lang/String;
    :catch_5
    move-exception v6

    .line 58
    .local v6, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const-string/jumbo v17, "Failed to get time. "

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const/16 v17, 0x1

    aput-object v6, v16, v17

    invoke-static/range {v16 .. v16}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 59
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/xiaomi/finddevice/common/util/ErrorUtil;->failureExceptionTofailureCauseString(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    .local v10, "errorMsg":Ljava/lang/String;
    goto/16 :goto_1
.end method
