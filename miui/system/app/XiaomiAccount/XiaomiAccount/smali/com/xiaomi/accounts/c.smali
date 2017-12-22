.class abstract Lcom/xiaomi/accounts/c;
.super Lcom/xiaomi/accounts/IAccountAuthenticatorResponse$Stub;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# instance fields
.field public MA:I

.field MB:Lcom/xiaomi/accounts/IAccountManagerResponse;

.field private final MC:Z

.field final synthetic MD:Lcom/xiaomi/accounts/a;

.field final Mt:Ljava/lang/String;

.field protected final Mu:Lcom/xiaomi/accounts/b;

.field Mv:Lcom/xiaomi/accounts/IAccountAuthenticator;

.field final Mw:J

.field final Mx:Z

.field private My:I

.field private Mz:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/accounts/a;Lcom/xiaomi/accounts/b;Lcom/xiaomi/accounts/IAccountManagerResponse;Ljava/lang/String;ZZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/xiaomi/accounts/c;->MD:Lcom/xiaomi/accounts/a;

    invoke-direct {p0}, Lcom/xiaomi/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    iput v0, p0, Lcom/xiaomi/accounts/c;->MA:I

    iput v0, p0, Lcom/xiaomi/accounts/c;->Mz:I

    iput v0, p0, Lcom/xiaomi/accounts/c;->My:I

    iput-object v3, p0, Lcom/xiaomi/accounts/c;->Mv:Lcom/xiaomi/accounts/IAccountAuthenticator;

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lcom/xiaomi/accounts/c;->Mu:Lcom/xiaomi/accounts/b;

    iput-boolean p6, p0, Lcom/xiaomi/accounts/c;->MC:Z

    iput-object p3, p0, Lcom/xiaomi/accounts/c;->MB:Lcom/xiaomi/accounts/IAccountManagerResponse;

    iput-object p4, p0, Lcom/xiaomi/accounts/c;->Mt:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/xiaomi/accounts/c;->Mx:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/accounts/c;->Mw:J

    invoke-static {p1}, Lcom/xiaomi/accounts/a;->Ri(Lcom/xiaomi/accounts/a;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/accounts/a;->Ri(Lcom/xiaomi/accounts/a;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/accounts/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :try_start_1
    invoke-interface {p3}, Lcom/xiaomi/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/xiaomi/accounts/c;->MB:Lcom/xiaomi/accounts/IAccountManagerResponse;

    invoke-virtual {p0}, Lcom/xiaomi/accounts/c;->binderDied()V

    goto :goto_0
.end method

.method private RE()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/accounts/c;->Mv:Lcom/xiaomi/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/xiaomi/accounts/c;->Mv:Lcom/xiaomi/accounts/IAccountAuthenticator;

    iget-object v0, p0, Lcom/xiaomi/accounts/c;->MD:Lcom/xiaomi/accounts/a;

    invoke-static {v0}, Lcom/xiaomi/accounts/a;->Rg(Lcom/xiaomi/accounts/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method private Rv(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/xiaomi/accounts/c;->MD:Lcom/xiaomi/accounts/a;

    invoke-static {v0}, Lcom/xiaomi/accounts/a;->Rf(Lcom/xiaomi/accounts/a;)Lcom/xiaomi/accounts/k;

    move-result-object v0

    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accounts/k;->SW(Landroid/accounts/AuthenticatorDescription;)Lcom/xiaomi/accounts/l;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "AccountManagerService"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "there is no authenticator for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bailing out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v6

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.xiaomi.accounts.AccountAuthenticator"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v0, Lcom/xiaomi/accounts/l;->Nb:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "AccountManagerService"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performing bindService to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/xiaomi/accounts/l;->Nb:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/accounts/c;->MD:Lcom/xiaomi/accounts/a;

    invoke-static {v2}, Lcom/xiaomi/accounts/a;->Rg(Lcom/xiaomi/accounts/a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "AccountManagerService"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bindService to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/xiaomi/accounts/l;->Nb:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v6

    :cond_4
    return v7
.end method

.method private close()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/accounts/c;->MD:Lcom/xiaomi/accounts/a;

    invoke-static {v0}, Lcom/xiaomi/accounts/a;->Ri(Lcom/xiaomi/accounts/a;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accounts/c;->MD:Lcom/xiaomi/accounts/a;

    invoke-static {v0}, Lcom/xiaomi/accounts/a;->Ri(Lcom/xiaomi/accounts/a;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/accounts/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Lcom/xiaomi/accounts/c;->MB:Lcom/xiaomi/accounts/IAccountManagerResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accounts/c;->MB:Lcom/xiaomi/accounts/IAccountManagerResponse;

    invoke-interface {v0}, Lcom/xiaomi/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v3, p0, Lcom/xiaomi/accounts/c;->MB:Lcom/xiaomi/accounts/IAccountManagerResponse;

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/accounts/c;->Rw()V

    invoke-direct {p0}, Lcom/xiaomi/accounts/c;->RE()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public RA(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x2

    iget v0, p0, Lcom/xiaomi/accounts/c;->MA:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/accounts/c;->MA:I

    if-eqz p1, :cond_0

    const-string/jumbo v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/xiaomi/accounts/c;->Mx:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    const-string/jumbo v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/accounts/c;->MB:Lcom/xiaomi/accounts/IAccountManagerResponse;

    :goto_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_5

    :try_start_0
    const-string/jumbo v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/accounts/c;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " calling onError() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v1, "null bundle returned"

    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Lcom/xiaomi/accounts/IAccountManagerResponse;->Sz(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string/jumbo v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "accountType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accounts/c;->MD:Lcom/xiaomi/accounts/a;

    iget-object v1, p0, Lcom/xiaomi/accounts/c;->MD:Lcom/xiaomi/accounts/a;

    iget-object v3, p0, Lcom/xiaomi/accounts/c;->Mu:Lcom/xiaomi/accounts/b;

    invoke-static {v1, v3, v2}, Lcom/xiaomi/accounts/a;->Rk(Lcom/xiaomi/accounts/a;Lcom/xiaomi/accounts/b;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accounts/a;->Qg(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/accounts/c;->Rx()Lcom/xiaomi/accounts/IAccountManagerResponse;

    move-result-object v0

    goto :goto_1

    :cond_5
    :try_start_1
    iget-boolean v1, p0, Lcom/xiaomi/accounts/c;->MC:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "authtoken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_6
    const-string/jumbo v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/accounts/c;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " calling onResult() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-interface {v0, p1}, Lcom/xiaomi/accounts/IAccountManagerResponse;->SB(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "AccountManagerService"

    const-string/jumbo v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method public RB()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/accounts/c;->Rx()Lcom/xiaomi/accounts/IAccountManagerResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v1, "timeout"

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/xiaomi/accounts/IAccountManagerResponse;->Sz(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AccountManagerService"

    const-string/jumbo v2, "Session.onTimedOut: caught RemoteException while responding"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected RC()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accounts/c;->RD(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected RD(J)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Session: expectLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/accounts/c;->Mx:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/accounts/c;->Mv:Lcom/xiaomi/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", stats ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/accounts/c;->MA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/accounts/c;->Mz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/accounts/c;->My:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lifetime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/accounts/c;->Mw:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method Ru()V
    .locals 3

    const-string/jumbo v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initiating bind to authenticator type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/accounts/c;->Mt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accounts/c;->Mt:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/accounts/c;->Rv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bind attempt failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/accounts/c;->RC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "bind failure"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/accounts/c;->Ry(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public Rw()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accounts/c;->MD:Lcom/xiaomi/accounts/a;

    invoke-static {v0}, Lcom/xiaomi/accounts/a;->Rh(Lcom/xiaomi/accounts/a;)Lcom/xiaomi/accounts/d;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accounts/d;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method Rx()Lcom/xiaomi/accounts/IAccountManagerResponse;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/accounts/c;->MB:Lcom/xiaomi/accounts/IAccountManagerResponse;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accounts/c;->MB:Lcom/xiaomi/accounts/IAccountManagerResponse;

    invoke-direct {p0}, Lcom/xiaomi/accounts/c;->close()V

    return-object v0
.end method

.method public Ry(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    iget v0, p0, Lcom/xiaomi/accounts/c;->My:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/accounts/c;->My:I

    invoke-virtual {p0}, Lcom/xiaomi/accounts/c;->Rx()Lcom/xiaomi/accounts/IAccountManagerResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/accounts/c;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " calling onError() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/accounts/IAccountManagerResponse;->Sz(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "AccountManagerService"

    const-string/jumbo v2, "Session.onError: caught RemoteException while responding"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "AccountManagerService"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AccountManagerService"

    const-string/jumbo v1, "Session.onError: already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Rz()V
    .locals 1

    iget v0, p0, Lcom/xiaomi/accounts/c;->Mz:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/accounts/c;->Mz:I

    return-void
.end method

.method public binderDied()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/accounts/c;->MB:Lcom/xiaomi/accounts/IAccountManagerResponse;

    invoke-direct {p0}, Lcom/xiaomi/accounts/c;->close()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {p2}, Lcom/xiaomi/accounts/IAccountAuthenticator$Stub;->Ti(Landroid/os/IBinder;)Lcom/xiaomi/accounts/IAccountAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accounts/c;->Mv:Lcom/xiaomi/accounts/IAccountAuthenticator;

    invoke-static {}, Lcom/xiaomi/accounts/a;->Re()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accounts/s;

    invoke-direct {v1, p0}, Lcom/xiaomi/accounts/s;-><init>(Lcom/xiaomi/accounts/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/accounts/c;->Mv:Lcom/xiaomi/accounts/IAccountAuthenticator;

    invoke-virtual {p0}, Lcom/xiaomi/accounts/c;->Rx()Lcom/xiaomi/accounts/IAccountManagerResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v1, "disconnected"

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/xiaomi/accounts/IAccountManagerResponse;->Sz(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AccountManagerService"

    const-string/jumbo v2, "Session.onServiceDisconnected: caught RemoteException while responding"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract run()V
.end method
