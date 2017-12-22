.class Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;
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
    name = "UpdateAlarmSubTask"
.end annotation


# static fields
.field private static sAlarmTime:J

.field private static sSingleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;


# instance fields
.field private mForce:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 426
    invoke-static {}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->buildSingleTaskController()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    move-result-object v0

    .line 425
    sput-object v0, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;->sSingleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    .line 437
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;->sAlarmTime:J

    .line 421
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-boolean p1, p0, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;->mForce:Z

    .line 439
    return-void
.end method

.method public static build(Z)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    .locals 2
    .param p0, "force"    # Z

    .prologue
    .line 429
    new-instance v0, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;

    invoke-direct {v0, p0}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;-><init>(Z)V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    return-object v0
.end method

.method public static buildWithSingleTaskController(Z)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    .locals 3
    .param p0, "force"    # Z

    .prologue
    .line 432
    new-instance v0, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;

    invoke-direct {v0, p0}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;-><init>(Z)V

    sget-object v1, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;->sSingleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    return-object v0
.end method

.method private static getUpdateAlarmPendingIntent(Landroid/content/Context;Z)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "noCreate"    # Z

    .prologue
    .line 513
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTaskReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 516
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    const/high16 v2, 0x20000000

    .line 515
    :goto_0
    const/16 v3, 0x699a

    .line 514
    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 517
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1

    .line 516
    .end local v1    # "pi":Landroid/app/PendingIntent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateAlarm(Landroid/content/Context;)V
    .locals 18
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 449
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Called"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 454
    .local v10, "now":J
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getStatusTimeInfo()Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;

    move-result-object v12

    .line 456
    .local v12, "statusTimeInfo":Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "now: %s. "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v6

    .line 457
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 456
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 459
    iget-wide v4, v12, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;->recommendUpdateTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 460
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Recommend update time: N/A. "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 467
    :goto_0
    iget-wide v4, v12, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;->createdServerTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    .line 468
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Created server time: N/A. "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 475
    :goto_1
    const-wide/16 v14, -0x1

    .line 476
    .local v14, "updateTime":J
    iget-wide v4, v12, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;->createdServerTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 477
    iget-wide v4, v12, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;->createdServerTime:J

    cmp-long v3, v4, v10

    if-gtz v3, :cond_6

    .line 479
    :cond_0
    :goto_2
    iget-wide v14, v12, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;->recommendUpdateTime:J

    .line 481
    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v3, v14, v4

    if-eqz v3, :cond_2

    cmp-long v3, v14, v10

    if-gtz v3, :cond_3

    .line 482
    :cond_2
    const-wide/32 v4, 0x5265c00

    add-long v14, v10, v4

    .line 485
    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Final update time: %s. "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 486
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 485
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 488
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Force: "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;->mForce:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 490
    sget-wide v4, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;->sAlarmTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    const-string/jumbo v9, "N/A"

    .line 492
    .local v9, "sAlarmTimeString":Ljava/lang/String;
    :goto_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "sAlarmTime: (%s). "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 494
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;->mForce:Z

    if-nez v3, :cond_8

    sget-wide v4, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;->sAlarmTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_8

    sget-wide v4, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;->sAlarmTime:J

    cmp-long v3, v14, v4

    if-ltz v3, :cond_8

    .line 495
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Do NOT update alarm. "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 496
    return-void

    .line 462
    .end local v9    # "sAlarmTimeString":Ljava/lang/String;
    .end local v14    # "updateTime":J
    :cond_4
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Recommend update time: %s. "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 463
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v6

    .line 464
    new-instance v7, Ljava/util/Date;

    iget-wide v0, v12, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;->recommendUpdateTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 463
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 462
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 470
    :cond_5
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Created server time: %s. "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 471
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v6

    .line 472
    new-instance v7, Ljava/util/Date;

    iget-wide v0, v12, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;->createdServerTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 471
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 470
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 478
    .restart local v14    # "updateTime":J
    :cond_6
    iget-wide v4, v12, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;->createdServerTime:J

    sub-long/2addr v4, v10

    const-wide/32 v6, 0x2932e00

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    goto/16 :goto_2

    .line 491
    :cond_7
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    sget-wide v6, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;->sAlarmTime:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "sAlarmTimeString":Ljava/lang/String;
    goto/16 :goto_3

    .line 498
    :cond_8
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Update alarm. "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 500
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;->getUpdateAlarmPendingIntent(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object v8

    .line 502
    .local v8, "pi":Landroid/app/PendingIntent;
    const-string/jumbo v3, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 505
    .local v2, "alertManager":Landroid/app/AlarmManager;
    sub-long v4, v14, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    .line 504
    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 507
    sput-wide v14, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;->sAlarmTime:J

    .line 448
    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$UpdateAlarmSubTask;->updateAlarm(Landroid/content/Context;)V

    .line 444
    return-void
.end method
