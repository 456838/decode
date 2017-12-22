.class public Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService;
.super Landroid/app/Service;
.source "FindDeviceStatusManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;
    }
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->ensureRunAsOwnerUser()V

    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 43
    new-instance v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;-><init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService;->mBinder:Landroid/os/IBinder;

    .line 39
    return-void
.end method
