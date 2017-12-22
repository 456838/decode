.class final Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker$3;
.super Ljava/lang/Object;
.source "PushUserAccountTracker.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->initTrack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMTServiceBecomeAvailable(Lcom/xiaomi/finddevice/common/MTService;)V
    .locals 4
    .param p1, "mtService"    # Lcom/xiaomi/finddevice/common/MTService;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "called. "

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "Do updateUserAccount. "

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->-wrap1()V

    .line 68
    :goto_0
    return-void

    .line 74
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "sMTServiceUnavailableMark not set. "

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0
.end method
