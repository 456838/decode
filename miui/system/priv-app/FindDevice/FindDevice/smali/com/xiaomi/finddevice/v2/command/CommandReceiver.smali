.class public Lcom/xiaomi/finddevice/v2/command/CommandReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;
.source "CommandReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->isOwnerUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Not owner user. Do nothing. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 23
    return-void

    .line 26
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/finddevice/v2/command/CommandService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 29
    invoke-static {p1, v0}, Lcom/xiaomi/finddevice/v2/command/CommandReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 31
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/command/CommandReceiver;->setResultCode(I)V

    .line 15
    return-void
.end method
