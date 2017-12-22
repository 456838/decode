.class public Lcom/xiaomi/finddevice/v2/command/command/CloseCommand;
.super Lcom/xiaomi/finddevice/v2/command/command/Command;
.source "CloseCommand.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "skey"    # Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/command/command/Command;-><init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected onExecute()Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;
    .locals 4

    .prologue
    .line 18
    invoke-super {p0}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onExecute()Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    .line 19
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/CloseCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    move-result-object v1

    .line 20
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/CloseCommand;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->closeLocal(Landroid/content/Context;)V

    .line 22
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/command/command/CloseCommand;->reply(Ljava/lang/Object;)Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    sget-object v1, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;->FINISHED:Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    return-object v1

    .line 23
    :catch_0
    move-exception v0

    .line 24
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
    .line 36
    const/4 v0, 0x4

    return v0
.end method

.method protected onGetStringName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "close"

    return-object v0
.end method
