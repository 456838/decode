.class public abstract Lcom/xiaomi/accountsdk/a/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IServiceType:",
        "Ljava/lang/Object;",
        "ServerDataType:",
        "Ljava/lang/Object;",
        "ClientDataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field private static final aat:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final aan:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final aao:Ljava/lang/String;

.field private aap:Landroid/content/Context;

.field private aaq:Lcom/xiaomi/accountsdk/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/a/a",
            "<TServerDataType;TClientDataType;>;"
        }
    .end annotation
.end field

.field private aar:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TIServiceType;"
        }
    .end annotation
.end field

.field private final aas:Ljava/lang/String;

.field private final aau:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/a/e;->aat:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/a/a",
            "<TServerDataType;TClientDataType;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/a/e;->aan:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/a/e;->aau:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/a/e;->aap:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/a/e;->aao:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/a/e;->aas:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/a/e;->aaq:Lcom/xiaomi/accountsdk/a/a;

    return-void
.end method

.method static ajG(Ljava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method private ajH()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/a/e;->aar:Ljava/lang/Object;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/a/e;->aap:Landroid/content/Context;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/a/e;->aaq:Lcom/xiaomi/accountsdk/a/a;

    return-void
.end method

.method private ajI()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/a/e;->ML()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/a/e;->aaq:Lcom/xiaomi/accountsdk/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/a/e;->aaq:Lcom/xiaomi/accountsdk/a/a;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/a/a;->ajC(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/a/e;->aaq:Lcom/xiaomi/accountsdk/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/a/e;->aaq:Lcom/xiaomi/accountsdk/a/a;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/a/a;->ajB(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic ajL(Lcom/xiaomi/accountsdk/a/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/a/e;->ajI()V

    return-void
.end method


# virtual methods
.method protected abstract ML()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TServerDataType;"
        }
    .end annotation
.end method

.method protected abstract MX(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TIServiceType;"
        }
    .end annotation
.end method

.method public final ajF()Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/accountsdk/a/e;->aan:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/a/e;->ajG(Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "should only bind for one time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/a/e;->aao:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/a/e;->aas:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/a/e;->aap:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-ge v0, v2, :cond_2

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/accountsdk/a/e;->aaq:Lcom/xiaomi/accountsdk/a/a;

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/a/a;->ajB(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/a/e;->ajK()V

    :cond_1
    return v1

    :cond_2
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v2, "failed to bind to service"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final ajJ()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIServiceType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/accountsdk/a/e;->aar:Ljava/lang/Object;

    return-object v0
.end method

.method final ajK()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/a/e;->aau:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/a/e;->ajG(Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/a/e;->aap:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/a/e;->aap:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/a/e;->ajH()V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/a/e;->MX(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/a/e;->aar:Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/accountsdk/a/e;->aat:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/accountsdk/a/g;

    invoke-direct {v1, p0}, Lcom/xiaomi/accountsdk/a/g;-><init>(Lcom/xiaomi/accountsdk/a/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/a/e;->ajH()V

    return-void
.end method
