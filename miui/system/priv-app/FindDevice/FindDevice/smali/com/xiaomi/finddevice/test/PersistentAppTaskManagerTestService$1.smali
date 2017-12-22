.class Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;
.super Ljava/lang/Object;
.source "PersistentAppTaskManagerTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->doAdd(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;

.field final synthetic val$addDelay:J

.field final synthetic val$controller:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

.field final synthetic val$finalIntent:Landroid/content/Intent;

.field final synthetic val$id:I

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$needWakeLock:Z

.field final synthetic val$retryBroadcast:Ljava/lang/String;

.field final synthetic val$retryCount:I

.field final synthetic val$runDelay:J

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;JILandroid/content/Intent;Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;Ljava/lang/String;JI)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;
    .param p2, "val$addDelay"    # J
    .param p4, "val$id"    # I
    .param p5, "val$finalIntent"    # Landroid/content/Intent;
    .param p6, "val$name"    # Ljava/lang/String;
    .param p7, "val$time"    # J
    .param p9, "val$needWakeLock"    # Z
    .param p10, "val$controller"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;
    .param p11, "val$retryBroadcast"    # Ljava/lang/String;
    .param p12, "val$runDelay"    # J
    .param p14, "val$retryCount"    # I

    .prologue
    .line 174
    iput-object p1, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->this$0:Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;

    iput-wide p2, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$addDelay:J

    iput p4, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$id:I

    iput-object p5, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$finalIntent:Landroid/content/Intent;

    iput-object p6, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$name:Ljava/lang/String;

    iput-wide p7, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$time:J

    iput-boolean p9, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$needWakeLock:Z

    iput-object p10, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$controller:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    iput-object p11, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$retryBroadcast:Ljava/lang/String;

    iput-wide p12, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$runDelay:J

    iput p14, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$retryCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 179
    :try_start_0
    iget-wide v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$addDelay:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->this$0:Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;

    invoke-static {v0}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->-get2(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 185
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Add: #%s[%s]. "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$finalIntent:Landroid/content/Intent;

    invoke-static {v3}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->-wrap0(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 187
    new-instance v8, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;-><init>(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;)V

    .line 188
    .local v8, "record":Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;
    iget-object v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$finalIntent:Landroid/content/Intent;

    iput-object v0, v8, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;->intent:Landroid/content/Intent;

    .line 190
    iget-object v10, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$name:Ljava/lang/String;

    .line 191
    iget-wide v12, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$time:J

    .line 192
    iget-boolean v11, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$needWakeLock:Z

    .line 193
    new-instance v0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1$1;

    iget-object v2, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$retryBroadcast:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$name:Ljava/lang/String;

    iget-wide v4, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$runDelay:J

    iget v6, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$retryCount:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1$1;-><init>(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 219
    iget-object v6, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$controller:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    move-object v1, v10

    move-wide v2, v12

    move v4, v11

    move-object v5, v0

    .line 189
    invoke-static/range {v1 .. v6}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->buildPersistentAppTask(Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    iput-object v0, v8, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;->task:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 221
    iget-object v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->this$0:Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;

    invoke-static {v0}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->-get0(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    iget-object v1, v8, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;->task:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    iget-object v1, v8, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;->task:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    if-eq v0, v1, :cond_0

    .line 222
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "ERROR: mTaskManager.addTask(record.task) != record.task"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->this$0:Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;

    invoke-static {v0}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->-get1(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->val$id:I

    invoke-interface {v0, v1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    .line 176
    return-void

    .line 180
    .end local v8    # "record":Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;
    :catch_0
    move-exception v7

    .line 181
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 184
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method
