.class public Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;
.super Ljava/lang/Object;
.source "OpenAlertManager.java"


# static fields
.field private static final sInstance:Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;


# instance fields
.field private mPendingAlert:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;-><init>()V

    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;->sInstance:Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doAlertLocked(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {p1}, Lmiui/cloud/finddevice/FindDeviceNotification;->notifyUserOpenSuccess(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public static get()Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;->sInstance:Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized alert(Landroid/content/Context;)Z
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    .line 17
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 18
    const-string/jumbo v1, "device_provisioned"

    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Provision in process. alert later. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;->mPendingAlert:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 21
    return v3

    .line 24
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;->doAlertLocked(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 25
    return v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onProvisionComplete(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 30
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;->mPendingAlert:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Pending alert here. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;->mPendingAlert:Z

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;->doAlertLocked(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 29
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
