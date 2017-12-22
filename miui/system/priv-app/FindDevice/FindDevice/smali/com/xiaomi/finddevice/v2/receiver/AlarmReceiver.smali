.class public Lcom/xiaomi/finddevice/v2/receiver/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->ensureRunAsOwnerUser()V

    .line 15
    invoke-static {}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->get()Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;->onAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    .line 13
    return-void
.end method
