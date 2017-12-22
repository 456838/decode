.class public Lcom/xiaomi/finddevice/common/util/StatUtil;
.super Ljava/lang/Object;
.source "StatUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static performRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 31
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.xiaomi.action.MICLOUD_STAT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.miui.cloudservice"

    const-string/jumbo v5, "com.miui.cloudservice.stat.StatService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    const-string/jumbo v3, "extra_stat_type"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    const-string/jumbo v3, "extra_stat_category"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string/jumbo v3, "extra_stat_key"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 39
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/SecurityException;
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static recordVerifyFindDeviceNotificationClickEvent(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string/jumbo v0, "category_finddevice"

    const-string/jumbo v1, "key_finddevice_notification_click"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/finddevice/common/util/StatUtil;->performRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static recordVerifyFindDeviceNotificationShowEvent(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const-string/jumbo v0, "category_finddevice"

    const-string/jumbo v1, "key_finddevice_notification_show"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/finddevice/common/util/StatUtil;->performRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method
