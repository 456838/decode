.class public Lcom/xiaomi/phonenum/d;
.super Lcom/xiaomi/phonenum/a;
.source ""


# instance fields
.field private afe:Lcom/xiaomi/phonenum/utils/n;

.field private aff:Landroid/content/Context;

.field private afg:Landroid/content/ServiceConnection;

.field private afh:Lcom/xiaomi/simactivate/service/IPhoneNumService;

.field private afi:Z

.field private afj:Z

.field private afk:Ljava/lang/String;

.field private afl:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/phonenum/utils/a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p3}, Lcom/xiaomi/phonenum/a;-><init>(Lcom/xiaomi/phonenum/utils/a;)V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/p;->amM()Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/d;->afe:Lcom/xiaomi/phonenum/utils/n;

    iput-boolean v1, p0, Lcom/xiaomi/phonenum/d;->afi:Z

    iput-boolean v1, p0, Lcom/xiaomi/phonenum/d;->afj:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/phonenum/d;->afl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/d;->aff:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/phonenum/d;->afk:Ljava/lang/String;

    return-void
.end method

.method private aoC()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/d;->afl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method private aoD()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/phonenum/d;->aoC()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/xiaomi/phonenum/d;->afi:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MpHelper is not setup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/phonenum/d;->afj:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/d;->afh:Lcom/xiaomi/simactivate/service/IPhoneNumService;

    if-eqz v0, :cond_0

    return-void
.end method

.method static synthetic aoE(Lcom/xiaomi/phonenum/d;Lcom/xiaomi/simactivate/service/IPhoneNumService;)Lcom/xiaomi/simactivate/service/IPhoneNumService;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/d;->afh:Lcom/xiaomi/simactivate/service/IPhoneNumService;

    return-object p1
.end method

.method static synthetic aoF(Lcom/xiaomi/phonenum/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/phonenum/d;->afi:Z

    return p1
.end method

.method static synthetic aoG(Lcom/xiaomi/phonenum/d;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/d;->afl:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public aor(Lcom/xiaomi/phonenum/b;)V
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/phonenum/d;->afi:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.simactivate.service.ACTION_BIND_SYSTEM_PHONE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.xiaomi.simactivate.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/xiaomi/phonenum/g;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/phonenum/g;-><init>(Lcom/xiaomi/phonenum/d;Lcom/xiaomi/phonenum/b;)V

    iput-object v1, p0, Lcom/xiaomi/phonenum/d;->afg:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/xiaomi/phonenum/d;->aff:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/phonenum/d;->afg:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->aca:Lcom/xiaomi/phonenum/bean/Error;

    invoke-interface {p1, v0}, Lcom/xiaomi/phonenum/b;->LG(Lcom/xiaomi/phonenum/bean/Error;)V

    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->acb:Lcom/xiaomi/phonenum/bean/Error;

    invoke-interface {p1, v0}, Lcom/xiaomi/phonenum/b;->LG(Lcom/xiaomi/phonenum/bean/Error;)V

    goto :goto_0
.end method

.method public aow(IZLcom/xiaomi/phonenum/utils/b;)Lcom/xiaomi/phonenum/bean/a;
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/phonenum/d;->aoD()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/d;->afh:Lcom/xiaomi/simactivate/service/IPhoneNumService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaomi/phonenum/d;->afk:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/xiaomi/simactivate/service/IPhoneNumService;->atG(ILjava/lang/String;IZ)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/phonenum/bean/b;

    invoke-direct {v1}, Lcom/xiaomi/phonenum/bean/b;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/phonenum/bean/b;->ali(Landroid/os/Bundle;)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/b;->build()Lcom/xiaomi/phonenum/bean/a;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->acb:Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/Error;->alE()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0
.end method

.method public aox(I)Z
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/phonenum/d;->aoD()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/d;->afh:Lcom/xiaomi/simactivate/service/IPhoneNumService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaomi/phonenum/d;->afk:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaomi/simactivate/service/IPhoneNumService;->atH(ILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/d;->afe:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v2, "MiuiPhoneNumKeeper"

    const-string/jumbo v3, "invalidatePhoneNum"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaomi/phonenum/utils/n;->amD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public aoy(I)Z
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/phonenum/d;->aoD()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/d;->afh:Lcom/xiaomi/simactivate/service/IPhoneNumService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaomi/phonenum/d;->afk:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaomi/simactivate/service/IPhoneNumService;->atI(ILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/d;->afe:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v2, "MiuiPhoneNumKeeper"

    const-string/jumbo v3, "invalidateVerifiedToken"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaomi/phonenum/utils/n;->amD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public aoz()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/phonenum/d;->afl:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/phonenum/d;->afi:Z

    iget-object v0, p0, Lcom/xiaomi/phonenum/d;->afg:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/xiaomi/phonenum/d;->afj:Z

    iput-object v2, p0, Lcom/xiaomi/phonenum/d;->aff:Landroid/content/Context;

    iput-object v2, p0, Lcom/xiaomi/phonenum/d;->afg:Landroid/content/ServiceConnection;

    iput-object v2, p0, Lcom/xiaomi/phonenum/d;->afh:Lcom/xiaomi/simactivate/service/IPhoneNumService;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/phonenum/d;->aff:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/d;->aff:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/phonenum/d;->afg:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method
