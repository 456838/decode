.class final Lcom/xiaomi/finddevice/common/util/AccountHelper$1;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/common/util/AccountHelper;->kickOutCurrentAccount(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "val$appContext"    # Landroid/content/Context;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/util/AccountHelper$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 45
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Remove-account-service binded, do removing. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 48
    invoke-static {p2}, Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;

    move-result-object v1

    .line 49
    .local v1, "finalService":Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;
    move-object v0, p0

    .line 51
    .local v0, "finalConn":Landroid/content/ServiceConnection;
    invoke-static {}, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->get()Lcom/xiaomi/finddevice/common/FindDeviceExecutor;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/finddevice/common/util/AccountHelper$1$1;

    iget-object v4, p0, Lcom/xiaomi/finddevice/common/util/AccountHelper$1;->val$appContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, p0, v1}, Lcom/xiaomi/finddevice/common/util/AccountHelper$1$1;-><init>(Lcom/xiaomi/finddevice/common/util/AccountHelper$1;Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;)V

    invoke-virtual {v2, v3}, Lcom/xiaomi/finddevice/common/FindDeviceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 72
    return-void
.end method
