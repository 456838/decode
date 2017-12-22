.class public final Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;
.super Ljava/lang/Object;
.source "FindDeviceKeyguardManager.java"


# static fields
.field private static sInstance:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;


# instance fields
.field private mConfig:Landroid/content/SharedPreferences;

.field private mCtx:Landroid/content/Context;

.field private mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

.field private mLockData:Landroid/os/Bundle;

.field private mLocked:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mCtx:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mCtx:Landroid/content/Context;

    const-string/jumbo v1, "miui.finddevice.keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mConfig:Landroid/content/SharedPreferences;

    .line 39
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mConfig:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "key_locked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLocked:Z

    .line 40
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mConfig:Landroid/content/SharedPreferences;

    .line 41
    const-string/jumbo v1, "key_lock_data"

    .line 40
    invoke-static {v0, v1}, Lmiui/cloud/common/XBundleSharedPerference;->loadPreferencesBundle(Landroid/content/SharedPreferences;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLockData:Landroid/os/Bundle;

    .line 45
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLocked:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->handleLockStateChangeLocked(Z)V

    .line 50
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->registerUserSwitchReceiver(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->syncWindow(Z)V

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->sInstance:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not initialized? Did you forget to call init in Application::onCreate? "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->sInstance:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;

    return-object v0
.end method

.method private handleDataChangeLocked()V
    .locals 3

    .prologue
    .line 156
    iget-boolean v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLocked:Z

    if-nez v1, :cond_0

    .line 157
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can not change data when we are not locked. "

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 162
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "key_lock_data"

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLockData:Landroid/os/Bundle;

    .line 161
    invoke-static {v0, v1, v2}, Lmiui/cloud/common/XBundleSharedPerference;->savePreferencesBundle(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLockData:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->performSetDataInMainThread(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method private handleLockStateChangeLocked()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->handleLockStateChangeLocked(Z)V

    .line 110
    return-void
.end method

.method private handleLockStateChangeLocked(Z)V
    .locals 3
    .param p1, "syncWindow"    # Z

    .prologue
    .line 115
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "key_locked"

    iget-boolean v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLocked:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 118
    const-string/jumbo v1, "key_lock_data"

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLockData:Landroid/os/Bundle;

    .line 117
    invoke-static {v0, v1, v2}, Lmiui/cloud/common/XBundleSharedPerference;->savePreferencesBundle(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    iget-boolean v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLocked:Z

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/SystemControlService;->notifyLocked(Landroid/content/Context;)V

    .line 127
    :goto_0
    if-eqz p1, :cond_0

    .line 128
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->syncWindowLocked(Z)V

    .line 114
    :cond_0
    return-void

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/SystemControlService;->notifyUnlocked(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 30
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->sInstance:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already initialized. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;

    invoke-direct {v0, p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->sInstance:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;

    .line 28
    return-void
.end method

.method private static performNotifyInMainThread(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;ILandroid/os/Bundle;)V
    .locals 2
    .param p0, "guard"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
    .param p1, "code"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 204
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$4;-><init>(Landroid/os/Looper;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;ILandroid/os/Bundle;)V

    .line 209
    const/4 v1, 0x0

    .line 204
    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$4;->sendEmptyMessage(I)Z

    .line 203
    return-void
.end method

.method private static performSetDataInMainThread(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "guard"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 184
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$2;-><init>(Landroid/os/Looper;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V

    .line 189
    const/4 v1, 0x0

    .line 184
    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$2;->sendEmptyMessage(I)Z

    .line 183
    return-void
.end method

.method private static performSetVisibilityInMainThread(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Z)V
    .locals 2
    .param p0, "guard"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
    .param p1, "visible"    # Z

    .prologue
    .line 194
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$3;-><init>(Landroid/os/Looper;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Z)V

    .line 199
    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$3;->sendEmptyMessage(I)Z

    .line 193
    return-void
.end method

.method private static performShowDismissInMainThread(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Z)V
    .locals 2
    .param p0, "guard"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
    .param p1, "show"    # Z

    .prologue
    .line 170
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$1;-><init>(Landroid/os/Looper;ZLcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;)V

    .line 179
    const/4 v1, 0x0

    .line 170
    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager$1;->sendEmptyMessage(I)Z

    .line 169
    return-void
.end method

.method private registerUserSwitchReceiver(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 55
    return-void
.end method

.method private declared-synchronized syncWindow(Z)V
    .locals 1
    .param p1, "recreate"    # Z

    .prologue
    monitor-enter p0

    .line 133
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->syncWindowLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 132
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private syncWindowLocked(Z)V
    .locals 3
    .param p1, "recreat"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLocked:Z

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    invoke-static {v0, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->performShowDismissInMainThread(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Z)V

    .line 141
    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    .line 143
    :cond_1
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLockData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    .line 144
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->performShowDismissInMainThread(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Z)V

    .line 136
    :cond_2
    :goto_0
    return-void

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    invoke-static {v0, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->performShowDismissInMainThread(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Z)V

    .line 149
    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized lock(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    monitor-enter p0

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLocked:Z

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Already locked. Update data. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 74
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLockData:Landroid/os/Bundle;

    .line 75
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->handleDataChangeLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 71
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Do lock. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLocked:Z

    .line 79
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLockData:Landroid/os/Bundle;

    .line 80
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->handleLockStateChangeLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notify(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "No active guard. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 105
    return-void

    .line 107
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->performNotifyInMainThread(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 102
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBackoff(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    .line 95
    :try_start_0
    iget-boolean v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLocked:Z

    if-nez v2, :cond_0

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Not locked. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 97
    return-void

    .line 99
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v2, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->performSetVisibilityInMainThread(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 94
    return-void

    :cond_1
    move v0, v1

    .line 99
    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unlock()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 85
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLocked:Z

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Not locked. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 87
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLocked:Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->mLockData:Landroid/os/Bundle;

    .line 91
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardManager;->handleLockStateChangeLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 84
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
