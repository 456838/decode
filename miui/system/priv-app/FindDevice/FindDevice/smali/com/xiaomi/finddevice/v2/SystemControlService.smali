.class public Lcom/xiaomi/finddevice/v2/SystemControlService;
.super Landroid/app/Service;
.source "SystemControlService.java"


# instance fields
.field private mGuardSystemControlTimer:Landroid/os/Handler;

.field private mLocked:Z

.field private mNoising:Z

.field private mOnGoingLocatingIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/xiaomi/finddevice/v2/SystemControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->guardSystemControl()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private cancelGuardSystemControl()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mGuardSystemControlTimer:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    return-void
.end method

.method private dumpState()V
    .locals 3

    .prologue
    .line 201
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Locating?"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mOnGoingLocatingIdSet:Ljava/util/HashSet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Noising?"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mNoising:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "Locked?"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mLocked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method private guardSystemControl()V
    .locals 3

    .prologue
    .line 176
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 178
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->dumpState()V

    .line 180
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mLocked:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->switchToOwnerUser(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->scheduleGuardSystemControl()V

    .line 174
    return-void

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->scheduleGuardSystemControl()V

    .line 183
    throw v0
.end method

.method public static notifyEndLocating(Landroid/content/Context;J)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/finddevice/v2/SystemControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "NOTIFY_END_LOCATING_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string/jumbo v1, "START_END_LOCATING_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    return-void
.end method

.method public static notifyEndNoising(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/finddevice/v2/SystemControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "NOTIFY_END_NOISING_ACITON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 50
    return-void
.end method

.method public static notifyLocked(Landroid/content/Context;)V
#    .locals 2
#    .param p0, "ctx"    # Landroid/content/Context;
#
#    .prologue
#    .line 57
#    new-instance v0, Landroid/content/Intent;
#
#    const-class v1, Lcom/xiaomi/finddevice/v2/SystemControlService;
#
#    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
#
#    .line 58
#    .local v0, "intent":Landroid/content/Intent;
#    const-string/jumbo v1, "NOTIFY_LOCATED_ACTION"
#
#    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
#
#    .line 59
#    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
#
#    .line 56
#    return-void

    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/finddevice/v2/SystemControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "NOTIFY_UNLOCKED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    return-void
.end method

.method public static notifyStartLocating(Landroid/content/Context;J)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/finddevice/v2/SystemControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "NOTIFY_START_LOCATING_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string/jumbo v1, "START_END_LOCATING_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 30
    return-void
.end method

.method public static notifyStartNoising(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/finddevice/v2/SystemControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "NOTIFY_START_NOISING_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 44
    return-void
.end method

.method public static notifyUnlocked(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/finddevice/v2/SystemControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "NOTIFY_UNLOCKED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    return-void
.end method

.method public static notifyWipeData(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/finddevice/v2/SystemControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "NOTIFY_WIPE_DATA_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    return-void
.end method

.method private onEndLocating(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Called with id: "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mOnGoingLocatingIdSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method private onEndNoising()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Called. "

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 155
    iput-boolean v2, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mNoising:Z

    .line 153
    return-void
.end method

.method private onLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 159
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "Called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 160
    iput-boolean v3, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mLocked:Z

    .line 161
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->switchToOwnerUser(Landroid/content/Context;)V

    .line 158
    return-void
.end method

.method private onStartLocating(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Called with id: "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mOnGoingLocatingIdSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->switchToOwnerUser(Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method private onStartNoising()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 148
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "Called"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 149
    iput-boolean v3, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mNoising:Z

    .line 150
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->switchToOwnerUser(Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method private onUnlocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Called."

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 166
    iput-boolean v2, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mLocked:Z

    .line 164
    return-void
.end method

.method private onWipeData()V
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 171
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->switchToOwnerUser(Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method private scheduleGuardSystemControl()V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mGuardSystemControlTimer:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 188
    return-void
.end method

.method private shouldStop()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 197
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mOnGoingLocatingIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mNoising:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mLocked:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->ensureRunAsOwnerUser()V

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "created. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 78
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mOnGoingLocatingIdSet:Ljava/util/HashSet;

    .line 81
    new-instance v0, Lcom/xiaomi/finddevice/v2/SystemControlService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/finddevice/v2/SystemControlService$1;-><init>(Lcom/xiaomi/finddevice/v2/SystemControlService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/SystemControlService;->mGuardSystemControlTimer:Landroid/os/Handler;

    .line 89
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->scheduleGuardSystemControl()V

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 96
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->cancelGuardSystemControl()V

    .line 93
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "NOTIFY_START_LOCATING_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    const-string/jumbo v1, "START_END_LOCATING_ID"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 105
    .local v2, "id":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "NO ID. "

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/xiaomi/finddevice/v2/SystemControlService;->onStartLocating(J)V

    .line 123
    .end local v2    # "id":J
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->dumpState()V

    .line 125
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->shouldStop()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 126
    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "STOP"

    aput-object v4, v1, v6

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->stopSelf()V

    .line 133
    :goto_1
    const/4 v1, 0x2

    return v1

    .line 107
    :cond_2
    const-string/jumbo v1, "NOTIFY_END_LOCATING_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    const-string/jumbo v1, "START_END_LOCATING_ID"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 109
    .restart local v2    # "id":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "NO ID. "

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/xiaomi/finddevice/v2/SystemControlService;->onEndLocating(J)V

    goto :goto_0

    .line 111
    .end local v2    # "id":J
    :cond_4
    const-string/jumbo v1, "NOTIFY_START_NOISING_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 112
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->onStartNoising()V

    goto :goto_0

    .line 113
    :cond_5
    const-string/jumbo v1, "NOTIFY_END_NOISING_ACITON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 114
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->onEndNoising()V

    goto :goto_0

    .line 115
    :cond_6
    const-string/jumbo v1, "NOTIFY_LOCATED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 116
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->onLocked()V

    goto :goto_0

    .line 117
    :cond_7
    const-string/jumbo v1, "NOTIFY_UNLOCKED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 118
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->onUnlocked()V

    goto :goto_0

    .line 119
    :cond_8
    const-string/jumbo v1, "NOTIFY_WIPE_DATA_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/SystemControlService;->onWipeData()V

    goto :goto_0

    .line 129
    :cond_9
    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "DO NOT STOP. "

    aput-object v4, v1, v6

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_1
.end method
