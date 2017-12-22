.class public Lcom/xiaomi/finddevice/v2/receiver/XSIMStateNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "XSIMStateNotificationReceiver.java"


# static fields
.field private static final ACCEPTED_ACTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 21
    const-string/jumbo v1, "com.xiaomi.X_SIM_INSERTED"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 22
    const-string/jumbo v1, "com.xiaomi.X_SIM_REMOVED"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 23
    const-string/jumbo v1, "com.xiaomi.X_SIM_NEW_CLOUDID"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 24
    const-string/jumbo v1, "com.xiaomi.X_SIM_CLOUDID_CHANGED"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 25
    const-string/jumbo v1, "com.xiaomi.X_SIM_SIMID_READY"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 20
    sput-object v0, Lcom/xiaomi/finddevice/v2/receiver/XSIMStateNotificationReceiver;->ACCEPTED_ACTIONS:[Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->isOwnerUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Not owner user, do nothing. "

    aput-object v2, v1, v3

    const-string/jumbo v2, "UserId: "

    aput-object v2, v1, v4

    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->getUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 33
    return-void

    .line 36
    :cond_0
    sget-object v1, Lcom/xiaomi/finddevice/v2/receiver/XSIMStateNotificationReceiver;->ACCEPTED_ACTIONS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "ACTION DENIED. "

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 38
    return-void

    .line 41
    :cond_1
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p2}, Lmiui/cloud/common/XDebugUtils;->intent2string(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.xiaomi.X_SIM_CLOUDID_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->notifyCloudIdChanged()V

    .line 29
    :cond_2
    :goto_0
    return-void

    .line 47
    :cond_3
    const-string/jumbo v1, "com.xiaomi.X_SIM_SIMID_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->notifySimIdReady()V

    goto :goto_0

    .line 49
    :cond_4
    const-string/jumbo v1, "com.xiaomi.X_SIM_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->notifySimRemoved()V

    goto :goto_0
.end method
