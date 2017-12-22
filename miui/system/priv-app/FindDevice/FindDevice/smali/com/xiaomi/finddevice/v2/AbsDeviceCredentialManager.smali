.class public abstract Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager;
.super Ljava/lang/Object;
.source "AbsDeviceCredentialManager.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;


# instance fields
.field private mOnChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager;->mOnChangeListeners:Ljava/util/List;

    .line 11
    return-void
.end method

.method private static notifyDeviceCredentialChangeToListener(Lcom/xiaomi/finddevice/v2/IDeviceCredential;Landroid/util/Pair;)V
    .locals 2
    .param p0, "deviceCredential"    # Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/finddevice/v2/IDeviceCredential;",
            "Landroid/util/Pair",
            "<",
            "Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "listener":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;Landroid/os/Handler;>;"
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager$1;

    invoke-direct {v1, p1, p0}, Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager$1;-><init>(Landroid/util/Pair;Lcom/xiaomi/finddevice/v2/IDeviceCredential;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized addOnChangeListener(Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;Landroid/os/Handler;)V
    .locals 5
    .param p1, "listener"    # Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    monitor-enter p0

    .line 15
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 16
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Both listener and handler can not be null. "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 19
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager;->mOnChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 20
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 21
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager;->mOnChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v2, p1, :cond_2

    .line 22
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Already add. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 23
    return-void

    .line 20
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager;->mOnChangeListeners:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 14
    return-void
.end method

.method protected declared-synchronized notifyDeviceCredentialChange(Lcom/xiaomi/finddevice/v2/IDeviceCredential;)V
    .locals 3
    .param p1, "newDeviceCredential"    # Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    .prologue
    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager;->mOnChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 45
    .local v0, "listener":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;Landroid/os/Handler;>;"
    invoke-static {p1, v0}, Lcom/xiaomi/finddevice/v2/AbsDeviceCredentialManager;->notifyDeviceCredentialChangeToListener(Lcom/xiaomi/finddevice/v2/IDeviceCredential;Landroid/util/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "listener":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;Landroid/os/Handler;>;"
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    .line 43
    return-void
.end method
