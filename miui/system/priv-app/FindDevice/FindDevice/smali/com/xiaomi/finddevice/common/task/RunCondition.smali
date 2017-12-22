.class public abstract Lcom/xiaomi/finddevice/common/task/RunCondition;
.super Ljava/lang/Object;
.source "RunCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;

.field private mConditionSatisfied:Z

.field private mDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 57
    monitor-enter p0

    .line 58
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/RunCondition;->mCallback:Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/finddevice/common/task/RunCondition;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final satisfied()V
    .locals 2

    .prologue
    .line 43
    monitor-enter p0

    .line 44
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/xiaomi/finddevice/common/task/RunCondition;->mConditionSatisfied:Z

    .line 46
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/RunCondition;->mCallback:Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;

    .line 47
    .local v0, "pendingCallback":Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/finddevice/common/task/RunCondition;->mCallback:Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;->onConditionSatisfied()V

    .line 40
    :cond_0
    return-void

    .line 43
    .end local v0    # "pendingCallback":Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final wait(Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;)Z
    .locals 4
    .param p1, "callback"    # Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/common/task/RunCondition;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already destroyed. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 27
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/common/task/RunCondition;->mConditionSatisfied:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    .line 28
    return v1

    .line 31
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/RunCondition;->mCallback:Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;

    if-eqz v0, :cond_2

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Replace the existing pending callback. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 34
    :cond_2
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/RunCondition;->mCallback:Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 37
    return v3
.end method
