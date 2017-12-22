.class public Lcom/loc/bx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aqU:Lcom/loc/bX;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/bx;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/bx;->b:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/loc/bx;->aDU(Landroid/content/Context;Z)Lcom/loc/bX;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bx;->aqU:Lcom/loc/bX;

    return-void
.end method

.method private aDU(Landroid/content/Context;Z)Lcom/loc/bX;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/loc/bX;

    invoke-static {}, Lcom/loc/A;->c()Lcom/loc/A;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/loc/bX;-><init>(Landroid/content/Context;Lcom/loc/cv;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "SDKDB"

    const-string/jumbo v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/loc/O;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/loc/at;

    invoke-direct {v0}, Lcom/loc/at;-><init>()V

    invoke-static {}, Lcom/loc/at;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/bx;->aqU:Lcom/loc/bX;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v0, v4}, Lcom/loc/bX;->aFk(Ljava/lang/String;Lcom/loc/ai;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public aDV(Lcom/loc/O;)V
    .locals 4

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/loc/bx;->aqU:Lcom/loc/bX;

    if-eqz v0, :cond_2

    :goto_0
    new-instance v0, Lcom/loc/at;

    invoke-direct {v0}, Lcom/loc/at;-><init>()V

    invoke-interface {v0, p1}, Lcom/loc/ai;->avl(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/loc/O;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/at;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bx;->aqU:Lcom/loc/bX;

    new-instance v3, Lcom/loc/at;

    invoke-direct {v3}, Lcom/loc/at;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/loc/bX;->aFl(Ljava/lang/String;Lcom/loc/ai;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/loc/bx;->aqU:Lcom/loc/bX;

    invoke-virtual {v1, v0}, Lcom/loc/bX;->aFh(Lcom/loc/ai;)V

    :goto_1
    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/loc/bx;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/bx;->aDU(Landroid/content/Context;Z)Lcom/loc/bX;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bx;->aqU:Lcom/loc/bX;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SDKDB"

    const-string/jumbo v2, "insert"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/loc/bx;->aqU:Lcom/loc/bX;

    invoke-virtual {v2, v1, v0}, Lcom/loc/bX;->aFe(Ljava/lang/String;Lcom/loc/ai;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
