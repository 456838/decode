.class public Lcom/xiaomi/finddevice/common/MTService;
.super Ljava/lang/Object;
.source "MTService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
        Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/xiaomi/finddevice/common/MTService;


# instance fields
.field private mCheckServiceBecomeAvailableMonitor:Ljava/lang/Object;

.field private mNeedCheckServiceBecomeAvailable:Z

.field private mOnServiceBecomeAvailableListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/xiaomi/finddevice/common/MTService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/common/MTService;->mCheckServiceBecomeAvailableMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/xiaomi/finddevice/common/MTService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/finddevice/common/MTService;->mNeedCheckServiceBecomeAvailable:Z

    return v0
.end method

.method static synthetic -set0(Lcom/xiaomi/finddevice/common/MTService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/finddevice/common/MTService;->mNeedCheckServiceBecomeAvailable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/xiaomi/finddevice/common/MTService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/MTService;->notifyServiceBecomeAvailable()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/xiaomi/finddevice/common/MTService;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/common/MTService;-><init>()V

    sput-object v0, Lcom/xiaomi/finddevice/common/MTService;->sInstance:Lcom/xiaomi/finddevice/common/MTService;

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    iput-object v0, p0, Lcom/xiaomi/finddevice/common/MTService;->mOnServiceBecomeAvailableListeners:Ljava/util/List;

    .line 282
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/MTService;->mCheckServiceBecomeAvailableMonitor:Ljava/lang/Object;

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/finddevice/common/MTService;->mNeedCheckServiceBecomeAvailable:Z

    .line 59
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/MTService;->startCheckServiceBecomeAvailableThread()V

    .line 58
    return-void
.end method

.method public static get()Lcom/xiaomi/finddevice/common/MTService;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/xiaomi/finddevice/common/MTService;->sInstance:Lcom/xiaomi/finddevice/common/MTService;

    return-object v0
.end method

.method private getService()Landroid/os/IBinder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 178
    const-string/jumbo v1, "com.xiaomi.mtservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 179
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 180
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Service not available. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 181
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/MTService;->needCheckServiceBecomeAvailable()V

    .line 182
    new-instance v1, Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;

    const-string/jumbo v2, "Service not available. "

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_0
    return-object v0
.end method

.method private needCheckServiceBecomeAvailable()V
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lcom/xiaomi/finddevice/common/MTService;->mCheckServiceBecomeAvailableMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/finddevice/common/MTService;->mNeedCheckServiceBecomeAvailable:Z

    .line 190
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/MTService;->mCheckServiceBecomeAvailableMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 187
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized notifyServiceBecomeAvailable()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/MTService;->mOnServiceBecomeAvailableListeners:Ljava/util/List;

    .line 258
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

    .line 260
    .local v0, "listener":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;Landroid/os/Handler;>;"
    invoke-static {p0, v0}, Lcom/xiaomi/finddevice/common/MTService;->notifyServiceBecomeAvailableToListener(Lcom/xiaomi/finddevice/common/MTService;Landroid/util/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "listener":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;Landroid/os/Handler;>;"
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    .line 257
    return-void
.end method

.method private static notifyServiceBecomeAvailableToListener(Lcom/xiaomi/finddevice/common/MTService;Landroid/util/Pair;)V
    .locals 2
    .param p0, "mtService"    # Lcom/xiaomi/finddevice/common/MTService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/finddevice/common/MTService;",
            "Landroid/util/Pair",
            "<",
            "Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "listener":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;Landroid/os/Handler;>;"
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/finddevice/common/MTService$2;

    invoke-direct {v1, p1, p0}, Lcom/xiaomi/finddevice/common/MTService$2;-><init>(Landroid/util/Pair;Lcom/xiaomi/finddevice/common/MTService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method private preprocessFid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fid"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readCString(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 166
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private startCheckServiceBecomeAvailableThread()V
    .locals 3

    .prologue
    .line 195
    invoke-static {}, Lcom/xiaomi/finddevice/common/FindDeviceThreadFactory;->get()Lcom/xiaomi/finddevice/common/FindDeviceThreadFactory;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/finddevice/common/MTService$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/common/MTService$1;-><init>(Lcom/xiaomi/finddevice/common/MTService;)V

    .line 225
    const-string/jumbo v2, "MTService Guard Thread"

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/finddevice/common/FindDeviceThreadFactory;->newThread(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 194
    return-void
.end method

.method private writeCString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 171
    .local v0, "buf":[B
    array-length v2, v0

    add-int/lit8 v1, v2, 0x1

    .line 172
    .local v1, "len":I
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 173
    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    .line 174
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 169
    return-void
.end method


# virtual methods
.method public declared-synchronized addOnServiceBecomeAvailableListener(Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;Landroid/os/Handler;)V
    .locals 5
    .param p1, "listener"    # Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    monitor-enter p0

    .line 230
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 231
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

    .line 234
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/MTService;->mOnServiceBecomeAvailableListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 235
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 236
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/MTService;->mOnServiceBecomeAvailableListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v2, p1, :cond_2

    .line 237
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Already added. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 238
    return-void

    .line 235
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/MTService;->mOnServiceBecomeAvailableListeners:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 229
    return-void
.end method

.method public eccSign(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "keyType"    # I
    .param p2, "dataInHex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 82
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 84
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "xiaomi.IMTService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-direct {p0, v0, p2}, Lcom/xiaomi/finddevice/common/MTService;->writeCString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/MTService;->getService()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 88
    invoke-direct {p0, v2}, Lcom/xiaomi/finddevice/common/MTService;->readCString(Landroid/os/Parcel;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 88
    return-object v3

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Service not available. "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 91
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/MTService;->needCheckServiceBecomeAvailable()V

    .line 92
    new-instance v3, Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;

    invoke-direct {v3, v1}, Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 93
    throw v3
.end method

.method public getFid()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 64
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 66
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "xiaomi.IMTService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/MTService;->getService()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 68
    invoke-direct {p0, v2}, Lcom/xiaomi/finddevice/common/MTService;->readCString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xiaomi/finddevice/common/MTService;->preprocessFid(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 74
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 75
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 68
    return-object v3

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Service not available. "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/MTService;->needCheckServiceBecomeAvailable()V

    .line 72
    new-instance v3, Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;

    invoke-direct {v3, v1}, Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 74
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 75
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 73
    throw v3
.end method

.method public isKeyProvisioned()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    const-string/jumbo v0, "012ABC"

    .line 120
    .local v0, "PROVISION_TEST_DATA":Ljava/lang/String;
    const-string/jumbo v1, "012ABC"

    invoke-virtual {p0, v3, v1}, Lcom/xiaomi/finddevice/common/MTService;->eccSign(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    return v2

    .line 123
    :cond_0
    const-string/jumbo v1, "012ABC"

    invoke-virtual {p0, v2, v1}, Lcom/xiaomi/finddevice/common/MTService;->eccSign(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    return v2

    .line 126
    :cond_1
    return v3
.end method

.method public reload(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "es"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 103
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "xiaomi.IMTService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/finddevice/common/MTService;->writeCString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, v0, p2}, Lcom/xiaomi/finddevice/common/MTService;->writeCString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/MTService;->getService()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 107
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 107
    return v3

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Service not available. "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 110
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/MTService;->needCheckServiceBecomeAvailable()V

    .line 111
    new-instance v3, Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;

    invoke-direct {v3, v1}, Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 112
    throw v3
.end method

.method public declared-synchronized removeOnServiceBecomeAvailableListener(Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;

    .prologue
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/MTService;->mOnServiceBecomeAvailableListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 247
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 248
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/MTService;->mOnServiceBecomeAvailableListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 249
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/MTService;->mOnServiceBecomeAvailableListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 250
    return-void

    .line 247
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Not added. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 245
    return-void

    .end local v0    # "i":I
    .end local v1    # "len":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public reprovisionViaServer(Landroid/content/Context;Lcom/xiaomi/finddevice/common/IMTServiceKeyProvider;)Z
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "keyProvider"    # Lcom/xiaomi/finddevice/common/IMTServiceKeyProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 138
    const/4 v0, 0x0

    .line 141
    .local v0, "RELOAD_SUCCESS_CODE":I
    const-string/jumbo v4, "reprovisionViaServer can not be called in the main thread. "

    .line 140
    invoke-static {v4}, Lcom/xiaomi/finddevice/common/util/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/MTService;->getFid()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "fid":Ljava/lang/String;
    invoke-interface {p2, p1, v1}, Lcom/xiaomi/finddevice/common/IMTServiceKeyProvider;->getKey(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;

    move-result-object v3

    .line 145
    .local v3, "tzKey":Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;
    if-nez v3, :cond_0

    .line 146
    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "SERVER does not have the key to reprovision this device. FID: "

    aput-object v5, v4, v7

    aput-object v1, v4, v6

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 147
    return v7

    .line 149
    :cond_0
    iget-object v4, v3, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;->es:Ljava/lang/String;

    iget-object v5, v3, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;->sign:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/xiaomi/finddevice/common/MTService;->reload(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 150
    .local v2, "rst":I
    if-eqz v2, :cond_1

    .line 151
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "The key SERVER provided is not valid. "

    aput-object v5, v4, v7

    const-string/jumbo v5, "code: "

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const-string/jumbo v5, "fid: "

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const/4 v5, 0x4

    aput-object v1, v4, v5

    const-string/jumbo v5, "tee: "

    const/4 v6, 0x5

    aput-object v5, v4, v6

    const/4 v5, 0x6

    aput-object v3, v4, v5

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 152
    return v7

    .line 155
    :cond_1
    return v6
.end method

.method public testAvailability()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 159
    const-string/jumbo v0, "012ABC"

    .line 160
    .local v0, "AVAILABILITY_TEST_DATA":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/MTService;->getFid()Ljava/lang/String;

    .line 161
    const-string/jumbo v1, "012ABC"

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/xiaomi/finddevice/common/MTService;->eccSign(ILjava/lang/String;)Ljava/lang/String;

    .line 162
    const-string/jumbo v1, "012ABC"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/xiaomi/finddevice/common/MTService;->eccSign(ILjava/lang/String;)Ljava/lang/String;

    .line 158
    return-void
.end method
