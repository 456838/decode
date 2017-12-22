.class public Lmiui/cloud/finddevice/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final asJ:Landroid/content/Intent;


# instance fields
.field private asK:Landroid/content/Context;

.field private asL:Lmiui/cloud/finddevice/IFindDeviceStatusManager;

.field private asM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lmiui/cloud/finddevice/a;->asJ:Landroid/content/Intent;

    sget-object v0, Lmiui/cloud/finddevice/a;->asJ:Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.cloudservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lmiui/cloud/finddevice/a;->asJ:Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.action.MICLOUD_FIND_DEVICE_GUIDE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/cloud/finddevice/a;->asK:Landroid/content/Context;

    return-void
.end method

.method private static aGB()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Methods can not be called in the main thread. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static aGC(Lmiui/cloud/finddevice/FindDeviceOperationResult;)V
    .locals 4

    iget-boolean v0, p0, Lmiui/cloud/finddevice/FindDeviceOperationResult;->asO:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/cloud/finddevice/FindDeviceOperationResult;->errorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, ""

    :cond_1
    iget v1, p0, Lmiui/cloud/finddevice/FindDeviceOperationResult;->errno:I

    const/4 v2, -0x7

    if-ne v1, v2, :cond_2

    new-instance v1, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;

    new-instance v2, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerOperationFailedException;

    iget v3, p0, Lmiui/cloud/finddevice/FindDeviceOperationResult;->asN:I

    invoke-direct {v2, v3}, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerOperationFailedException;-><init>(I)V

    iget v3, p0, Lmiui/cloud/finddevice/FindDeviceOperationResult;->errno:I

    invoke-direct {v1, v0, v2, v3}, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    :cond_2
    new-instance v1, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;

    iget v2, p0, Lmiui/cloud/finddevice/FindDeviceOperationResult;->errno:I

    invoke-direct {v1, v0, v2}, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private declared-synchronized aGE()Lmiui/cloud/finddevice/IFindDeviceStatusManager;
    .locals 4

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lmiui/cloud/finddevice/a;->asL:Lmiui/cloud/finddevice/IFindDeviceStatusManager;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiui/cloud/finddevice/a;->asM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Bind service: "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lmiui/cloud/finddevice/a;->asK:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/c/a;->aHs([Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/cloud/finddevice/a;->asM:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.xiaomi.finddevice"

    const-string/jumbo v3, "com.xiaomi.finddevice.v2.FindDeviceStatusManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/cloud/finddevice/a;->asK:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t bind service. Did you misconfig the SERVICE_PACKAGE or SERVICE_CLASS? "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lmiui/cloud/finddevice/a;->wait()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/cloud/finddevice/a;->asL:Lmiui/cloud/finddevice/IFindDeviceStatusManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public static aGF(Lmiui/cloud/finddevice/FindDeviceInfo;)Z
    .locals 2

    const-string/jumbo v0, "1665249865"

    iget-object v1, p0, Lmiui/cloud/finddevice/FindDeviceInfo;->asV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static aGG(Landroid/content/Context;)Lmiui/cloud/finddevice/a;
    .locals 1

    new-instance v0, Lmiui/cloud/finddevice/a;

    invoke-direct {v0, p0}, Lmiui/cloud/finddevice/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public aGD()Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;
    .locals 2

    invoke-static {}, Lmiui/cloud/finddevice/a;->aGB()V

    invoke-direct {p0}, Lmiui/cloud/finddevice/a;->aGE()Lmiui/cloud/finddevice/IFindDeviceStatusManager;

    move-result-object v0

    new-instance v1, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;

    invoke-direct {v1}, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;-><init>()V

    invoke-interface {v0, v1}, Lmiui/cloud/finddevice/IFindDeviceStatusManager;->aGL(Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v0

    invoke-static {v0}, Lmiui/cloud/finddevice/a;->aGC(Lmiui/cloud/finddevice/FindDeviceOperationResult;)V

    return-object v1
.end method

.method public declared-synchronized aGH()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/cloud/finddevice/a;->asM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/cloud/finddevice/a;->asK:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aGI()V
    .locals 1

    invoke-static {}, Lmiui/cloud/finddevice/a;->aGB()V

    invoke-direct {p0}, Lmiui/cloud/finddevice/a;->aGE()Lmiui/cloud/finddevice/IFindDeviceStatusManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/cloud/finddevice/IFindDeviceStatusManager;->aGQ()Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v0

    invoke-static {v0}, Lmiui/cloud/finddevice/a;->aGC(Lmiui/cloud/finddevice/FindDeviceOperationResult;)V

    return-void
.end method

.method public close()V
    .locals 1

    invoke-static {}, Lmiui/cloud/finddevice/a;->aGB()V

    invoke-direct {p0}, Lmiui/cloud/finddevice/a;->aGE()Lmiui/cloud/finddevice/IFindDeviceStatusManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/cloud/finddevice/IFindDeviceStatusManager;->close()Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v0

    invoke-static {v0}, Lmiui/cloud/finddevice/a;->aGC(Lmiui/cloud/finddevice/FindDeviceOperationResult;)V

    return-void
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;->aHc(Landroid/os/IBinder;)Lmiui/cloud/finddevice/IFindDeviceStatusManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/cloud/finddevice/a;->asL:Lmiui/cloud/finddevice/IFindDeviceStatusManager;

    invoke-virtual {p0}, Lmiui/cloud/finddevice/a;->notifyAll()V

    const-string/jumbo v0, "FindDeviceStatusManager"

    const-string/jumbo v1, "service bind. "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lmiui/cloud/finddevice/a;->asL:Lmiui/cloud/finddevice/IFindDeviceStatusManager;

    const-string/jumbo v0, "FindDeviceStatusManager"

    const-string/jumbo v1, "service unbind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
