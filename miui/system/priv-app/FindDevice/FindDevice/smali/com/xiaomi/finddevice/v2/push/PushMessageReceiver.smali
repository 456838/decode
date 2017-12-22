.class public Lcom/xiaomi/finddevice/v2/push/PushMessageReceiver;
.super Lcom/xiaomi/mipush/sdk/PushMessageReceiver;
.source "PushMessageReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;-><init>()V

    return-void
.end method

.method private onMessageArrived(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string/jumbo v0, "push"

    .line 72
    invoke-static {p1, v0, p2}, Lcom/xiaomi/finddevice/v2/command/CommandService;->postCommandWithinProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "regId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 63
    if-nez p2, :cond_0

    .line 64
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "regId == null"

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 61
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->get()Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->onRegisterCompleted(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->start(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public onCommandResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "miPushCommandMessage"    # Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;->onCommandResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    .line 52
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommand()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "command":Ljava/lang/String;
    const-string/jumbo v3, "register"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommandArguments()Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 57
    .local v2, "regId":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/xiaomi/finddevice/v2/push/PushMessageReceiver;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    .end local v0    # "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "regId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onNotificationMessageArrived(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "miPushMessage"    # Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;->onNotificationMessageArrived(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public onNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "miPushMessage"    # Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;->onNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public onReceivePassThroughMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "miPushMessage"    # Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;->onReceivePassThroughMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    .line 28
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "NUll message content. Ignore. "

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 32
    return-void

    .line 34
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/finddevice/v2/push/PushMessageReceiver;->onMessageArrived(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public onReceiveRegisterResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "miPushCommandMessage"    # Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;->onReceiveRegisterResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 20
    return-void
.end method
