.class Lcom/xiaomi/finddevice/common/task/QueueTaskManager$1;
.super Ljava/lang/Object;
.source "QueueTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->beginTaskThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/common/task/QueueTaskManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/common/task/QueueTaskManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/common/task/QueueTaskManager;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$1;->this$0:Lcom/xiaomi/finddevice/common/task/QueueTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$1;->this$0:Lcom/xiaomi/finddevice/common/task/QueueTaskManager;

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->-wrap1(Lcom/xiaomi/finddevice/common/task/QueueTaskManager;)V

    .line 198
    return-void
.end method
