.class Lcom/xiaomi/finddevice/common/util/AccountHelper$1$1;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/common/util/AccountHelper$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/finddevice/common/util/AccountHelper$1;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$finalConn:Landroid/content/ServiceConnection;

.field final synthetic val$finalService:Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/common/util/AccountHelper$1;Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaomi/finddevice/common/util/AccountHelper$1;
    .param p2, "val$appContext"    # Landroid/content/Context;
    .param p3, "val$finalConn"    # Landroid/content/ServiceConnection;
    .param p4, "val$finalService"    # Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/util/AccountHelper$1$1;->this$1:Lcom/xiaomi/finddevice/common/util/AccountHelper$1;

    iput-object p2, p0, Lcom/xiaomi/finddevice/common/util/AccountHelper$1$1;->val$appContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/finddevice/common/util/AccountHelper$1$1;->val$finalConn:Landroid/content/ServiceConnection;

    iput-object p4, p0, Lcom/xiaomi/finddevice/common/util/AccountHelper$1$1;->val$finalService:Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/util/AccountHelper$1$1;->val$finalService:Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;

    invoke-interface {v2}, Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;->removeAccount()Z

    move-result v1

    .line 56
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 57
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Account removed. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/util/AccountHelper$1$1;->val$appContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/util/AccountHelper$1$1;->val$finalConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 53
    .end local v1    # "result":Z
    :goto_1
    return-void

    .line 59
    .restart local v1    # "result":Z
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Failed to remove account. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x2

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Failed to remove account. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/util/AccountHelper$1$1;->val$appContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/util/AccountHelper$1$1;->val$finalConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    .line 63
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 64
    iget-object v3, p0, Lcom/xiaomi/finddevice/common/util/AccountHelper$1$1;->val$appContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/finddevice/common/util/AccountHelper$1$1;->val$finalConn:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 63
    throw v2
.end method
