.class Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;
.super Ljava/lang/Object;
.source "FindDeviceKeyguardPageExtraLoginStepNotification.java"

# interfaces
.implements Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelableNotificationEndListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;


# direct methods
.method private constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;

    .prologue
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;->mCanceled:Z

    .line 220
    return-void
.end method

.method public onAuthEnd(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 200
    const-string/jumbo v0, "Should run in main thread. "

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/util/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    .line 201
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Canceled. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 203
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;

    invoke-static {v0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->-wrap0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public onLoginEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "passToken"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string/jumbo v0, "Should run in main thread. "

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/util/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    .line 190
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Canceled. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 192
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->-wrap1(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public onNeedReLogin()V
    .locals 3

    .prologue
    .line 211
    const-string/jumbo v0, "Should run in main thread. "

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/util/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    .line 212
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Canceled. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 214
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification$CancelableNotificationEndListener;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;->-wrap2(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginStepNotification;)V

    .line 210
    return-void
.end method
