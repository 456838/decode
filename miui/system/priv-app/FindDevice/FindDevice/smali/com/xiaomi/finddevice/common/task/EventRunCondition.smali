.class public abstract Lcom/xiaomi/finddevice/common/task/EventRunCondition;
.super Lcom/xiaomi/finddevice/common/task/RunCondition;
.source "EventRunCondition.java"


# instance fields
.field private mStopRequested:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/RunCondition;-><init>()V

    return-void
.end method

.method private requestStopMonitor()V
    .locals 1

    .prologue
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/common/task/EventRunCondition;->mStopRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 25
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/xiaomi/finddevice/common/task/EventRunCondition;->mStopRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 27
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/task/EventRunCondition;->stopMonitor()V

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final destroy(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/EventRunCondition;->requestStopMonitor()V

    .line 19
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/common/task/RunCondition;->destroy(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method protected final eventArrived()V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/task/EventRunCondition;->satisfied()V

    .line 13
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/EventRunCondition;->requestStopMonitor()V

    .line 11
    return-void
.end method

.method protected abstract startMonitor()V
.end method

.method public final startWatch()V
    .locals 0

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/task/EventRunCondition;->startMonitor()V

    .line 7
    return-void
.end method

.method protected abstract stopMonitor()V
.end method
