.class Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask$1;
.super Landroid/content/BroadcastReceiver;
.source "PeriodicUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;->turnOffV1FindDevice(Landroid/accounts/Account;Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;
    .param p2, "val$latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask$1;->this$1:Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask;

    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask$FindDeviceOTAUpdateSubTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 271
    return-void
.end method
