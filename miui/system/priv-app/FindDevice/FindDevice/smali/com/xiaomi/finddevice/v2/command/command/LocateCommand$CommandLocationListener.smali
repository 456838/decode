.class Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;
.super Ljava/lang/Object;
.source "LocateCommand.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandLocationListener"
.end annotation


# instance fields
.field private mDestroyed:Z

.field private final mProvider:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;


# direct methods
.method public constructor <init>(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;->this$0:Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;->mProvider:Ljava/lang/String;

    .line 364
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;->mDestroyed:Z

    .line 409
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 12
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 373
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 374
    new-array v0, v11, [Ljava/lang/Object;

    const-string/jumbo v1, "Provider: %s. Destroyed, ignore onLocationChanged. "

    new-array v2, v11, [Ljava/lang/Object;

    .line 375
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;->mProvider:Ljava/lang/String;

    aput-object v3, v2, v10

    .line 374
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 376
    return-void

    .line 379
    :cond_0
    new-array v0, v11, [Ljava/lang/Object;

    const-string/jumbo v1, "Report location. location: %s, provider: %s. "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v10

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;->mProvider:Ljava/lang/String;

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 382
    :try_start_0
    iget-object v9, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;->this$0:Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    new-instance v0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;

    .line 383
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;->mProvider:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 385
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 386
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    .line 382
    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;-><init>(Ljava/lang/String;DDF)V

    invoke-virtual {v9, v0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->reply(Ljava/lang/Object;)Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    move-result-object v8

    .line 387
    .local v8, "gate":Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;->SMS:Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    if-ne v8, v0, :cond_1

    .line 388
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Reported by SMS. Stop further reporting. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 389
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;->this$0:Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    invoke-static {v0, p0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->-wrap1(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$CommandLocationListener;)V
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v8    # "gate":Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;
    :cond_1
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v7

    .line 392
    .local v7, "e":Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;
    new-array v0, v11, [Ljava/lang/Object;

    const-string/jumbo v1, "Failed to reply. "

    aput-object v1, v0, v10

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 406
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 402
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 398
    return-void
.end method
