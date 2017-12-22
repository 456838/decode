.class Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$2;
.super Ljava/lang/Object;
.source "PersistentAppTaskManagerTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->doCancel(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;

.field final synthetic val$cancelDelay:J

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;JI)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;
    .param p2, "val$cancelDelay"    # J
    .param p4, "val$id"    # I

    .prologue
    .line 253
    iput-object p1, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$2;->this$0:Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;

    iput-wide p2, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$2;->val$cancelDelay:J

    iput p4, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 258
    :try_start_0
    iget-wide v2, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$2;->val$cancelDelay:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$2;->this$0:Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;

    invoke-static {v2}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->-get2(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 264
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "Cancel: %s. "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$2;->val$id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 266
    iget v2, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$2;->val$id:I

    iget-object v4, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$2;->this$0:Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;

    invoke-static {v4}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->-get1(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v2, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$2;->this$0:Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;

    invoke-static {v2}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->-get1(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;)Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$2;->val$id:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 267
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "ERROR: no such task. "

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 268
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 271
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$2;->this$0:Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;

    invoke-static {v2}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->-get1(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;)Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$2;->val$id:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;

    .line 272
    .local v1, "r":Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "Cancel: %s. Cancel result: %s. "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    iget-object v6, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$2;->this$0:Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;

    invoke-static {v6}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->-get0(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v6

    iget-object v7, v1, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;->task:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    invoke-virtual {v6, v7}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->cancelTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 274
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;->canceled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 255
    return-void

    .line 263
    .end local v1    # "r":Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
