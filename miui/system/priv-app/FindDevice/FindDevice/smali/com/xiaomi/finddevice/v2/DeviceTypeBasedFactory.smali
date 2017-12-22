.class public Lcom/xiaomi/finddevice/v2/DeviceTypeBasedFactory;
.super Ljava/lang/Object;
.source "DeviceTypeBasedFactory.java"


# static fields
.field private static sDeviceCredentialManager:Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDeviceCredentialManager(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/xiaomi/finddevice/v2/DeviceTypeBasedFactory;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/xiaomi/finddevice/v2/DeviceTypeBasedFactory;->sDeviceCredentialManager:Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;

    invoke-direct {v0, p0}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/DeviceTypeBasedFactory;->sDeviceCredentialManager:Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;

    .line 28
    :cond_0
    sget-object v0, Lcom/xiaomi/finddevice/v2/DeviceTypeBasedFactory;->sDeviceCredentialManager:Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static obtainRequestManager(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;)Lcom/xiaomi/finddevice/v2/net/IRequestManager;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "deviceCredentialProvider"    # Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;

    .prologue
    .line 20
    invoke-static {}, Lcom/xiaomi/finddevice/common/FindDeviceHttpClient;->get()Lmiui/cloud/net/XHttpClient;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->obtain(Landroid/content/Context;Lmiui/cloud/net/XHttpClient;Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;)Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;

    move-result-object v0

    return-object v0
.end method
