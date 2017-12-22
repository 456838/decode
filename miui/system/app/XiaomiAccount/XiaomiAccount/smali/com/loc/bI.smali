.class public Lcom/loc/bI;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private arr:Lcom/loc/bX;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/loc/bX;

    invoke-static {}, Lcom/loc/A;->c()Lcom/loc/A;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/loc/bX;-><init>(Landroid/content/Context;Lcom/loc/cv;)V

    iput-object v0, p0, Lcom/loc/bI;->arr:Lcom/loc/bX;

    return-void
.end method

.method private aEC(Lcom/loc/m;Lcom/loc/ck;)V
    .locals 1

    invoke-virtual {p2, p1}, Lcom/loc/ck;->aFu(Lcom/loc/m;)V

    iget-object v0, p0, Lcom/loc/bI;->arr:Lcom/loc/bX;

    invoke-virtual {v0, p2}, Lcom/loc/bX;->aFh(Lcom/loc/ai;)V

    return-void
.end method

.method private aED(Lcom/loc/m;Lcom/loc/ck;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/loc/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ck;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/bI;->arr:Lcom/loc/bX;

    invoke-virtual {v0, v1, p2, v4}, Lcom/loc/bX;->aFk(Ljava/lang/String;Lcom/loc/ai;Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p2, p1}, Lcom/loc/ck;->aFu(Lcom/loc/m;)V

    iget-object v0, p0, Lcom/loc/bI;->arr:Lcom/loc/bX;

    invoke-virtual {v0, p2, v4}, Lcom/loc/bX;->aFi(Lcom/loc/ai;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/m;

    invoke-virtual {p1}, Lcom/loc/m;->a()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v3}, Lcom/loc/m;->b(I)V

    :goto_1
    invoke-virtual {p2, v0}, Lcom/loc/ck;->aFu(Lcom/loc/m;)V

    iget-object v0, p0, Lcom/loc/bI;->arr:Lcom/loc/bX;

    invoke-virtual {v0, v1, p2}, Lcom/loc/bX;->aFe(Ljava/lang/String;Lcom/loc/ai;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/loc/m;->d()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/loc/m;->b(I)V

    goto :goto_1
.end method

.method private aEy(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Lcom/loc/ck;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/loc/ck;

    invoke-direct {v1, p2}, Lcom/loc/ck;-><init>(I)V

    iget-object v2, p0, Lcom/loc/bI;->arr:Lcom/loc/bX;

    invoke-virtual {v2, v0, v1}, Lcom/loc/bX;->aFd(Ljava/lang/String;Lcom/loc/ai;)V

    return-void
.end method


# virtual methods
.method public aEA(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/loc/m;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/loc/ck;

    invoke-direct {v0, p2}, Lcom/loc/ck;-><init>(I)V

    invoke-static {p1}, Lcom/loc/ck;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/bI;->arr:Lcom/loc/bX;

    invoke-virtual {v3, v2, v0}, Lcom/loc/bX;->aFl(Ljava/lang/String;Lcom/loc/ai;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LogDB"

    const-string/jumbo v3, "ByState"

    invoke-static {v0, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public aEB(Lcom/loc/m;I)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/loc/ck;

    invoke-direct {v0, p2}, Lcom/loc/ck;-><init>(I)V

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/loc/bI;->aEC(Lcom/loc/m;Lcom/loc/ck;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/loc/bI;->aED(Lcom/loc/m;Lcom/loc/ck;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/loc/bI;->aED(Lcom/loc/m;Lcom/loc/ck;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public aEw(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/loc/bI;->aEy(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogDB"

    const-string/jumbo v2, "delLog"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public aEx(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/loc/bI;->aEy(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public aEz(Lcom/loc/m;I)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/loc/ck;

    invoke-direct {v0, p2}, Lcom/loc/ck;-><init>(I)V

    invoke-interface {v0, p1}, Lcom/loc/ai;->avl(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/loc/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/ck;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bI;->arr:Lcom/loc/bX;

    invoke-virtual {v2, v1, v0}, Lcom/loc/bX;->aFe(Ljava/lang/String;Lcom/loc/ai;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogDB"

    const-string/jumbo v2, "updateLogInfo"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
