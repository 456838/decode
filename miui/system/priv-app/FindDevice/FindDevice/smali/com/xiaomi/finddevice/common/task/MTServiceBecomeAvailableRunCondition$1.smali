.class Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition$1;
.super Ljava/lang/Object;
.source "MTServiceBecomeAvailableRunCondition.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;->startMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition$1;->this$0:Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMTServiceBecomeAvailable(Lcom/xiaomi/finddevice/common/MTService;)V
    .locals 1
    .param p1, "mtService"    # Lcom/xiaomi/finddevice/common/MTService;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition$1;->this$0:Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;->eventArrived()V

    .line 13
    return-void
.end method
