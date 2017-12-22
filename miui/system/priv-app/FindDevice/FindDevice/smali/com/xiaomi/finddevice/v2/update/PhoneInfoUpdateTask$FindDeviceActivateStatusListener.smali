.class Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$FindDeviceActivateStatusListener;
.super Ljava/lang/Object;
.source "PhoneInfoUpdateTask.java"

# interfaces
.implements Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$ActivateStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FindDeviceActivateStatusListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$FindDeviceActivateStatusListener;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$FindDeviceActivateStatusListener;-><init>()V

    return-void
.end method

.method private doUplinkActivate(I)V
    .locals 3
    .param p1, "activateSimIndex"    # I

    .prologue
    .line 479
    const-string/jumbo v0, "PhoneInfoUpdateTaskTaskManager"

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    .line 480
    new-instance v1, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;-><init>(II)V

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->asTask()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    .line 479
    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 478
    return-void
.end method


# virtual methods
.method public onActivateStatusChanged(ILcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "simIndex"    # I
    .param p2, "event"    # Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;
    .param p3, "info"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 444
    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 446
    sget-object v3, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->EVENT_ACTIVATED:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    if-eq p2, v3, :cond_0

    sget-object v3, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->EVENT_UNACTIVATED:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    if-ne p2, v3, :cond_1

    .line 447
    :cond_0
    const-string/jumbo v3, "extra_activate_feature_indices"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    .line 449
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v6

    const-string/jumbo v6, "None of my business."

    aput-object v6, v3, v7

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 450
    return-void

    .line 459
    :cond_1
    sget-object v3, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->EVENT_ACTIVATED:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    if-ne p2, v3, :cond_2

    .line 460
    const-string/jumbo v3, "PhoneInfoUpdateTaskTaskManager"

    invoke-static {v3}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v3

    .line 461
    new-instance v6, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;-><init>(Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;)V

    invoke-virtual {v6}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$UploadPhoneInfoIfFindDeviceOpenSubTask;->asTask()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v6

    .line 460
    invoke-virtual {v3, v6}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 462
    return-void

    .line 465
    :cond_2
    sget-object v3, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->EVENT_UNACTIVATED:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    if-ne p2, v3, :cond_3

    .line 466
    move v1, p1

    .line 467
    .local v1, "activateSimIndex":I
    const-string/jumbo v3, "extra_activate_method"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 468
    .local v0, "activateMethod":I
    const-string/jumbo v3, "extra_activate_err_code"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 469
    .local v2, "errorCode":I
    const-string/jumbo v3, "extra_activate_notify_time"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 470
    .local v4, "errorTime":J
    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 471
    invoke-static {p1, v0, v4, v5}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->-wrap1(IIJ)V

    .line 443
    .end local v0    # "activateMethod":I
    .end local v1    # "activateSimIndex":I
    .end local v2    # "errorCode":I
    .end local v4    # "errorTime":J
    :cond_3
    :goto_0
    return-void

    .line 472
    .restart local v0    # "activateMethod":I
    .restart local v1    # "activateSimIndex":I
    .restart local v2    # "errorCode":I
    .restart local v4    # "errorTime":J
    :cond_4
    if-ne v0, v7, :cond_3

    .line 473
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$FindDeviceActivateStatusListener;->doUplinkActivate(I)V

    goto :goto_0
.end method
