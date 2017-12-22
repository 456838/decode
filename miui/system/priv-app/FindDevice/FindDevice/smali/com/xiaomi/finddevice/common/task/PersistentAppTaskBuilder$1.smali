.class final Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$1;
.super Ljava/lang/Object;
.source "PersistentAppTaskBuilder.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runnable:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;)V
    .locals 0
    .param p1, "val$runnable"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$1;->val$runnable:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;)Lcom/xiaomi/finddevice/common/task/RunCondition;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$1;->val$runnable:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;

    invoke-interface {v0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;->run(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method
