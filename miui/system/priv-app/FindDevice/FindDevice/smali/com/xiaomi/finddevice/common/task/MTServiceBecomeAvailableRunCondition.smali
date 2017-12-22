.class public Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;
.super Lcom/xiaomi/finddevice/common/task/EventRunCondition;
.source "MTServiceBecomeAvailableRunCondition.java"


# instance fields
.field private mListener:Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/EventRunCondition;-><init>()V

    return-void
.end method


# virtual methods
.method protected startMonitor()V
    .locals 4

    .prologue
    .line 11
    new-instance v0, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition$1;-><init>(Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;->mListener:Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;

    .line 18
    invoke-static {}, Lcom/xiaomi/finddevice/common/MTService;->get()Lcom/xiaomi/finddevice/common/MTService;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;->mListener:Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;

    .line 20
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/finddevice/common/MTService;->addOnServiceBecomeAvailableListener(Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;Landroid/os/Handler;)V

    .line 10
    return-void
.end method

.method protected stopMonitor()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/xiaomi/finddevice/common/MTService;->get()Lcom/xiaomi/finddevice/common/MTService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/MTServiceBecomeAvailableRunCondition;->mListener:Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/MTService;->removeOnServiceBecomeAvailableListener(Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;)V

    .line 24
    return-void
.end method
