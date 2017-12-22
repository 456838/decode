.class public Lcom/xiaomi/passport/v2/utils/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final Gl:Landroid/app/Activity;

.field private Gm:Lcom/xiaomi/passport/uicontroller/y;

.field private Gn:Lcom/xiaomi/passport/ui/C;

.field private Go:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;",
            "Ljava/util/concurrent/FutureTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Go:Ljava/util/Map;

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/f;->Gl:Landroid/app/Activity;

    new-instance v0, Lcom/xiaomi/passport/uicontroller/y;

    invoke-direct {v0}, Lcom/xiaomi/passport/uicontroller/y;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gm:Lcom/xiaomi/passport/uicontroller/y;

    return-void
.end method

.method private LB()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Go:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/utils/f;->Go:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Go:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private LC()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gn:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gn:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gn:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gn:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    iput-object v1, p0, Lcom/xiaomi/passport/v2/utils/f;->Gn:Lcom/xiaomi/passport/ui/C;

    goto :goto_0
.end method

.method private LD(Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Go:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private LE(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gn:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/utils/f;->LC()V

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gn:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gn:Lcom/xiaomi/passport/ui/C;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/f;->Gl:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "LoginUIController"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic LF(Lcom/xiaomi/passport/v2/utils/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/utils/f;->LC()V

    return-void
.end method


# virtual methods
.method public LA(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;Lcom/xiaomi/passport/v2/utils/h;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gq:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/utils/f;->LD(Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoginUIController"

    const-string/jumbo v1, "password login has not finished"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should implements login callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gl:Landroid/app/Activity;

    const v1, 0x7f0c0071

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/utils/f;->LE(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/passport/utils/b;->Db()V

    new-instance v0, Lcom/xiaomi/passport/v2/utils/o;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaomi/passport/v2/utils/o;-><init>(Lcom/xiaomi/passport/v2/utils/f;Lcom/xiaomi/passport/v2/utils/h;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/f;->Gl:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/passport/uicontroller/n;->Nf(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/n;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/passport/uicontroller/n;->Ng(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;Lcom/xiaomi/passport/uicontroller/h;)Lcom/xiaomi/passport/uicontroller/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/f;->Go:Ljava/util/Map;

    sget-object v2, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gq:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Lu(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Lcom/xiaomi/passport/v2/utils/g;Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gp:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/utils/f;->LD(Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoginUIController"

    const-string/jumbo v1, "add or update AccountManager has not finished"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gl:Landroid/app/Activity;

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/utils/f;->LE(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/passport/v2/utils/r;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/xiaomi/passport/v2/utils/r;-><init>(Lcom/xiaomi/passport/v2/utils/f;Lcom/xiaomi/passport/v2/utils/g;Lcom/xiaomi/accountsdk/account/data/AccountInfo;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/f;->Gl:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/passport/uicontroller/n;->Nf(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/n;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/passport/uicontroller/n;->Ne(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Lcom/xiaomi/passport/uicontroller/l;)Lcom/xiaomi/passport/uicontroller/g;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/f;->Go:Ljava/util/Map;

    sget-object v2, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gp:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Lv(Lcom/xiaomi/accountsdk/account/data/B;Lcom/xiaomi/accountsdk/account/data/B;Lcom/xiaomi/passport/v2/utils/i;Z)V
    .locals 3

    sget-object v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gt:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/utils/f;->LD(Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoginUIController"

    const-string/jumbo v1, "send phone ticket task has not finished"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gl:Landroid/app/Activity;

    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/utils/f;->LE(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/xiaomi/passport/v2/utils/u;

    invoke-direct {v0, p0, p3}, Lcom/xiaomi/passport/v2/utils/u;-><init>(Lcom/xiaomi/passport/v2/utils/f;Lcom/xiaomi/passport/v2/utils/i;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/v;

    new-instance v2, Lcom/xiaomi/passport/v2/utils/v;

    invoke-direct {v2, p0, p1, p2}, Lcom/xiaomi/passport/v2/utils/v;-><init>(Lcom/xiaomi/passport/v2/utils/f;Lcom/xiaomi/accountsdk/account/data/B;Lcom/xiaomi/accountsdk/account/data/B;)V

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/passport/uicontroller/v;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/w;)V

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Go:Ljava/util/Map;

    sget-object v2, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gt:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Lw(Lcom/xiaomi/accountsdk/account/data/B;Lcom/xiaomi/passport/uicontroller/A;Z)V
    .locals 3

    sget-object v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gt:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/utils/f;->LD(Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoginUIController"

    const-string/jumbo v1, "send phone ticket task has not finished"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should implements phone user info callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gl:Landroid/app/Activity;

    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/utils/f;->LE(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gm:Lcom/xiaomi/passport/uicontroller/y;

    new-instance v1, Lcom/xiaomi/passport/v2/utils/t;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/passport/v2/utils/t;-><init>(Lcom/xiaomi/passport/v2/utils/f;Lcom/xiaomi/passport/uicontroller/A;)V

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/uicontroller/y;->Nw(Lcom/xiaomi/accountsdk/account/data/B;Lcom/xiaomi/passport/uicontroller/A;)Lcom/xiaomi/passport/uicontroller/v;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/f;->Go:Ljava/util/Map;

    sget-object v2, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gt:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Lx(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;Lcom/xiaomi/passport/uicontroller/B;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gr:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/utils/f;->LD(Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoginUIController"

    const-string/jumbo v1, "phone ticket login task has not finished"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should implements login callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gl:Landroid/app/Activity;

    const v1, 0x7f0c0071

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/utils/f;->LE(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gm:Lcom/xiaomi/passport/uicontroller/y;

    new-instance v1, Lcom/xiaomi/passport/v2/utils/w;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/passport/v2/utils/w;-><init>(Lcom/xiaomi/passport/v2/utils/f;Lcom/xiaomi/passport/uicontroller/B;)V

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/uicontroller/y;->NB(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;Lcom/xiaomi/passport/uicontroller/B;)Lcom/xiaomi/passport/uicontroller/v;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/f;->Go:Ljava/util/Map;

    sget-object v2, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gr:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Ly(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;Lcom/xiaomi/passport/uicontroller/C;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gs:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/utils/f;->LD(Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoginUIController"

    const-string/jumbo v1, "send phone ticket task has not finished"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should implements login callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gl:Landroid/app/Activity;

    const v1, 0x7f0c0070

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/utils/f;->LE(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gm:Lcom/xiaomi/passport/uicontroller/y;

    new-instance v1, Lcom/xiaomi/passport/v2/utils/z;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/passport/v2/utils/z;-><init>(Lcom/xiaomi/passport/v2/utils/f;Lcom/xiaomi/passport/uicontroller/C;)V

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/uicontroller/y;->Nx(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;Lcom/xiaomi/passport/uicontroller/C;)Lcom/xiaomi/passport/uicontroller/v;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/f;->Go:Ljava/util/Map;

    sget-object v2, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gs:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Lz(Lcom/xiaomi/accountsdk/account/data/r;Lcom/xiaomi/passport/uicontroller/z;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gu:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/utils/f;->LD(Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoginUIController"

    const-string/jumbo v1, "send phone ticket task has not finished"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should implements login callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gl:Landroid/app/Activity;

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/v2/utils/f;->LE(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/f;->Gm:Lcom/xiaomi/passport/uicontroller/y;

    new-instance v1, Lcom/xiaomi/passport/v2/utils/s;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/passport/v2/utils/s;-><init>(Lcom/xiaomi/passport/v2/utils/f;Lcom/xiaomi/passport/uicontroller/z;)V

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/uicontroller/y;->Ny(Lcom/xiaomi/accountsdk/account/data/r;Lcom/xiaomi/passport/uicontroller/z;)Lcom/xiaomi/passport/uicontroller/v;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/f;->Go:Ljava/util/Map;

    sget-object v2, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gu:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/utils/f;->LB()V

    return-void
.end method
