.class public Lcom/xiaomi/finddevice/v2/receiver/ProvisionCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProvisionCompleteReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->isOwnerUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Not owner user, do nothing. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "UserId: "

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 20
    return-void

    .line 23
    :cond_0
    invoke-static {}, Lcom/xiaomi/finddevice/v2/check/CheckTask;->doCheckLock()V

    .line 24
    invoke-static {}, Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;->get()Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;->onProvisionComplete(Landroid/content/Context;)V

    .line 16
    return-void
.end method
