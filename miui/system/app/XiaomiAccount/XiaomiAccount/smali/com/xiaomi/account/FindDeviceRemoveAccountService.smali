.class public Lcom/xiaomi/account/FindDeviceRemoveAccountService;
.super Landroid/app/Service;
.source ""


# instance fields
.field private final nF:I

.field private final nG:Ljava/lang/String;

.field private nH:Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string/jumbo v0, "FindDeviceRemoveAccount"

    iput-object v0, p0, Lcom/xiaomi/account/FindDeviceRemoveAccountService;->nG:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/account/FindDeviceRemoveAccountService;->nF:I

    new-instance v0, Lcom/xiaomi/account/t;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/t;-><init>(Lcom/xiaomi/account/FindDeviceRemoveAccountService;)V

    iput-object v0, p0, Lcom/xiaomi/account/FindDeviceRemoveAccountService;->nH:Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub;

    return-void
.end method

.method private qW(I)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/account/FindDeviceRemoveAccountService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/FindDeviceRemoveAccountService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.finddevice"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/account/FindDeviceRemoveAccountService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.finddevice"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private qX()Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/account/FindDeviceRemoveAccountService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v0, "deviceinfo"

    invoke-static {v2, v0}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v0, "FindDeviceRemoveAccount"

    const-string/jumbo v2, "null passportInfo"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    move v0, v1

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    :try_start_0
    invoke-static {v3}, Lcom/xiaomi/account/utils/q;->oD(Lcom/xiaomi/accountsdk/account/data/a;)V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FindDeviceRemoveAccount"

    const-string/jumbo v3, "failed to delete device"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1

    :catch_1
    move-exception v4

    const-string/jumbo v4, "FindDeviceRemoveAccount"

    const-string/jumbo v5, "authentication failure"

    invoke-static {v4, v5}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v2}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private qY()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/account/FindDeviceRemoveAccountService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "FindDeviceRemoveAccount"

    const-string/jumbo v1, "no xiaomi account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/account/data/j;->mC(Z)V

    sget-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Lk:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    invoke-static {p0, v2, v0}, Lcom/xiaomi/passport/a;->OM(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;)V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v1}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :try_start_0
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "FindDeviceRemoveAccount"

    const-string/jumbo v3, "account removed successfully"

    invoke-static {v1, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Li:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    invoke-static {p0, v2, v1}, Lcom/xiaomi/passport/a;->OM(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    invoke-static {v4}, Lcom/xiaomi/account/data/j;->mC(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    :goto_1
    const-string/jumbo v2, "FindDeviceRemoveAccount"

    const-string/jumbo v3, "error when remove account"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method static synthetic qZ(Lcom/xiaomi/account/FindDeviceRemoveAccountService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/account/FindDeviceRemoveAccountService;->qW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic ra(Lcom/xiaomi/account/FindDeviceRemoveAccountService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/account/FindDeviceRemoveAccountService;->qX()Z

    move-result v0

    return v0
.end method

.method static synthetic rb(Lcom/xiaomi/account/FindDeviceRemoveAccountService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/account/FindDeviceRemoveAccountService;->qY()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/FindDeviceRemoveAccountService;->nH:Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub;

    return-object v0
.end method
