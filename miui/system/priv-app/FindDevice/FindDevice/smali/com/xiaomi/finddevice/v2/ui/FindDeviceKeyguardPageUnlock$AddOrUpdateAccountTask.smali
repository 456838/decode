.class Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;
.super Landroid/os/AsyncTask;
.source "FindDeviceKeyguardPageUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddOrUpdateAccountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
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
    .line 550
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    .prologue
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 552
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 554
    aget-object v5, p1, v7

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->getForMiuiSystemAccountService(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/MiPassportUIController;

    move-result-object v4

    .line 557
    .local v4, "miPassportUIController":Lcom/xiaomi/passport/uicontroller/MiPassportUIController;
    aget-object v5, p1, v8

    check-cast v5, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 556
    invoke-virtual {v4, v5, v9}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->addOrUpdateAccountManager(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$AddOrUpdateUICallback;)Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$AddOrUpdateAccountFuture;

    move-result-object v3

    .line 559
    .local v3, "future":Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$AddOrUpdateAccountFuture;
    :try_start_0
    invoke-virtual {v3}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$AddOrUpdateAccountFuture;->get()Ljava/lang/Object;

    .line 560
    iget-object v5, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set1(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :goto_0
    return-object v9

    .line 564
    :catch_0
    move-exception v1

    .line 566
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_1
    invoke-virtual {v3, v1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$AddOrUpdateAccountFuture;->interpretExecutionException(Ljava/util/concurrent/ExecutionException;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 567
    :catch_1
    move-exception v2

    .line 568
    .local v2, "e1":Landroid/os/RemoteException;
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 569
    iget-object v5, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-static {v5, v7}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set1(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z

    .line 570
    iget-object v5, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    iget-object v6, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const v7, 0x7f070023

    invoke-virtual {v6, v7}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 561
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "e1":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-static {v5, v7}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set1(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Z)Z

    .line 563
    iget-object v5, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    iget-object v6, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const v7, 0x7f070022

    invoke-virtual {v6, v7}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 578
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-set2(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;

    .line 580
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$AddOrUpdateAccountTask;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-wrap1(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V

    .line 578
    return-void
.end method
