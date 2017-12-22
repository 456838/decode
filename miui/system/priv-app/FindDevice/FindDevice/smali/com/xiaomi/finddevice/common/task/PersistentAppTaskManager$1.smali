.class Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$1;
.super Ljava/lang/Object;
.source "PersistentAppTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performQueueTaskForRunTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

.field final synthetic val$task:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
    .param p2, "val$task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$1;->this$0:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    iput-object p2, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$1;->val$task:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$1;->this$0:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$1;->val$task:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->-wrap2(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 598
    return-void
.end method
