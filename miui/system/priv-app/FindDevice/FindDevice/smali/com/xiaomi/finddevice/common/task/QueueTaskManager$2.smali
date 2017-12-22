.class Lcom/xiaomi/finddevice/common/task/QueueTaskManager$2;
.super Ljava/lang/Object;
.source "QueueTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->scheduleTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/common/task/QueueTaskManager;

.field final synthetic val$task:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/common/task/QueueTaskManager;Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/common/task/QueueTaskManager;
    .param p2, "val$task"    # Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$2;->this$0:Lcom/xiaomi/finddevice/common/task/QueueTaskManager;

    iput-object p2, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$2;->val$task:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$2;->this$0:Lcom/xiaomi/finddevice/common/task/QueueTaskManager;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$2;->val$task:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->-wrap0(Lcom/xiaomi/finddevice/common/task/QueueTaskManager;Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;)V

    .line 230
    return-void
.end method
