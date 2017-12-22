.class Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;
.super Landroid/os/AsyncTask;
.source "FindDeviceKeyguardPageUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeFindDeviceStatusToUnlockTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;


# direct methods
.method private constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    .prologue
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 512
    check-cast p1, [Landroid/content/Context;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 515
    aget-object v4, p1, v4

    invoke-static {v4}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->obtain(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceStatusManager;

    move-result-object v3

    .line 517
    .local v3, "findDeviceStatusManager":Lmiui/cloud/finddevice/FindDeviceStatusManager;
    :try_start_0
    invoke-virtual {v3}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->unlock()V

    .line 518
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set5(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    invoke-virtual {v3}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    .line 540
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 527
    :catch_0
    move-exception v2

    .line 528
    .local v2, "e":Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;
    :try_start_1
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set5(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z

    .line 529
    iget v4, v2, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;->errno:I

    const/16 v5, -0x64

    if-ne v4, v5, :cond_0

    .line 530
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    iget-object v5, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const v6, 0x7f070022

    invoke-virtual {v5, v6}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set4(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    :goto_1
    invoke-virtual {v3}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    goto :goto_0

    .line 531
    :cond_0
    :try_start_2
    iget v4, v2, Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;->errno:I

    const/4 v5, -0x8

    if-ne v4, v5, :cond_1

    .line 532
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    iget-object v5, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const v6, 0x7f070019

    invoke-virtual {v5, v6}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set4(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 536
    .end local v2    # "e":Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;
    :catchall_0
    move-exception v4

    .line 537
    invoke-virtual {v3}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    .line 536
    throw v4

    .line 534
    .restart local v2    # "e":Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    iget-object v5, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const v6, 0x7f070020

    invoke-virtual {v5, v6}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set4(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 523
    .end local v2    # "e":Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException;
    :catch_1
    move-exception v0

    .line 524
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 525
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set5(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z

    .line 526
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    iget-object v5, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const v6, 0x7f070023

    invoke-virtual {v5, v6}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set4(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 537
    invoke-virtual {v3}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    goto :goto_0

    .line 519
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 520
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    :try_start_4
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 521
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set5(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z

    .line 522
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    iget-object v5, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const v6, 0x7f070022

    invoke-virtual {v5, v6}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set4(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 537
    invoke-virtual {v3}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Object;

    .prologue
    .line 544
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "aVoid":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set3(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;

    .line 546
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$ChangeFindDeviceStatusToUnlockTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-wrap2(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V

    .line 544
    return-void
.end method
