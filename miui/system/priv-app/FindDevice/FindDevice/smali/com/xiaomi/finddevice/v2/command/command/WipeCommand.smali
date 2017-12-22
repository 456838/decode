.class public Lcom/xiaomi/finddevice/v2/command/command/WipeCommand;
.super Lcom/xiaomi/finddevice/v2/command/command/Command;
.source "WipeCommand.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "skey"    # Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/command/command/Command;-><init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)V

    .line 21
    return-void
.end method

.method private doMasterClear(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/command/WipeCommand;->isSupportEraseApps()Z

    move-result v1

    invoke-static {v1}, Lmiui/os/MiuiInit;->doFactoryReset(Z)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/command/WipeCommand;->isSupportEraseStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const-string/jumbo v1, "format_sdcard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method private isExtStorageEmulated()Z
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    return v0
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 100
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSupportEraseApps()Z
    .locals 2

    .prologue
    .line 113
    const-string/jumbo v0, "support_erase_application"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isSupportEraseExternal()Z
    .locals 2

    .prologue
    .line 105
    const-string/jumbo v0, "support_erase_external_storage"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isSupportEraseStorage()Z
    .locals 2

    .prologue
    .line 89
    const-string/jumbo v1, "ro.boot.sdcard.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "sdcardType":Ljava/lang/String;
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/command/WipeCommand;->isExtStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/command/WipeCommand;->isSupportEraseExternal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/command/WipeCommand;->isExtStorageEncrypted()Z

    move-result v1

    .line 90
    if-nez v1, :cond_2

    .line 92
    :cond_1
    const-string/jumbo v1, "mixed"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 90
    if-eqz v1, :cond_3

    .line 93
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 95
    :cond_3
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected onExecute()Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;
    .locals 4

    .prologue
    .line 27
    invoke-super {p0}, Lcom/xiaomi/finddevice/v2/command/command/Command;->onExecute()Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    .line 29
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/WipeCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/SystemControlService;->notifyWipeData(Landroid/content/Context;)V

    .line 32
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/command/command/WipeCommand;->reply(Ljava/lang/Object;)Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/command/WipeCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/finddevice/v2/command/command/WipeCommand;->doMasterClear(Landroid/content/Context;)V

    .line 65
    sget-object v1, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;->FINISHED:Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    return-object v1

    .line 33
    :catch_0
    move-exception v0

    .line 34
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
    .line 75
    const/4 v0, 0x3

    return v0
.end method

.method protected onGetStringName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "wipe"

    return-object v0
.end method
