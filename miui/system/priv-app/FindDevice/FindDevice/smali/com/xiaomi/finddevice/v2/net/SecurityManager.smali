.class public Lcom/xiaomi/finddevice/v2/net/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
        Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    }
.end annotation


# instance fields
.field private mAccountServiceCondition:Ljava/util/concurrent/locks/Condition;

.field private mAccountSeviceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mCtx:Landroid/content/Context;

.field private mDeviceCredentialProvider:Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;

.field private mLastUsedAuthToken:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;",
            ">;"
        }
    .end annotation
.end field

.field private mMiAccountService:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

.field private mMiAccountServiceRequested:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "deviceCredentialProvider"    # Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountSeviceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 326
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountSeviceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountServiceCondition:Ljava/util/concurrent/locks/Condition;

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mMiAccountService:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mMiAccountServiceRequested:Z

    .line 333
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 332
    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mLastUsedAuthToken:Ljava/lang/ThreadLocal;

    .line 61
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mCtx:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mDeviceCredentialProvider:Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;

    .line 60
    return-void
.end method

.method private getAccountName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->getXiaomiAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 199
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 200
    new-instance v1, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;

    const-string/jumbo v2, "No account. "

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_0
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v1
.end method

.method private getAuthToken()Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 221
    const/16 v6, 0x7530

    .line 223
    .local v6, "TIME_OUT_IN_MILLISEC":I
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->getXiaomiAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 224
    .local v1, "account":Landroid/accounts/Account;
    if-nez v1, :cond_0

    .line 225
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;

    const-string/jumbo v2, "No account. "

    invoke-direct {v0, v2}, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 240
    .end local v1    # "account":Landroid/accounts/Account;
    :catch_0
    move-exception v9

    .line 241
    .local v9, "e":Ljava/io/IOException;
    new-array v0, v12, [Ljava/lang/Object;

    const-string/jumbo v2, "Failed to get auth token, caused by IOException. "

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 242
    throw v9

    .line 229
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v1    # "account":Landroid/accounts/Account;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mCtx:Landroid/content/Context;

    .line 228
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 230
    const-string/jumbo v2, "micloudfind"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 228
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 231
    const-wide/16 v2, 0x7530

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 228
    invoke-interface {v0, v2, v3, v4}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 232
    const-string/jumbo v2, "authtoken"

    .line 228
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 233
    .local v11, "token":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;

    const-string/jumbo v2, "NULL auth token returned. "

    invoke-direct {v0, v2}, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 243
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v11    # "token":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 244
    .local v8, "e":Landroid/accounts/OperationCanceledException;
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;

    const-string/jumbo v2, "Get auth token failed. "

    invoke-direct {v0, v2, v8}, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 237
    .end local v8    # "e":Landroid/accounts/OperationCanceledException;
    .restart local v1    # "account":Landroid/accounts/Account;
    .restart local v11    # "token":Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mLastUsedAuthToken:Ljava/lang/ThreadLocal;

    invoke-static {v11}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->parse(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mLastUsedAuthToken:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 247
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v11    # "token":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 248
    .local v10, "e":Ljava/lang/NullPointerException;
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;

    const-string/jumbo v2, "Get auth token failed. "

    invoke-direct {v0, v2, v10}, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 245
    .end local v10    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v7

    .line 246
    .local v7, "e":Landroid/accounts/AuthenticatorException;
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;

    const-string/jumbo v2, "Get auth token failed. "

    invoke-direct {v0, v2, v7}, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getDeviceCredentialProvider()Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mDeviceCredentialProvider:Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mDeviceCredentialProvider:Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;

    return-object v0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/DeviceTypeBasedFactory;->getDeviceCredentialManager(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptedAccountName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->getXiaomiAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 208
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 209
    new-instance v3, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;

    const-string/jumbo v4, "No account. "

    invoke-direct {v3, v4}, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->waitMiAccountService()Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    move-result-object v1

    .line 213
    .local v1, "accountService":Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;
    :try_start_0
    invoke-interface {v1, v0}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;->getEncryptedUserId(Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 214
    :catch_0
    move-exception v2

    .line 215
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;

    const-string/jumbo v4, "Get encrypted user id falied. "

    invoke-direct {v3, v4, v2}, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getXiaomiAccount()Landroid/accounts/Account;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "account":Landroid/accounts/Account;
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mCtx:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 255
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string/jumbo v3, "com.xiaomi"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 256
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 257
    aget-object v0, v1, v4

    .line 259
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-object v0
.end method

.method public static obtain(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;)Lcom/xiaomi/finddevice/v2/net/SecurityManager;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "deviceCredentialProvider"    # Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;

    .prologue
    .line 70
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;-><init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;)V

    return-object v0
.end method

.method private waitMiAccountService()Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountSeviceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mMiAccountService:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    if-nez v1, :cond_1

    .line 268
    iget-boolean v1, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mMiAccountServiceRequested:Z

    if-nez v1, :cond_0

    .line 269
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mMiAccountServiceRequested:Z

    .line 270
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Connecting to account service"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 271
    new-instance v0, Landroid/content/Intent;

    .line 272
    const-string/jumbo v1, "android.intent.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    .line 271
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mCtx:Landroid/content/Context;

    .line 275
    const/4 v2, 0x1

    .line 274
    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    new-instance v1, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;

    .line 277
    const-string/jumbo v2, "Unable to bind to the account service. "

    .line 276
    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    .line 285
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountSeviceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 284
    throw v1

    .line 279
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountServiceCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mMiAccountService:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountSeviceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 282
    return-object v1
.end method


# virtual methods
.method public deviceMark(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .locals 4
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/xiaomi/finddevice/v2/IDeviceCredential;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 139
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->getDeviceCredentialProvider()Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mCtx:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    move-result-object v0

    .line 140
    .local v0, "deviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    if-nez v0, :cond_0

    .line 141
    new-instance v2, Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;

    invoke-direct {v2}, Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;-><init>()V

    throw v2

    .line 144
    :cond_0
    invoke-interface {v0}, Lcom/xiaomi/finddevice/v2/IDeviceCredential;->getFId()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "fid":Ljava/lang/String;
    const-string/jumbo v2, "cloudsp_fid"

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-object v0
.end method

.method public deviceSign(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .locals 10
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/xiaomi/finddevice/v2/IDeviceCredential;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 155
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->getDeviceCredentialProvider()Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mCtx:Landroid/content/Context;

    invoke-interface {v8, v9}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    move-result-object v1

    .line 156
    .local v1, "deviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    if-nez v1, :cond_0

    .line 157
    new-instance v8, Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;

    invoke-direct {v8}, Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;-><init>()V

    throw v8

    .line 160
    :cond_0
    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/IDeviceCredential;->getFId()Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "fid":Ljava/lang/String;
    const-string/jumbo v8, "cloudsp_fid"

    invoke-interface {p3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v0, "contentForSign":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 167
    .local v7, "sortedArgs":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 168
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "cloudsp_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 171
    const-string/jumbo v8, "&"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 174
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v6, 0x0

    .line 176
    .local v6, "signature":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 177
    const-string/jumbo v9, "UTF-8"

    .line 176
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-interface {v1, v8}, Lcom/xiaomi/finddevice/v2/IDeviceCredential;->sign([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 182
    .local v6, "signature":[B
    const-string/jumbo v8, "cloudp_sign"

    invoke-static {v6}, Lcom/xiaomi/finddevice/common/util/KeyTool;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-object v1

    .line 178
    .local v6, "signature":[B
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "UTF-8 not supported?"

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public invalidateLastUsedAccountAuthToken()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mLastUsedAuthToken:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    .line 189
    .local v0, "authToken":Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;
    if-nez v0, :cond_0

    .line 190
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string/jumbo v2, "com.xiaomi"

    .line 193
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->toPlain()Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mLastUsedAuthToken:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountSeviceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 294
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Connected to account service"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 295
    invoke-static {p2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mMiAccountService:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    .line 296
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountServiceCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountSeviceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 290
    return-void

    .line 298
    :catchall_0
    move-exception v0

    .line 299
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountSeviceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 298
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountSeviceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 308
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Account service disconnected. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mMiAccountService:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountSeviceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    return-void

    .line 310
    :catchall_0
    move-exception v0

    .line 311
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountSeviceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 310
    throw v0
.end method

.method public passportMarkIfPossible(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 119
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 121
    .local v1, "userId":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->getAccountName()Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 126
    .end local v1    # "userId":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 127
    const-string/jumbo v2, "cloudsp_userId"

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string/jumbo v2, "userId"

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    return-object v1

    .line 122
    .restart local v1    # "userId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Account exception encountered. Mark operation ignored."

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public passportSign(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "accountName":Ljava/lang/String;
    const-string/jumbo v6, "cloudsp_userId"

    invoke-interface {p3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v6, "userId"

    invoke-interface {p3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->getAuthToken()Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    move-result-object v1

    .line 95
    .local v1, "authToke":Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->getEncryptedAccountName()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "encryptedAccountName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v2, "cookieBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "serviceToken="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v6, v1, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string/jumbo v6, ";cUserId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const/4 v5, 0x0

    .line 104
    .local v5, "needPut":Z
    const-string/jumbo v6, "Cookie"

    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 105
    .local v3, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 106
    const/4 v5, 0x1

    .line 107
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .restart local v3    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    if-eqz v5, :cond_1

    .line 111
    const-string/jumbo v6, "Cookie"

    invoke-interface {p4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_1
    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountSeviceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 77
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mMiAccountServiceRequested:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountSeviceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 73
    return-void

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->mAccountSeviceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 80
    throw v0
.end method
