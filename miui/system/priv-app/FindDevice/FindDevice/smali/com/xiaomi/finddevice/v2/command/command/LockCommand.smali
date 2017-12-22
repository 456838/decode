.class public Lcom/xiaomi/finddevice/v2/command/command/LockCommand;
.super Lcom/xiaomi/finddevice/v2/command/command/Command;
.source "LockCommand.java"


# instance fields
.field private mLockMessage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "skey"    # Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/command/command/Command;-><init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)V

    .line 17
    return-void
.end method

.method private static notifyKeyguradNewMessage(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;

    .prologue
    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, "extra":Landroid/os/Bundle;
    const-string/jumbo v1, "notify_extra_key_update_message_content"

    .line 77
    invoke-virtual {p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x2

    .line 79
    invoke-static {p0, v1, v0}, Lmiui/cloud/finddevice/FindDeviceKeyguardController;->notify(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected onChangeFindDeviceStatus(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;)V
    .locals 2
    .param p1, "lockMsg"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->lockLocal(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method protected onExecute()Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;
    .locals 4

    .prologue
    .line 39
    invoke-super {p0}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onExecute()Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    .line 41
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;->mLockMessage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;->onChangeFindDeviceStatus(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;)V

    .line 46
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;->mLockMessage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;->mLockMessage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;->notifyKeyguradNewMessage(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;)V

    .line 51
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;->reply(Ljava/lang/Object;)Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    sget-object v1, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;->FINISHED:Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    return-object v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Send reply failed. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onGetBinaryName()S
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x2

    return v0
.end method

.method protected onGetStringName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "lock"

    return-object v0
.end method

.method protected onInitWithPushData(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "pushData"    # Lorg/json/JSONObject;
    .param p2, "commandContent"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 24
    invoke-super {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onInitWithPushData(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 26
    const-string/jumbo v1, "message"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 28
    .local v0, "messageJSON":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 29
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "messageJSON: "

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 30
    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;->mLockMessage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;

    .line 23
    :goto_0
    return-void

    .line 32
    :cond_0
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "NULL messageJSON. "

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 33
    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;

    invoke-direct {v1, v3, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;->mLockMessage:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;

    goto :goto_0
.end method
