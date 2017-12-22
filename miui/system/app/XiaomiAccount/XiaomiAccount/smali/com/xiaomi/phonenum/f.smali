.class public Lcom/xiaomi/phonenum/f;
.super Lcom/xiaomi/phonenum/a;
.source ""


# instance fields
.field private afp:Landroid/content/Context;

.field private afq:Ljava/lang/String;

.field private afr:Lcom/xiaomi/phonenum/utils/n;

.field private afs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/phonenum/utils/b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/phonenum/utils/a;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/xiaomi/phonenum/a;-><init>(Lcom/xiaomi/phonenum/utils/a;)V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/p;->amM()Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/f;->afr:Lcom/xiaomi/phonenum/utils/n;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/phonenum/f;->afs:Ljava/util/List;

    iput-object p1, p0, Lcom/xiaomi/phonenum/f;->afp:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/phonenum/f;->afq:Ljava/lang/String;

    return-void
.end method

.method private aoH(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/xiaomi/phonenum/f;->afp:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/phonenum/d/a;->aom(Landroid/content/Context;)Lcom/xiaomi/phonenum/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/phonenum/d/a;->aoo(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public aor(Lcom/xiaomi/phonenum/b;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->aca:Lcom/xiaomi/phonenum/bean/Error;

    invoke-interface {p1, v0}, Lcom/xiaomi/phonenum/b;->LG(Lcom/xiaomi/phonenum/bean/Error;)V

    return-void
.end method

.method public aow(IZLcom/xiaomi/phonenum/utils/b;)Lcom/xiaomi/phonenum/bean/a;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/phonenum/f;->afb:Lcom/xiaomi/phonenum/utils/a;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-interface {v1, v2}, Lcom/xiaomi/phonenum/utils/a;->alX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/xiaomi/phonenum/f;->afb:Lcom/xiaomi/phonenum/utils/a;

    invoke-interface {v1, p1}, Lcom/xiaomi/phonenum/utils/a;->alN(I)Lcom/xiaomi/phonenum/bean/d;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    if-eqz v0, :cond_3

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->ack:Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/Error;->alE()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->acs:Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/Error;->alE()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, v1, Lcom/xiaomi/phonenum/bean/d;->acu:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/phonenum/f;->aoH(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    :goto_2
    new-instance v5, Lcom/xiaomi/phonenum/c/f;

    iget-object v0, p0, Lcom/xiaomi/phonenum/f;->afb:Lcom/xiaomi/phonenum/utils/a;

    invoke-direct {v5, v0}, Lcom/xiaomi/phonenum/c/f;-><init>(Lcom/xiaomi/phonenum/utils/a;)V

    new-instance v3, Lcom/xiaomi/phonenum/a/b;

    invoke-direct {v3}, Lcom/xiaomi/phonenum/a/b;-><init>()V

    new-instance v0, Lcom/xiaomi/phonenum/a/g;

    iget-object v1, p0, Lcom/xiaomi/phonenum/f;->afp:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/phonenum/f;->afq:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/phonenum/f;->afb:Lcom/xiaomi/phonenum/utils/a;

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/phonenum/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/phonenum/a/t;Lcom/xiaomi/phonenum/utils/a;Lcom/xiaomi/phonenum/c/j;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/phonenum/a/g;->anr(IZLcom/xiaomi/phonenum/utils/b;)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/phonenum/f;->afs:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public aox(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/phonenum/f;->afb:Lcom/xiaomi/phonenum/utils/a;

    invoke-interface {v1, p1}, Lcom/xiaomi/phonenum/utils/a;->alN(I)Lcom/xiaomi/phonenum/bean/d;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/phonenum/f;->afp:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/phonenum/d/a;->aom(Landroid/content/Context;)Lcom/xiaomi/phonenum/d/a;

    move-result-object v2

    iget-object v1, v1, Lcom/xiaomi/phonenum/bean/d;->acu:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/xiaomi/phonenum/d/a;->aop(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public aoy(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/phonenum/f;->afb:Lcom/xiaomi/phonenum/utils/a;

    invoke-interface {v1, p1}, Lcom/xiaomi/phonenum/utils/a;->alN(I)Lcom/xiaomi/phonenum/bean/d;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/phonenum/f;->afp:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/phonenum/d/a;->aom(Landroid/content/Context;)Lcom/xiaomi/phonenum/d/a;

    move-result-object v2

    iget-object v1, v1, Lcom/xiaomi/phonenum/bean/d;->acu:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/xiaomi/phonenum/d/a;->aoq(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public aoz()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/phonenum/f;->afs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/phonenum/utils/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/utils/b;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/utils/b;->cancel()V

    goto :goto_0
.end method
