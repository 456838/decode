.class public Lcom/xiaomi/account/ui/O;
.super Lcom/xiaomi/passport/ui/x;
.source ""


# instance fields
.field private dK:Lcom/xiaomi/account/task/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/account/task/m",
            "<",
            "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/x;-><init>()V

    return-void
.end method

.method public static gR(Ljava/lang/String;Landroid/os/Bundle;)Lcom/xiaomi/account/ui/O;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/account/ui/O;

    invoke-direct {v0}, Lcom/xiaomi/account/ui/O;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/ui/O;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic gS(Lcom/xiaomi/account/ui/O;)V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/O;->wz()V

    return-void
.end method

.method static synthetic gT(Lcom/xiaomi/account/ui/O;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/O;->wD(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "InputVerifyPhoneCodeFragment"

    return-object v0
.end method

.method public gG(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/O;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_account_protection_switch"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/O;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_selected_locked_device_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/account/data/LockedDeviceInfo;

    const-string/jumbo v0, "do with verify code"

    new-instance v6, Lcom/xiaomi/account/task/n;

    invoke-direct {v6}, Lcom/xiaomi/account/task/n;-><init>()V

    new-instance v0, Lcom/xiaomi/account/ui/cd;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/account/ui/cd;-><init>(Lcom/xiaomi/account/ui/O;Lcom/xiaomi/account/data/LockedDeviceInfo;Ljava/lang/String;ZZ)V

    invoke-virtual {v6, v0}, Lcom/xiaomi/account/task/n;->kg(Lcom/xiaomi/account/task/o;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/ce;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/ce;-><init>(Lcom/xiaomi/account/ui/O;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/n;->kh(Lcom/xiaomi/account/task/p;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/n;->build()Lcom/xiaomi/account/task/m;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/m;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public gI(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "send verify code"

    iget-object v0, p0, Lcom/xiaomi/account/ui/O;->dK:Lcom/xiaomi/account/task/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/O;->dK:Lcom/xiaomi/account/task/m;

    invoke-virtual {v0}, Lcom/xiaomi/account/task/m;->kb()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/account/task/n;

    invoke-direct {v0}, Lcom/xiaomi/account/task/n;-><init>()V

    new-instance v1, Lcom/xiaomi/account/ui/cf;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/account/ui/cf;-><init>(Lcom/xiaomi/account/ui/O;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/n;->kg(Lcom/xiaomi/account/task/o;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/cg;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/cg;-><init>(Lcom/xiaomi/account/ui/O;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/n;->kh(Lcom/xiaomi/account/task/p;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/n;->build()Lcom/xiaomi/account/task/m;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/O;->dK:Lcom/xiaomi/account/task/m;

    iget-object v0, p0, Lcom/xiaomi/account/ui/O;->dK:Lcom/xiaomi/account/task/m;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/m;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/O;->dK:Lcom/xiaomi/account/task/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/O;->dK:Lcom/xiaomi/account/task/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/m;->cancel(Z)Z

    iput-object v2, p0, Lcom/xiaomi/account/ui/O;->dK:Lcom/xiaomi/account/task/m;

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/passport/ui/x;->onDestroy()V

    return-void
.end method
