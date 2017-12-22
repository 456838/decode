.class Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition$1;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastEventRunCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->startMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition$1;->this$0:Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition$1;->isInitialStickyBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Ignore sticky broadcast. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 30
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition$1;->this$0:Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->onFilterBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition$1;->this$0:Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->eventArrived()V

    .line 27
    return-void
.end method
