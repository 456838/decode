.class public Lcom/loc/bc;
.super Ljava/lang/Thread;
.source ""

# interfaces
.implements Lcom/loc/be;


# instance fields
.field private apZ:Lcom/loc/ah;

.field private aqa:Lcom/loc/j;

.field private aqb:Lcom/loc/O;

.field private aqc:Ljava/io/RandomAccessFile;

.field private aqd:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/ah;Lcom/loc/O;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    iput-object p3, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/loc/bc;->apZ:Lcom/loc/ah;

    new-instance v0, Lcom/loc/j;

    new-instance v1, Lcom/loc/aQ;

    iget-object v2, p0, Lcom/loc/bc;->apZ:Lcom/loc/ah;

    invoke-direct {v1, v2}, Lcom/loc/aQ;-><init>(Lcom/loc/ah;)V

    invoke-direct {v0, v1}, Lcom/loc/j;-><init>(Lcom/loc/e;)V

    iput-object v0, p0, Lcom/loc/bc;->aqa:Lcom/loc/j;

    iget-object v0, p0, Lcom/loc/bc;->apZ:Lcom/loc/ah;

    invoke-virtual {v0}, Lcom/loc/ah;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/loc/bc;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/bc;->f:Ljava/lang/String;

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/loc/bc;->h:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/loc/bc;->i:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/loc/bc;->j:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/loc/bc;->l:I

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string/jumbo v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loc/bc;->m:I

    invoke-virtual {p2}, Lcom/loc/ah;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bc;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/bc;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/loc/aC;->azz(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bc;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "DexDownLoad"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/loc/bX;

    iget-object v1, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    invoke-static {}, Lcom/loc/cu;->c()Lcom/loc/cu;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/loc/bX;-><init>(Landroid/content/Context;Lcom/loc/cv;)V

    const-string/jumbo v1, "copy"

    invoke-static {p1, v1}, Lcom/loc/s;->avj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/loc/s;

    invoke-direct {v3}, Lcom/loc/s;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/loc/bX;->aFl(Ljava/lang/String;Lcom/loc/ai;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/aC;->azK(Ljava/util/List;)V

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bs;

    iget-object v5, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/loc/bs;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/loc/aC;->azB(Landroid/content/Context;Lcom/loc/bX;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private aCR(Lcom/loc/bX;Lcom/loc/bs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "errorstatus"

    invoke-virtual {p2}, Lcom/loc/bs;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/bc;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3, p4}, Lcom/loc/aC;->azx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p4, p5}, Lcom/loc/s;->avk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/loc/s;

    invoke-direct {v1}, Lcom/loc/s;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/loc/bX;->aFl(Ljava/lang/String;Lcom/loc/ai;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    invoke-virtual {v0}, Lcom/loc/O;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/loc/aC;->azx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/loc/E;

    move-object v2, p6

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/loc/E;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "usedex"

    invoke-virtual {v0, v1}, Lcom/loc/E;->a(Ljava/lang/String;)Lcom/loc/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/E;->a()Lcom/loc/bs;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    iget-object v3, p0, Lcom/loc/bc;->d:Ljava/lang/String;

    invoke-static {v1, p1, v2, v0, v3}, Lcom/loc/aC;->azG(Landroid/content/Context;Lcom/loc/bX;Lcom/loc/O;Lcom/loc/bs;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    iget-object v2, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/bc;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    invoke-virtual {v4}, Lcom/loc/O;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/loc/aC;->azy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/aC;->azA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v4, 0x0

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/loc/p;->auu(Landroid/content/Context;Lcom/loc/O;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return v7

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    invoke-virtual {v2}, Lcom/loc/O;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    invoke-virtual {v3}, Lcom/loc/O;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/loc/aC;->azy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return v7

    :cond_2
    iget-object v0, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    invoke-static {v0, p1, v1}, Lcom/loc/aC;->azJ(Landroid/content/Context;Lcom/loc/bX;Lcom/loc/O;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    iget-object v2, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/bc;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    invoke-virtual {v5}, Lcom/loc/O;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/loc/aC;->azy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/aC;->azA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/loc/p;->auu(Landroid/content/Context;Lcom/loc/O;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    return v7

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "processDownloadedFile()"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "processDownloadedFile()"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "processDownloadedFile()"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private aCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    new-instance v1, Lcom/loc/bX;

    iget-object v0, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    invoke-static {}, Lcom/loc/cu;->c()Lcom/loc/cu;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/loc/bX;-><init>(Landroid/content/Context;Lcom/loc/cv;)V

    :try_start_0
    const-string/jumbo v0, "usedex"

    invoke-static {p3, v0}, Lcom/loc/s;->avj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/loc/s;

    invoke-direct {v2}, Lcom/loc/s;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/loc/bX;->aFl(Ljava/lang/String;Lcom/loc/ai;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-static {v1, p1}, Lcom/loc/bk;->aDA(Lcom/loc/bX;Ljava/lang/String;)Lcom/loc/bs;

    move-result-object v2

    if-nez v2, :cond_2

    return v4

    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bs;

    invoke-virtual {v0}, Lcom/loc/bs;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/bc;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/loc/aw;->ayV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DexDownLoad"

    const-string/jumbo v3, "isDownloaded()"

    invoke-static {v0, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/loc/bc;->aCR(Lcom/loc/bX;Lcom/loc/bs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private aCT(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    invoke-virtual {v1}, Lcom/loc/O;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    invoke-virtual {v1}, Lcom/loc/O;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private aCU(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/loc/az;->azj(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private d()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/loc/bc;->m:I

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/loc/bc;->l:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bc;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/bc;->i:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/loc/bc;->aCT(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v6

    :cond_1
    iget-object v1, p0, Lcom/loc/bc;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bc;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bc;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/bc;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/bc;->k:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/loc/bc;->aCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/loc/bc;->aCU(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/loc/bc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    invoke-virtual {v0}, Lcom/loc/O;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/bc;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "isNeedDownload()"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/bc;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "startDownload"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public aCV([BJ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/bc;->aqc:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/bc;->aqc:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/loc/bc;->aqc:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/bc;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    :try_start_3
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/bc;->aqc:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onDownload()"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onDownload()"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    :catch_2
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onDownload()"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method public aCW(Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/bc;->aqc:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/bc;->aqc:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onException()"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onException()"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/loc/bc;->aqc:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/bc;->aqc:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/bc;->apZ:Lcom/loc/ah;

    invoke-virtual {v0}, Lcom/loc/ah;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/bc;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/loc/aC;->azw(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-nez v0, :cond_1

    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/bc;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    :goto_1
    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/loc/bc;->apZ:Lcom/loc/ah;

    invoke-virtual {v0}, Lcom/loc/ah;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/loc/bX;

    iget-object v0, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    invoke-static {}, Lcom/loc/cu;->c()Lcom/loc/cu;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/loc/bX;-><init>(Landroid/content/Context;Lcom/loc/cv;)V

    new-instance v0, Lcom/loc/E;

    iget-object v1, p0, Lcom/loc/bc;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bc;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/bc;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/loc/E;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "copy"

    invoke-virtual {v0, v1}, Lcom/loc/E;->a(Ljava/lang/String;)Lcom/loc/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/E;->a()Lcom/loc/bs;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bc;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bc;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/bc;->j:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Lcom/loc/s;->avk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/loc/bk;->aDz(Lcom/loc/bX;Lcom/loc/bs;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    new-instance v0, Lcom/loc/E;

    iget-object v1, p0, Lcom/loc/bc;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    invoke-virtual {v3}, Lcom/loc/O;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/loc/aC;->azx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/loc/bc;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/bc;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/loc/E;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "usedex"

    invoke-virtual {v0, v1}, Lcom/loc/E;->a(Ljava/lang/String;)Lcom/loc/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/E;->a()Lcom/loc/bs;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    iget-object v3, p0, Lcom/loc/bc;->d:Ljava/lang/String;

    invoke-static {v1, v6, v2, v0, v3}, Lcom/loc/aC;->azG(Landroid/content/Context;Lcom/loc/bX;Lcom/loc/O;Lcom/loc/bs;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    iget-object v2, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/bc;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/bc;->aqb:Lcom/loc/O;

    invoke-virtual {v4}, Lcom/loc/O;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/loc/aC;->azy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/aC;->azA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/loc/bc;->aqd:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iget-object v6, p0, Lcom/loc/bc;->j:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/loc/p;->auu(Landroid/content/Context;Lcom/loc/O;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_7
    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_4
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_5
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bc;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/bc;->aqa:Lcom/loc/j;

    invoke-virtual {v0, p0}, Lcom/loc/j;->auk(Lcom/loc/be;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "run"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
