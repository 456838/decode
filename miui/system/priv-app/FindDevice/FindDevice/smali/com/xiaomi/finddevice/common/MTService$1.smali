.class Lcom/xiaomi/finddevice/common/MTService$1;
.super Ljava/lang/Object;
.source "MTService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/common/MTService;->startCheckServiceBecomeAvailableThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/common/MTService;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/common/MTService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/common/MTService;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/MTService$1;->this$0:Lcom/xiaomi/finddevice/common/MTService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/MTService$1;->this$0:Lcom/xiaomi/finddevice/common/MTService;

    invoke-static {v2}, Lcom/xiaomi/finddevice/common/MTService;->-get0(Lcom/xiaomi/finddevice/common/MTService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/MTService$1;->this$0:Lcom/xiaomi/finddevice/common/MTService;

    invoke-static {v2}, Lcom/xiaomi/finddevice/common/MTService;->-get1(Lcom/xiaomi/finddevice/common/MTService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/MTService$1;->this$0:Lcom/xiaomi/finddevice/common/MTService;

    invoke-static {v2}, Lcom/xiaomi/finddevice/common/MTService;->-get0(Lcom/xiaomi/finddevice/common/MTService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 200
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3

    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/InterruptedException;
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "CheckServiceBecomeAvailableThread interrupted. "

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 197
    return-void

    .line 211
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 212
    .local v0, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    const/4 v2, 0x1

    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "CheckServiceBecomeAvailableThread: not available. "

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 214
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/MTService$1;->this$0:Lcom/xiaomi/finddevice/common/MTService;

    invoke-static {v2}, Lcom/xiaomi/finddevice/common/MTService;->-get0(Lcom/xiaomi/finddevice/common/MTService;)Ljava/lang/Object;

    move-result-object v2

    .line 215
    const-wide/32 v4, 0x493e0

    .line 214
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    .end local v0    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :cond_0
    :try_start_4
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/MTService$1;->this$0:Lcom/xiaomi/finddevice/common/MTService;

    invoke-virtual {v2}, Lcom/xiaomi/finddevice/common/MTService;->testAvailability()V

    .line 208
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "CheckServiceBecomeAvailableThread: available. "

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 209
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/MTService$1;->this$0:Lcom/xiaomi/finddevice/common/MTService;

    invoke-static {v2}, Lcom/xiaomi/finddevice/common/MTService;->-wrap0(Lcom/xiaomi/finddevice/common/MTService;)V
    :try_end_4
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 218
    :try_start_5
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/MTService$1;->this$0:Lcom/xiaomi/finddevice/common/MTService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/xiaomi/finddevice/common/MTService;->-set0(Lcom/xiaomi/finddevice/common/MTService;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0
.end method
