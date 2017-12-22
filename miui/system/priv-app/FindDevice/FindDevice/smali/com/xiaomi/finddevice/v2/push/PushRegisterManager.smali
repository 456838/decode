.class public Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;
.super Ljava/lang/Object;
.source "PushRegisterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/push/PushRegisterManager$IRegIdChangeListener;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;


# instance fields
.field private mRegId:Ljava/lang/String;

.field private mRegIdChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/xiaomi/finddevice/v2/push/PushRegisterManager$IRegIdChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;-><init>()V

    sput-object v0, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->sInstance:Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->mRegId:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->mRegIdChangeListeners:Ljava/util/Set;

    .line 13
    return-void
.end method

.method public static get()Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->sInstance:Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addRegIdChangeListener(Lcom/xiaomi/finddevice/v2/push/PushRegisterManager$IRegIdChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaomi/finddevice/v2/push/PushRegisterManager$IRegIdChangeListener;

    .prologue
    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->mRegIdChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 46
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRegId()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->mRegId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRegisterCompleted(Ljava/lang/String;)V
    .locals 7
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->mRegId:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "RegId not changed. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 35
    return-void

    .line 38
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "RegId changed from %s to %s. "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->mRegId:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 39
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->mRegIdChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager$IRegIdChangeListener;

    .line 40
    .local v0, "listener":Lcom/xiaomi/finddevice/v2/push/PushRegisterManager$IRegIdChangeListener;
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->mRegId:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager$IRegIdChangeListener;->onRegIdChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "listener":Lcom/xiaomi/finddevice/v2/push/PushRegisterManager$IRegIdChangeListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 43
    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/push/PushRegisterManager;->mRegId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 32
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    const-string/jumbo v0, "2882303761517374554"

    const-string/jumbo v1, "5381737441554"

    invoke-static {p1, v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
