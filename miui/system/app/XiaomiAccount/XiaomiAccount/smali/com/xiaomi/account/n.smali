.class public Lcom/xiaomi/account/n;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sb()Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/account/utils/u;->pr()Z

    move-result v0

    return v0
.end method

.method public sc(Landroid/content/Context;Z)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "is_find_device_status_open"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xiaomi/account/LoginSuccessTaskService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public sd(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lmiui/cloud/finddevice/e;->aHa(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public se(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lmiui/cloud/finddevice/e;->aHb(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public sf(Landroid/content/Context;)Lcom/xiaomi/account/data/c;
    .locals 5

    new-instance v1, Lcom/xiaomi/account/data/c;

    invoke-direct {v1}, Lcom/xiaomi/account/data/c;-><init>()V

    sget-object v0, Lcom/xiaomi/account/data/PassportCheckFindDeviceResult$CheckOperationResult;->kS:Lcom/xiaomi/account/data/PassportCheckFindDeviceResult$CheckOperationResult;

    iput-object v0, v1, Lcom/xiaomi/account/data/c;->kF:Lcom/xiaomi/account/data/PassportCheckFindDeviceResult$CheckOperationResult;

    invoke-static {p1}, Lmiui/cloud/finddevice/a;->aGG(Landroid/content/Context;)Lmiui/cloud/finddevice/a;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Lmiui/cloud/finddevice/a;->aGD()Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;

    move-result-object v0

    iget-object v3, v0, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;->asW:Lmiui/cloud/finddevice/FindDeviceInfo;

    iget-object v0, v0, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;->asX:Lmiui/cloud/finddevice/d;

    sget-object v4, Lcom/xiaomi/account/data/PassportCheckFindDeviceResult$CheckOperationResult;->kT:Lcom/xiaomi/account/data/PassportCheckFindDeviceResult$CheckOperationResult;

    iput-object v4, v1, Lcom/xiaomi/account/data/c;->kF:Lcom/xiaomi/account/data/PassportCheckFindDeviceResult$CheckOperationResult;

    iget-boolean v4, v3, Lmiui/cloud/finddevice/FindDeviceInfo;->asT:Z

    iput-boolean v4, v1, Lcom/xiaomi/account/data/c;->kL:Z

    iget-boolean v4, v3, Lmiui/cloud/finddevice/FindDeviceInfo;->asS:Z

    iput-boolean v4, v1, Lcom/xiaomi/account/data/c;->kK:Z

    iget-object v4, v3, Lmiui/cloud/finddevice/FindDeviceInfo;->asV:Ljava/lang/String;

    iput-object v4, v1, Lcom/xiaomi/account/data/c;->kQ:Ljava/lang/String;

    iget-object v4, v3, Lmiui/cloud/finddevice/FindDeviceInfo;->asP:Ljava/lang/String;

    iput-object v4, v1, Lcom/xiaomi/account/data/c;->kG:Ljava/lang/String;

    iget-object v4, v3, Lmiui/cloud/finddevice/FindDeviceInfo;->asU:Ljava/lang/String;

    iput-object v4, v1, Lcom/xiaomi/account/data/c;->kP:Ljava/lang/String;

    iget-object v4, v3, Lmiui/cloud/finddevice/FindDeviceInfo;->asQ:Ljava/lang/String;

    iput-object v4, v1, Lcom/xiaomi/account/data/c;->kH:Ljava/lang/String;

    iget-object v4, v0, Lmiui/cloud/finddevice/d;->asZ:Ljava/lang/String;

    iput-object v4, v1, Lcom/xiaomi/account/data/c;->kN:Ljava/lang/String;

    iget-object v0, v0, Lmiui/cloud/finddevice/d;->asY:Ljava/lang/String;

    iput-object v0, v1, Lcom/xiaomi/account/data/c;->kO:Ljava/lang/String;

    invoke-static {v3}, Lmiui/cloud/finddevice/a;->aGF(Lmiui/cloud/finddevice/FindDeviceInfo;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/account/data/c;->kR:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lmiui/cloud/finddevice/a;->aGH()V

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v3, "PassportFindDeviceImpl"

    const-string/jumbo v4, "Checking find device status failed"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Lcom/xiaomi/account/h;

    invoke-direct {v3}, Lcom/xiaomi/account/h;-><init>()V

    invoke-virtual {v3, p1, v0}, Lcom/xiaomi/account/h;->rH(Landroid/content/Context;Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaomi/account/data/c;->kI:Ljava/lang/String;

    invoke-virtual {v3, p1, v0}, Lcom/xiaomi/account/h;->rG(Landroid/content/Context;Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaomi/account/data/c;->kJ:Ljava/lang/String;

    invoke-virtual {v3, p1, v0}, Lcom/xiaomi/account/h;->rI(Landroid/content/Context;Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/account/data/c;->kM:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lmiui/cloud/finddevice/a;->aGH()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "PassportFindDeviceImpl"

    const-string/jumbo v4, "Checking find device status failed"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f0c0165

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/account/data/c;->kJ:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Lmiui/cloud/finddevice/a;->aGH()V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "PassportFindDeviceImpl"

    const-string/jumbo v4, "Checking find device status failed"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f0c016b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/account/data/c;->kJ:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Lmiui/cloud/finddevice/a;->aGH()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lmiui/cloud/finddevice/a;->aGH()V

    throw v0
.end method
