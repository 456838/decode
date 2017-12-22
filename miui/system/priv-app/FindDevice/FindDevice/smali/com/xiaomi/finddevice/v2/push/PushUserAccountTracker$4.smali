.class final Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker$4;
.super Landroid/content/BroadcastReceiver;
.source "PushUserAccountTracker.java"


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
    .line 81
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "called. "

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 85
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "Not connected. "

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 87
    return-void

    .line 89
    :cond_0
    invoke-static {}, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->-get1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "Do updateUserAccount. "

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->-wrap1()V

    .line 83
    :goto_0
    return-void

    .line 93
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "sNetworkErrorMark not set. "

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0
.end method
