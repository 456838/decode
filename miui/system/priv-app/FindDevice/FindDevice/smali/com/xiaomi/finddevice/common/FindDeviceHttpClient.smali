.class public Lcom/xiaomi/finddevice/common/FindDeviceHttpClient;
.super Ljava/lang/Object;
.source "FindDeviceHttpClient.java"


# static fields
.field private static sInstance:Lmiui/cloud/net/XHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lmiui/cloud/net/XHttpClient;
    .locals 4

    .prologue
    const-class v2, Lcom/xiaomi/finddevice/common/FindDeviceHttpClient;

    monitor-enter v2

    .line 21
    :try_start_0
    sget-object v1, Lcom/xiaomi/finddevice/common/FindDeviceHttpClient;->sInstance:Lmiui/cloud/net/XHttpClient;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lmiui/cloud/net/XHttpClient;

    invoke-direct {v1}, Lmiui/cloud/net/XHttpClient;-><init>()V

    sput-object v1, Lcom/xiaomi/finddevice/common/FindDeviceHttpClient;->sInstance:Lmiui/cloud/net/XHttpClient;

    .line 24
    sget-object v1, Lcom/xiaomi/finddevice/common/FindDeviceHttpClient;->sInstance:Lmiui/cloud/net/XHttpClient;

    new-instance v3, Lcom/xiaomi/finddevice/common/FindDeviceHttpClient$1;

    invoke-direct {v3}, Lcom/xiaomi/finddevice/common/FindDeviceHttpClient$1;-><init>()V

    invoke-virtual {v1, v3}, Lmiui/cloud/net/XHttpClient;->setDataProcessorFactor(Lmiui/cloud/net/XHttpClient$DataProcessorFactor;)V

    .line 39
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/CloudUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "userAgentName":Ljava/lang/String;
    sget-object v1, Lcom/xiaomi/finddevice/common/FindDeviceHttpClient;->sInstance:Lmiui/cloud/net/XHttpClient;

    new-instance v3, Lcom/xiaomi/finddevice/common/FindDeviceHttpClient$2;

    invoke-direct {v3, v0}, Lcom/xiaomi/finddevice/common/FindDeviceHttpClient$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lmiui/cloud/net/XHttpClient;->setUserAgentNameProvider(Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;)V

    .line 48
    :cond_0
    sget-object v1, Lcom/xiaomi/finddevice/common/FindDeviceHttpClient;->sInstance:Lmiui/cloud/net/XHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
