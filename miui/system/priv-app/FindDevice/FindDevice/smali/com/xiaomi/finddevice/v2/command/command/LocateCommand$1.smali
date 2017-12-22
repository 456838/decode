.class Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$1;
.super Ljava/lang/Object;
.source "LocateCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->startToGetAndReportLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$1;->this$0:Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 118
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$1;->this$0:Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/finddevice/common/util/ConnectivityHelper;->openWifi(Landroid/content/Context;)V

    .line 120
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .line 121
    const-string/jumbo v2, "network"

    aput-object v2, v7, v9

    const-string/jumbo v2, "gps"

    aput-object v2, v7, v11

    .line 124
    .local v7, "PROVIDERS_TO_USE":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$1;->this$0:Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 126
    .local v0, "locationManager":Landroid/location/LocationManager;
    array-length v10, v7

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_1

    aget-object v1, v7, v8

    .line 128
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    if-nez v2, :cond_0

    .line 129
    new-array v2, v11, [Ljava/lang/Object;

    const-string/jumbo v3, "Provider %s is not avaliable, skip. "

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v1, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 126
    :goto_1
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$1;->this$0:Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v11}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 136
    new-instance v5, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$1;->this$0:Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    invoke-direct {v5, v2, v1}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;-><init>(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;Ljava/lang/String;)V

    .line 137
    .local v5, "listener":Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$1;->this$0:Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    invoke-static {v2}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->-get0(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const-wide/16 v2, 0x3a98

    .line 139
    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    .line 138
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_1

    .line 116
    .end local v1    # "provider":Ljava/lang/String;
    .end local v5    # "listener":Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;
    :cond_1
    return-void
.end method
