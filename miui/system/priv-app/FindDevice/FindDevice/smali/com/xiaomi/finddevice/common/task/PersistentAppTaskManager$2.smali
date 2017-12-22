.class Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$2;
.super Ljava/lang/Object;
.source "PersistentAppTaskManager.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performWaitConditionTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;Lcom/xiaomi/finddevice/common/task/RunCondition;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;
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
    .line 693
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$2;->this$0:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    iput-object p2, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$2;->val$task:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConditionSatisfied()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$2;->this$0:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$2;->val$task:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->-wrap1(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 695
    return-void
.end method
