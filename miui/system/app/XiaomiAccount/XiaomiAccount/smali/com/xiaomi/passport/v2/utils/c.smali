.class public Lcom/xiaomi/passport/v2/utils/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Gj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/xiaomi/phonenum/bean/a;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private Gg:Lcom/xiaomi/passport/uicontroller/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private Gh:Lcom/xiaomi/phonenum/a;

.field private Gi:Lcom/xiaomi/passport/ui/C;

.field private Gk:Lcom/xiaomi/passport/uicontroller/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Lcom/xiaomi/phonenum/bean/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/phonenum/c;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/c;-><init>()V

    const-string/jumbo v1, "2882303761517565051"

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/phonenum/c;->aoA(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/phonenum/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gh:Lcom/xiaomi/phonenum/a;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gh:Lcom/xiaomi/phonenum/a;

    new-instance v1, Lcom/xiaomi/passport/v2/utils/j;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/v2/utils/j;-><init>(Lcom/xiaomi/passport/v2/utils/c;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/a;->aor(Lcom/xiaomi/phonenum/b;)V

    return-void
.end method

.method private Lo()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gi:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gi:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gi:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gi:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    iput-object v1, p0, Lcom/xiaomi/passport/v2/utils/c;->Gi:Lcom/xiaomi/passport/ui/C;

    goto :goto_0
.end method

.method private Lp(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gi:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/utils/c;->Lo()V

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gi:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gi:Lcom/xiaomi/passport/ui/C;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/C;->setCancelable(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gi:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "ActivatorPhoneController"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Lq(Lcom/xiaomi/passport/v2/utils/c;)Lcom/xiaomi/phonenum/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gh:Lcom/xiaomi/phonenum/a;

    return-object v0
.end method

.method static synthetic Lr()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/v2/utils/c;->Gj:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic Ls(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    sput-object p0, Lcom/xiaomi/passport/v2/utils/c;->Gj:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic Lt(Lcom/xiaomi/passport/v2/utils/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/utils/c;->Lo()V

    return-void
.end method


# virtual methods
.method public Lk(Lcom/xiaomi/passport/v2/utils/d;Z)Lcom/xiaomi/passport/uicontroller/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/v2/utils/d;",
            "Z)",
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "get phone num callback should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/v2/utils/k;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/v2/utils/k;-><init>(Lcom/xiaomi/passport/v2/utils/c;Lcom/xiaomi/passport/v2/utils/d;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/v;

    new-instance v2, Lcom/xiaomi/passport/v2/utils/l;

    invoke-direct {v2, p0, p2}, Lcom/xiaomi/passport/v2/utils/l;-><init>(Lcom/xiaomi/passport/v2/utils/c;Z)V

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/passport/uicontroller/v;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/w;)V

    iput-object v1, p0, Lcom/xiaomi/passport/v2/utils/c;->Gg:Lcom/xiaomi/passport/uicontroller/v;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/c;->Gg:Lcom/xiaomi/passport/uicontroller/v;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gg:Lcom/xiaomi/passport/uicontroller/v;

    return-object v0
.end method

.method public Ll(I)V
    .locals 3

    sget-object v0, Lcom/xiaomi/passport/v2/utils/c;->Gj:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/v2/utils/c;->Gj:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/xiaomi/passport/v2/utils/c;->Gj:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/passport/v2/utils/c;->Gj:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/v2/utils/c;->Gh:Lcom/xiaomi/phonenum/a;

    invoke-virtual {v2, p1}, Lcom/xiaomi/phonenum/a;->aou(I)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public Lm(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gh:Lcom/xiaomi/phonenum/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/phonenum/a;->aox(I)Z

    return-void
.end method

.method public Ln(Landroid/app/Activity;ILcom/xiaomi/passport/v2/utils/e;)Lcom/xiaomi/passport/uicontroller/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Lcom/xiaomi/passport/v2/utils/e;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Lcom/xiaomi/phonenum/bean/a;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "verify phone callback should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const v0, 0x7f0c007a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/passport/v2/utils/c;->Lp(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/passport/v2/utils/m;

    invoke-direct {v0, p0, p2, p3}, Lcom/xiaomi/passport/v2/utils/m;-><init>(Lcom/xiaomi/passport/v2/utils/c;ILcom/xiaomi/passport/v2/utils/e;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/v;

    new-instance v2, Lcom/xiaomi/passport/v2/utils/n;

    invoke-direct {v2, p0, p2}, Lcom/xiaomi/passport/v2/utils/n;-><init>(Lcom/xiaomi/passport/v2/utils/c;I)V

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/passport/uicontroller/v;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/w;)V

    iput-object v1, p0, Lcom/xiaomi/passport/v2/utils/c;->Gk:Lcom/xiaomi/passport/uicontroller/v;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/c;->Gk:Lcom/xiaomi/passport/uicontroller/v;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gk:Lcom/xiaomi/passport/uicontroller/v;

    return-object v0
.end method

.method public cancel()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gg:Lcom/xiaomi/passport/uicontroller/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gg:Lcom/xiaomi/passport/uicontroller/v;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/uicontroller/v;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/v2/utils/c;->Gg:Lcom/xiaomi/passport/uicontroller/v;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gk:Lcom/xiaomi/passport/uicontroller/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gk:Lcom/xiaomi/passport/uicontroller/v;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/uicontroller/v;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/v2/utils/c;->Gk:Lcom/xiaomi/passport/uicontroller/v;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/c;->Gh:Lcom/xiaomi/phonenum/a;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/a;->aoz()V

    return-void
.end method
