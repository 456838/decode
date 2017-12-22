.class final Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$2;
.super Ljava/lang/Object;
.source "PersistentAppTaskBuilder.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$needWakeLock:Z

.field final synthetic val$runnable:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "val$runnable"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;
    .param p2, "val$name"    # Ljava/lang/String;
    .param p3, "val$needWakeLock"    # Z

    .prologue
    .line 73
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$2;->val$runnable:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;

    iput-object p2, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$2;->val$name:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$2;->val$needWakeLock:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;)Lcom/xiaomi/finddevice/common/task/RunCondition;
    .locals 30
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v16, Lcom/xiaomi/finddevice/common/task/NetworkReadyRunCondition;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/common/task/NetworkReadyRunCondition;-><init>(Landroid/content/Context;)V

    .line 81
    .local v16, "networkReadyRunCondition":Lcom/xiaomi/finddevice/common/task/NetworkReadyRunCondition;
    new-instance v6, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;

    .line 82
    const-string/jumbo v25, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    .line 83
    const-string/jumbo v26, "com.xiaomi.account.permission.SEND_ACCOUNT_POST_CHANGE_BROADCAST"

    .line 81
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v6, v0, v1, v2}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v6, "accountPostChangeRunCondition":Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;
    new-instance v17, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;

    .line 87
    const-string/jumbo v25, "android.provision.action.PROVISION_COMPLETE"

    .line 88
    const-string/jumbo v26, "android.provision.permission.SEND_PROVISION_COMPLETE_BROADCAST"

    .line 86
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v17, "provisionCompleteRunCondition":Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;
    new-instance v24, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;

    const-string/jumbo v25, "android.intent.action.TIME_SET"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v24, "timeSetRunCondition":Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;
    new-instance v14, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;

    invoke-direct {v14}, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;-><init>()V

    .line 96
    .local v14, "mtServiceBecomeAvailableRunCondition":Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;
    invoke-virtual/range {v16 .. v16}, Lcom/xiaomi/finddevice/common/task/NetworkReadyRunCondition;->startWatch()V

    .line 97
    invoke-virtual {v6}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->startWatch()V

    .line 98
    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->startWatch()V

    .line 99
    invoke-virtual/range {v24 .. v24}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->startWatch()V

    .line 100
    invoke-virtual {v14}, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;->startWatch()V

    .line 104
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$2;->val$runnable:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;->run(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$ProvisionInProcessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    if-eqz v16, :cond_0

    .line 152
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/NetworkReadyRunCondition;->destroy(Landroid/content/Context;)V

    .line 154
    :cond_0
    if-eqz v6, :cond_1

    .line 155
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 157
    :cond_1
    if-eqz v17, :cond_2

    .line 158
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 160
    :cond_2
    if-eqz v24, :cond_3

    .line 161
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 163
    :cond_3
    if-eqz v14, :cond_4

    .line 164
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;->destroy(Landroid/content/Context;)V

    .line 168
    :cond_4
    :goto_0
    const/16 v25, 0x0

    return-object v25

    .line 144
    :catch_0
    move-exception v9

    .line 145
    .local v9, "e":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$ProvisionInProcessException;
    const/16 v25, 0x2

    :try_start_1
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$2;->val$name:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const-string/jumbo v26, "Wait to retry due to %s. "

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v9, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    move-object/from16 v21, v17

    .line 148
    .local v21, "r":Lcom/xiaomi/finddevice/common/task/RunCondition;
    const/16 v18, 0x0

    .line 151
    .end local v17    # "provisionCompleteRunCondition":Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;
    .local v18, "provisionCompleteRunCondition":Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;
    if-eqz v16, :cond_5

    .line 152
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/NetworkReadyRunCondition;->destroy(Landroid/content/Context;)V

    .line 154
    :cond_5
    if-eqz v6, :cond_6

    .line 155
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 160
    :cond_6
    if-eqz v24, :cond_7

    .line 161
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 163
    :cond_7
    if-eqz v14, :cond_8

    .line 164
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;->destroy(Landroid/content/Context;)V

    .line 149
    :cond_8
    return-object v17

    .line 138
    .end local v9    # "e":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$ProvisionInProcessException;
    .end local v18    # "provisionCompleteRunCondition":Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;
    .end local v21    # "r":Lcom/xiaomi/finddevice/common/task/RunCondition;
    .restart local v17    # "provisionCompleteRunCondition":Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;
    :catch_1
    move-exception v12

    .line 139
    .local v12, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    const/16 v25, 0x2

    :try_start_2
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$2;->val$name:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const-string/jumbo v26, "Wait to retry due to %s. "

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v12, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    move-object/from16 v21, v6

    .line 142
    .restart local v21    # "r":Lcom/xiaomi/finddevice/common/task/RunCondition;
    const/4 v7, 0x0

    .line 151
    .end local v6    # "accountPostChangeRunCondition":Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;
    .local v7, "accountPostChangeRunCondition":Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;
    if-eqz v16, :cond_9

    .line 152
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/NetworkReadyRunCondition;->destroy(Landroid/content/Context;)V

    .line 157
    :cond_9
    if-eqz v17, :cond_a

    .line 158
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 160
    :cond_a
    if-eqz v24, :cond_b

    .line 161
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 163
    :cond_b
    if-eqz v14, :cond_c

    .line 164
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;->destroy(Landroid/content/Context;)V

    .line 143
    :cond_c
    return-object v6

    .line 128
    .end local v7    # "accountPostChangeRunCondition":Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;
    .end local v12    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    .end local v21    # "r":Lcom/xiaomi/finddevice/common/task/RunCondition;
    .restart local v6    # "accountPostChangeRunCondition":Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;
    :catch_2
    move-exception v10

    .line 129
    .local v10, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :try_start_3
    iget v0, v10, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->retryAfter:I

    move/from16 v25, v0

    if-lez v25, :cond_12

    .line 130
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$2;->val$name:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const-string/jumbo v26, "Wait to retry due to %s. "

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v10, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 131
    iget v0, v10, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->retryAfter:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x3e8

    mul-long v22, v26, v28

    .line 132
    .local v22, "retryAfter":J
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Retry after: %s. "

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 134
    new-instance v20, Lcom/xiaomi/finddevice/common/task/DelayRunCondition;

    invoke-direct/range {v20 .. v20}, Lcom/xiaomi/finddevice/common/task/DelayRunCondition;-><init>()V

    .line 135
    .local v20, "r":Lcom/xiaomi/finddevice/common/task/DelayRunCondition;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$2;->val$needWakeLock:Z

    move/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-wide/from16 v2, v22

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/finddevice/common/task/DelayRunCondition;->countdown(Landroid/content/Context;JZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    if-eqz v16, :cond_d

    .line 152
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/NetworkReadyRunCondition;->destroy(Landroid/content/Context;)V

    .line 154
    :cond_d
    if-eqz v6, :cond_e

    .line 155
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 157
    :cond_e
    if-eqz v17, :cond_f

    .line 158
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 160
    :cond_f
    if-eqz v24, :cond_10

    .line 161
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 163
    :cond_10
    if-eqz v14, :cond_11

    .line 164
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;->destroy(Landroid/content/Context;)V

    .line 136
    :cond_11
    return-object v20

    .line 151
    .end local v20    # "r":Lcom/xiaomi/finddevice/common/task/DelayRunCondition;
    .end local v22    # "retryAfter":J
    :cond_12
    if-eqz v16, :cond_13

    .line 152
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/NetworkReadyRunCondition;->destroy(Landroid/content/Context;)V

    .line 154
    :cond_13
    if-eqz v6, :cond_14

    .line 155
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 157
    :cond_14
    if-eqz v17, :cond_15

    .line 158
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 160
    :cond_15
    if-eqz v24, :cond_16

    .line 161
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 163
    :cond_16
    if-eqz v14, :cond_4

    .line 164
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;->destroy(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 122
    .end local v10    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_3
    move-exception v8

    .line 123
    .local v8, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    const/16 v25, 0x2

    :try_start_4
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$2;->val$name:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const-string/jumbo v26, "Wait to retry due to %s. "

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v8, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 125
    move-object/from16 v21, v14

    .line 126
    .restart local v21    # "r":Lcom/xiaomi/finddevice/common/task/RunCondition;
    const/4 v15, 0x0

    .line 151
    .end local v14    # "mtServiceBecomeAvailableRunCondition":Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;
    .local v15, "mtServiceBecomeAvailableRunCondition":Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;
    if-eqz v16, :cond_17

    .line 152
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/NetworkReadyRunCondition;->destroy(Landroid/content/Context;)V

    .line 154
    :cond_17
    if-eqz v6, :cond_18

    .line 155
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 157
    :cond_18
    if-eqz v17, :cond_19

    .line 158
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 160
    :cond_19
    if-eqz v24, :cond_1a

    .line 161
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 127
    :cond_1a
    return-object v14

    .line 113
    .end local v8    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    .end local v15    # "mtServiceBecomeAvailableRunCondition":Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;
    .end local v21    # "r":Lcom/xiaomi/finddevice/common/task/RunCondition;
    .restart local v14    # "mtServiceBecomeAvailableRunCondition":Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;
    :catch_4
    move-exception v11

    .line 114
    .local v11, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :try_start_5
    invoke-virtual {v11}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$ServiceUnavailableException;

    move/from16 v25, v0

    if-eqz v25, :cond_20

    .line 115
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$2;->val$name:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const-string/jumbo v26, "Wait to retry due to %s. "

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v11, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 116
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Retry after: %s. "

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const-wide/32 v28, 0x493e0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 118
    new-instance v20, Lcom/xiaomi/finddevice/common/task/DelayRunCondition;

    invoke-direct/range {v20 .. v20}, Lcom/xiaomi/finddevice/common/task/DelayRunCondition;-><init>()V

    .line 119
    .restart local v20    # "r":Lcom/xiaomi/finddevice/common/task/DelayRunCondition;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$2;->val$needWakeLock:Z

    move/from16 v25, v0

    const-wide/32 v26, 0x493e0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-wide/from16 v2, v26

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/finddevice/common/task/DelayRunCondition;->countdown(Landroid/content/Context;JZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 151
    if-eqz v16, :cond_1b

    .line 152
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/NetworkReadyRunCondition;->destroy(Landroid/content/Context;)V

    .line 154
    :cond_1b
    if-eqz v6, :cond_1c

    .line 155
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 157
    :cond_1c
    if-eqz v17, :cond_1d

    .line 158
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 160
    :cond_1d
    if-eqz v24, :cond_1e

    .line 161
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 163
    :cond_1e
    if-eqz v14, :cond_1f

    .line 164
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;->destroy(Landroid/content/Context;)V

    .line 120
    :cond_1f
    return-object v20

    .line 151
    .end local v20    # "r":Lcom/xiaomi/finddevice/common/task/DelayRunCondition;
    :cond_20
    if-eqz v16, :cond_21

    .line 152
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/NetworkReadyRunCondition;->destroy(Landroid/content/Context;)V

    .line 154
    :cond_21
    if-eqz v6, :cond_22

    .line 155
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 157
    :cond_22
    if-eqz v17, :cond_23

    .line 158
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 160
    :cond_23
    if-eqz v24, :cond_24

    .line 161
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 163
    :cond_24
    if-eqz v14, :cond_4

    .line 164
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;->destroy(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 106
    .end local v11    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_5
    move-exception v13

    .line 107
    .local v13, "e":Ljava/io/IOException;
    const/16 v25, 0x2

    :try_start_6
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$2;->val$name:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const-string/jumbo v26, "Wait to retry due to %s. "

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v13, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    aput-object v26, v25, v27

    invoke-static/range {v25 .. v25}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 109
    new-instance v19, Lcom/xiaomi/finddevice/common/task/AnyRunCondition;

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Lcom/xiaomi/finddevice/common/task/RunCondition;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v16, v25, v26

    const/16 v26, 0x1

    aput-object v24, v25, v26

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/common/task/AnyRunCondition;-><init>([Lcom/xiaomi/finddevice/common/task/RunCondition;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 110
    .local v19, "r":Lcom/xiaomi/finddevice/common/task/AnyRunCondition;
    const/16 v16, 0x0

    .line 111
    .local v16, "networkReadyRunCondition":Lcom/xiaomi/finddevice/common/task/NetworkReadyRunCondition;
    const/16 v24, 0x0

    .line 154
    .local v24, "timeSetRunCondition":Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;
    if-eqz v6, :cond_25

    .line 155
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 157
    :cond_25
    if-eqz v17, :cond_26

    .line 158
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 163
    :cond_26
    if-eqz v14, :cond_27

    .line 164
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;->destroy(Landroid/content/Context;)V

    .line 112
    :cond_27
    return-object v19

    .line 150
    .end local v13    # "e":Ljava/io/IOException;
    .end local v19    # "r":Lcom/xiaomi/finddevice/common/task/AnyRunCondition;
    .local v16, "networkReadyRunCondition":Lcom/xiaomi/finddevice/common/task/NetworkReadyRunCondition;
    .local v24, "timeSetRunCondition":Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;
    :catchall_0
    move-exception v25

    .line 151
    if-eqz v16, :cond_28

    .line 152
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/NetworkReadyRunCondition;->destroy(Landroid/content/Context;)V

    .line 154
    :cond_28
    if-eqz v6, :cond_29

    .line 155
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 157
    :cond_29
    if-eqz v17, :cond_2a

    .line 158
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 160
    :cond_2a
    if-eqz v24, :cond_2b

    .line 161
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 163
    :cond_2b
    if-eqz v14, :cond_2c

    .line 164
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;->destroy(Landroid/content/Context;)V

    .line 150
    :cond_2c
    throw v25
.end method
