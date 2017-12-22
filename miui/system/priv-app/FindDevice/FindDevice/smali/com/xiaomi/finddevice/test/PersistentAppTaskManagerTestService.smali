.class public Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;
.super Landroid/app/Service;
.source "PersistentAppTaskManagerTestService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;
    }
.end annotation


# instance fields
.field private mBatch:Z

.field private mBatchedOp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mBlock:Z

.field private mSingleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

.field private final mTaskManager:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

.field private mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTasksLock:Ljava/lang/Object;

.field private mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mTaskManager:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mTasksLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-static {p0}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->dumpIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 296
    const-string/jumbo v0, "TestManager"

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mTaskManager:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    .line 299
    invoke-static {}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->buildSingleTaskController()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mSingleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatchedOp:Ljava/util/List;

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mTasks:Ljava/util/List;

    .line 321
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mTasksLock:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method private doAdd(Landroid/content/Intent;)V
    .locals 30
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 148
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mTasksLock:Ljava/lang/Object;

    monitor-enter v5

    .line 149
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    .line 150
    .local v8, "newId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mTasks:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 153
    move/from16 v21, v8

    .line 155
    .local v21, "id":I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "Going to add: #%s[%s]. "

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v28, 0x0

    aput-object v25, v9, v28

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->dumpIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v25

    const/16 v28, 0x1

    aput-object v25, v9, v28

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v4, v9

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 157
    const-string/jumbo v4, "adl"

    const-wide/16 v28, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 158
    .local v6, "addDelay":J
    const-string/jumbo v4, "rdl"

    const-wide/16 v28, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 160
    .local v16, "runDelay":J
    const-string/jumbo v4, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 161
    .local v22, "nameInIntent":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Test Task #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 162
    .local v10, "name":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "time"

    const-wide/16 v28, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v26

    .line 163
    .local v26, "timeInIntent":J
    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-gez v4, :cond_2

    const-wide/16 v11, -0x1

    .line 164
    .local v11, "time":J
    :goto_1
    const-string/jumbo v4, "wl"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 165
    .local v13, "needWakeLock":Z
    const-string/jumbo v4, "retry"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 166
    .local v18, "retryCount":I
    const-string/jumbo v4, "rb"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 167
    .local v23, "rb":Ljava/lang/String;
    if-nez v23, :cond_3

    const-string/jumbo v15, "android.intent.action.TIME_SET"

    .line 170
    .local v15, "retryBroadcast":Ljava/lang/String;
    :goto_2
    const-string/jumbo v4, "single"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mSingleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    .line 172
    :goto_3
    move-object/from16 v20, p1

    .line 174
    .local v20, "finalIntent":Landroid/content/Intent;
    new-instance v24, Ljava/lang/Thread;

    new-instance v4, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;

    move-object/from16 v5, p0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v18}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;-><init>(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;JILandroid/content/Intent;Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;Ljava/lang/String;JI)V

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 230
    .local v24, "td":Ljava/lang/Thread;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Thread;->start()V

    .line 231
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBlock:Z

    if-eqz v4, :cond_0

    .line 233
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    :cond_0
    :goto_4
    return-void

    .line 148
    .end local v6    # "addDelay":J
    .end local v8    # "newId":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "time":J
    .end local v13    # "needWakeLock":Z
    .end local v15    # "retryBroadcast":Ljava/lang/String;
    .end local v16    # "runDelay":J
    .end local v18    # "retryCount":I
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "id":I
    .end local v22    # "nameInIntent":Ljava/lang/String;
    .end local v23    # "rb":Ljava/lang/String;
    .end local v24    # "td":Ljava/lang/Thread;
    .end local v26    # "timeInIntent":J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 161
    .restart local v6    # "addDelay":J
    .restart local v8    # "newId":I
    .restart local v16    # "runDelay":J
    .restart local v21    # "id":I
    .restart local v22    # "nameInIntent":Ljava/lang/String;
    :cond_1
    move-object/from16 v10, v22

    .restart local v10    # "name":Ljava/lang/String;
    goto :goto_0

    .line 163
    .restart local v26    # "timeInIntent":J
    :cond_2
    const-wide/16 v4, 0x3e8

    mul-long v4, v4, v26

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    add-long v11, v4, v28

    .restart local v11    # "time":J
    goto :goto_1

    .line 167
    .restart local v13    # "needWakeLock":Z
    .restart local v18    # "retryCount":I
    .restart local v23    # "rb":Ljava/lang/String;
    :cond_3
    move-object/from16 v15, v23

    .restart local v15    # "retryBroadcast":Ljava/lang/String;
    goto :goto_2

    .line 170
    :cond_4
    const/4 v14, 0x0

    .local v14, "controller":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;
    goto :goto_3

    .line 234
    .end local v14    # "controller":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v24    # "td":Ljava/lang/Thread;
    :catch_0
    move-exception v19

    .line 235
    .local v19, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method

.method private doCancel(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 242
    const-string/jumbo v5, "id"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 244
    .local v3, "id":I
    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "Goint to cancel: %s. "

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->dumpIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 246
    const-string/jumbo v5, "cdl"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 248
    .local v0, "cancelDelay":J
    if-gez v3, :cond_0

    .line 249
    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "ERROR: bad id. "

    aput-object v6, v5, v9

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 250
    return-void

    .line 253
    :cond_0
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$2;

    invoke-direct {v5, p0, v0, v1, v3}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$2;-><init>(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;JI)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 279
    .local v4, "td":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 280
    iget-boolean v5, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBlock:Z

    if-eqz v5, :cond_1

    .line 282
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private static dumpIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 290
    const-string/jumbo v0, "action: %s. extra: %s. "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private execute(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 135
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "cmd":Ljava/lang/String;
    const-string/jumbo v1, "add"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->doAdd(Landroid/content/Intent;)V

    .line 134
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string/jumbo v1, "cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->doCancel(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "ERROR: unrecognized op %s. "

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatch:Z

    .line 124
    iget-object v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatchedOp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    invoke-static {}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->buildSingleTaskController()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mSingleTaskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    .line 128
    iget-object v1, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mTasksLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 122
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->ensureRunAsOwnerUser()V

    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 28
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->reset()V

    .line 119
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 117
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "cmd":Ljava/lang/String;
    const-string/jumbo v8, "wl"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 38
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "wake lock. "

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 39
    iget-object v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-nez v8, :cond_1

    .line 40
    const-string/jumbo v8, "power"

    invoke-virtual {p0, v8}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 41
    .local v6, "pm":Landroid/os/PowerManager;
    const-string/jumbo v8, "PersistentAppTaskManagerTestService"

    const/4 v9, 0x1

    invoke-virtual {v6, v9, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 42
    iget-object v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 113
    .end local v6    # "pm":Landroid/os/PowerManager;
    :cond_0
    :goto_0
    const/4 v8, 0x2

    return v8

    .line 44
    :cond_1
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "already hold. "

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    :cond_2
    const-string/jumbo v8, "rwl"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 47
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "release wake lock. "

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 48
    iget-object v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-nez v8, :cond_3

    .line 49
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "not holded. "

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_3
    iget-object v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 52
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .line 54
    :cond_4
    const-string/jumbo v8, "stop"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 55
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "STOP"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->stopSelf()V

    goto :goto_0

    .line 57
    :cond_5
    const-string/jumbo v8, "reset"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 58
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "RESET"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 59
    invoke-direct {p0}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->reset()V

    goto :goto_0

    .line 60
    :cond_6
    const-string/jumbo v8, "list"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 61
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "LIST"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 62
    iget-object v9, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mTasksLock:Ljava/lang/Object;

    monitor-enter v9

    .line 63
    :try_start_0
    iget-object v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mTasks:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 64
    .local v7, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_7

    .line 65
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v10, "%s: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    iget-object v12, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mTasks:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    monitor-exit v9

    goto/16 :goto_0

    .line 62
    .end local v1    # "i":I
    .end local v7    # "size":I
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 68
    :cond_8
    const-string/jumbo v8, "batch"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 69
    iget-boolean v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatch:Z

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    :goto_2
    iput-boolean v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatch:Z

    .line 70
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "BATCH? %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-boolean v11, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatch:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 72
    iget-boolean v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatch:Z

    if-nez v8, :cond_0

    .line 73
    iget-object v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatchedOp:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 69
    :cond_9
    const/4 v8, 0x1

    goto :goto_2

    .line 75
    :cond_a
    const-string/jumbo v8, "commit"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 76
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "COMMAND"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 77
    iget-boolean v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatch:Z

    if-nez v8, :cond_b

    .line 78
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "ERROR: not at batch mode. "

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 80
    :cond_b
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatch:Z

    .line 82
    iget-object v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatchedOp:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 83
    .local v2, "i":Landroid/content/Intent;
    invoke-direct {p0, v2}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->execute(Landroid/content/Intent;)V

    goto :goto_3

    .line 85
    .end local v2    # "i":Landroid/content/Intent;
    :cond_c
    iget-object v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatchedOp:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 86
    .end local v3    # "i$iterator":Ljava/util/Iterator;
    :cond_d
    const-string/jumbo v8, "abort"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 87
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "ABORT"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 88
    iget-boolean v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatch:Z

    if-nez v8, :cond_e

    .line 89
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "ERROR: not at batch mode. "

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 91
    :cond_e
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatch:Z

    .line 92
    iget-object v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatchedOp:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 93
    :cond_f
    const-string/jumbo v8, "blist"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 94
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "BLIST"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 95
    iget-boolean v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatch:Z

    if-nez v8, :cond_10

    .line 96
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "ERROR: not at batch mode. "

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 98
    :cond_10
    iget-object v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatchedOp:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "op$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 99
    .local v4, "op":Landroid/content/Intent;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_4

    .line 101
    .end local v4    # "op":Landroid/content/Intent;
    .end local v5    # "op$iterator":Ljava/util/Iterator;
    :cond_11
    const-string/jumbo v8, "block"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 102
    iget-boolean v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBlock:Z

    if-eqz v8, :cond_12

    const/4 v8, 0x0

    :goto_5
    iput-boolean v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBlock:Z

    .line 103
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "BLOCK? %s. "

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-boolean v11, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBlock:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 102
    :cond_12
    const/4 v8, 0x1

    goto :goto_5

    .line 105
    :cond_13
    iget-boolean v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatch:Z

    if-eqz v8, :cond_14

    .line 106
    iget-object v8, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatchedOp:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "%s ops batched. "

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->mBatchedOp:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 109
    :cond_14
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->execute(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
