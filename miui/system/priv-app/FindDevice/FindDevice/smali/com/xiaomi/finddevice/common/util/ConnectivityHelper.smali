.class public Lcom/xiaomi/finddevice/common/util/ConnectivityHelper;
.super Ljava/lang/Object;
.source "ConnectivityHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openMobileNetwork(Landroid/content/Context;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    :try_start_0
    invoke-static {}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;->enableDataConnectivity()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Mobile network enabled. "

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 24
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/NullPointerException;
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "NPE on enabling data connectivity. "

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static openWifi(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 19
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 20
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 21
    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "Wifi enabled. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public static openWifiAndMobileNetwork(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/util/ConnectivityHelper;->openWifi(Landroid/content/Context;)V

    .line 14
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/util/ConnectivityHelper;->openMobileNetwork(Landroid/content/Context;)V

    .line 12
    return-void
.end method
