.class Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1$1;
.super Ljava/lang/Object;
.source "PersistentAppTaskManagerTestService.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private retried:I

.field final synthetic this$1:Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$retryBroadcast:Ljava/lang/String;

.field final synthetic val$retryCount:I

.field final synthetic val$runDelay:J


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 2
    .param p1, "this$1"    # Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;
    .param p2, "val$retryBroadcast"    # Ljava/lang/String;
    .param p3, "val$name"    # Ljava/lang/String;
    .param p4, "val$runDelay"    # J
    .param p6, "val$retryCount"    # I

    .prologue
    .line 193
    iput-object p1, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1$1;->this$1:Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1;

    iput-object p2, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1$1;->val$retryBroadcast:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1$1;->val$name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1$1;->val$runDelay:J

    iput p6, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1$1;->val$retryCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1$1;->retried:I

    .line 193
    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;)Lcom/xiaomi/finddevice/common/task/RunCondition;
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 198
    new-instance v0, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;

    iget-object v2, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1$1;->val$retryBroadcast:Ljava/lang/String;

    invoke-direct {v0, p1, v2, v8}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .local v0, "broadcastEventRunCondition":Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;
    invoke-virtual {v0}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->startWatch()V

    .line 201
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Begin %s. "

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1$1;->val$name:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 203
    :try_start_0
    iget-wide v2, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1$1;->val$runDelay:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "End %s. "

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1$1;->val$name:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 209
    iget v2, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1$1;->retried:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1$1;->retried:I

    iget v3, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$1$1;->val$retryCount:I

    if-ge v2, v3, :cond_0

    .line 210
    return-object v0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 212
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->destroy(Landroid/content/Context;)V

    .line 213
    return-object v8
.end method
