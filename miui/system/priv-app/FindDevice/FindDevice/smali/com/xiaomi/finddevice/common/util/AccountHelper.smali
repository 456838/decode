.class public Lcom/xiaomi/finddevice/common/util/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoginedXiaomiAccountUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 27
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string/jumbo v2, "com.xiaomi"

    .line 26
    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 28
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 29
    aget-object v2, v0, v3

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v2

    .line 31
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static hasXiaomiAccountLogined(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/util/AccountHelper;->getLoginedXiaomiAccountUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static kickOutCurrentAccount(Landroid/content/Context;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, "appContext":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.BIND_FIND_DEVICE_REMOVE_ACCOUNT_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.xiaomi.account"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "Begin to bind the remove-account-service. "

    aput-object v4, v3, v6

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 41
    new-instance v3, Lcom/xiaomi/finddevice/common/util/AccountHelper$1;

    invoke-direct {v3, v0}, Lcom/xiaomi/finddevice/common/util/AccountHelper$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 76
    .local v1, "connect":Z
    if-nez v1, :cond_0

    .line 77
    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "Failed to bind to the remove-account-service. "

    aput-object v4, v3, v6

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 34
    :cond_0
    return-void
.end method
