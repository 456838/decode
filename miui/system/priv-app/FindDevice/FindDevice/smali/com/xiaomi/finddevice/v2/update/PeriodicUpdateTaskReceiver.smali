.class public Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTaskReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PeriodicUpdateTaskReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 12
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->ensureRunAsOwnerUser()V

    .line 13
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask;->doAll(Z)V

    .line 11
    return-void
.end method
