.class public Lcom/xiaomi/finddevice/v2/receiver/TimeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeChangeReceiver.java"


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
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->isOwnerUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Not owner user, do nothing. "

    aput-object v1, v0, v2

    const-string/jumbo v1, "UserId: "

    aput-object v1, v0, v3

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
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "ACTION DENIED. "

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 25
    return-void

    .line 28
    :cond_1
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask;->doUpdateAlarm()V

    .line 17
    return-void
.end method
