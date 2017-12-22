.class public Lcom/xiaomi/finddevice/v2/command/CommandService;
.super Landroid/app/Service;
.source "CommandService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;
    }
.end annotation


# instance fields
.field private mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

.field private mLastTaskStartId:I

.field private mTaskCount:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/xiaomi/finddevice/v2/command/CommandService;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/xiaomi/finddevice/v2/command/CommandService;Landroid/content/Intent;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/command/CommandService;->onBuildCommandFailed(Landroid/content/Intent;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/xiaomi/finddevice/v2/command/CommandService;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "resultExtra"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/finddevice/v2/command/CommandService;->onCommandExecutionFinished(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mTaskCount:I

    .line 21
    return-void
.end method

.method private handleNewCommand(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 75
    iget v0, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mTaskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mTaskCount:I

    .line 76
    iput p2, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mLastTaskStartId:I

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "mTaskCount++"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mTaskCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->get()Lcom/xiaomi/finddevice/common/FindDeviceExecutor;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;-><init>(Lcom/xiaomi/finddevice/v2/command/CommandService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 81
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 82
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 74
    return-void
.end method

.method private onBuildCommandFailed(Landroid/content/Intent;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Build command failed"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/command/CommandService;->onTaskFinished(Landroid/content/Intent;)V

    .line 86
    return-void
.end method

.method private onCommandExecutionFinished(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "resultExtra"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    new-array v0, v5, [Ljava/lang/Object;

    const-string/jumbo v1, "Command execution finished. Result code: %s, resultExtra: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 95
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p3, v2, v5

    .line 94
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/command/CommandService;->onTaskFinished(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method private onTaskFinished(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 104
    iget v0, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mTaskCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mTaskCount:I

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "mTaskCount--"

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mTaskCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 106
    iget v0, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mTaskCount:I

    if-nez v0, :cond_0

    .line 107
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "mTaskCount == 0, stop. "

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 110
    iget v0, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mLastTaskStartId:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/command/CommandService;->stopSelf(I)V

    .line 100
    :cond_0
    return-void
.end method

.method public static postCommandWithinProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/finddevice/v2/command/CommandService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.finddevice.command_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string/jumbo v1, "android.intent.extra.finddevice.command"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string/jumbo v1, "inprocess"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    invoke-static {p0, v0}, Landroid/support/v4/content/WakefulBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 26
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->ensureRunAsOwnerUser()V

    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Created. "

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 42
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    .line 44
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/command/CommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 45
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/CommandService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 35
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Destroyed. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 52
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 54
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/CommandService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 50
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x2

    .line 60
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Command received. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 61
    invoke-direct {p0, p1, p3}, Lcom/xiaomi/finddevice/v2/command/CommandService;->handleNewCommand(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 62
    return v3

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 63
    throw v0
.end method
