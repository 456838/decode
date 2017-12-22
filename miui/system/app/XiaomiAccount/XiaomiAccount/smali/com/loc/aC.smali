.class Lcom/loc/aC;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static azA(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static azB(Landroid/content/Context;Lcom/loc/bX;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/loc/aC;->azC(Landroid/content/Context;Lcom/loc/bX;Ljava/lang/String;)V

    return-void
.end method

.method private static azC(Landroid/content/Context;Lcom/loc/bX;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p2}, Lcom/loc/aC;->azz(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-static {p2}, Lcom/loc/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/loc/s;

    invoke-direct {v1}, Lcom/loc/s;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/loc/bX;->aFd(Ljava/lang/String;Lcom/loc/ai;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method static azD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/loc/cj;

    invoke-direct {v0, p0, p1, p2}, Lcom/loc/cj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/loc/cj;->start()V

    return-void
.end method

.method static azE(Landroid/content/Context;Lcom/loc/bX;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/loc/aC;->azC(Landroid/content/Context;Lcom/loc/bX;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/loc/aC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/loc/aC;->azC(Landroid/content/Context;Lcom/loc/bX;Ljava/lang/String;)V

    return-void
.end method

.method public static azF(Lcom/loc/bX;Landroid/content/Context;Lcom/loc/O;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/loc/s;

    invoke-direct {v0}, Lcom/loc/s;-><init>()V

    invoke-virtual {p2}, Lcom/loc/O;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/loc/O;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loc/aC;->azx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/loc/bk;->aDA(Lcom/loc/bX;Ljava/lang/String;)Lcom/loc/bs;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p0, v2}, Lcom/loc/aC;->azE(Landroid/content/Context;Lcom/loc/bX;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/loc/bs;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loc/s;->avi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/loc/bX;->aFl(Ljava/lang/String;Lcom/loc/ai;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bs;

    const-string/jumbo v1, "errorstatus"

    invoke-virtual {v0, v1}, Lcom/loc/bs;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/loc/bs;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/bk;->aDz(Lcom/loc/bX;Lcom/loc/bs;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/loc/bs;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/loc/aC;->azz(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method static azG(Landroid/content/Context;Lcom/loc/bX;Lcom/loc/O;Lcom/loc/bs;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/loc/O;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/loc/bs;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/loc/aC;->azE(Landroid/content/Context;Lcom/loc/bX;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {p2}, Lcom/loc/O;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/aC;->azy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v1, v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p3}, Lcom/loc/bs;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/loc/bk;->aDz(Lcom/loc/bX;Lcom/loc/bs;Ljava/lang/String;)V

    if-nez v3, :cond_1

    :goto_1
    if-nez v1, :cond_2

    :goto_2
    return-void

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_3
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    :goto_4
    if-nez v3, :cond_3

    :goto_5
    if-nez v2, :cond_4

    :goto_6
    throw v0

    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v3, v2

    :goto_7
    :try_start_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v3, v2

    :goto_8
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :cond_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catch_9
    move-exception v0

    goto :goto_7

    :catch_a
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catch_b
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_c
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3
.end method

.method static azH(Landroid/content/Context;Lcom/loc/bX;Ljava/lang/String;Lcom/loc/O;)Z
    .locals 1

    invoke-static {p0, p2}, Lcom/loc/aC;->azz(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lcom/loc/aC;->azI(Lcom/loc/bX;Ljava/lang/String;Ljava/lang/String;Lcom/loc/O;)Z

    move-result v0

    return v0
.end method

.method static azI(Lcom/loc/bX;Ljava/lang/String;Ljava/lang/String;Lcom/loc/O;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lcom/loc/bk;->aDA(Lcom/loc/bX;Ljava/lang/String;)Lcom/loc/bs;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p3}, Lcom/loc/O;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/loc/bs;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/loc/bs;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/loc/aC;->azw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_2
    return v3
.end method

.method static azJ(Landroid/content/Context;Lcom/loc/bX;Lcom/loc/O;)Ljava/lang/String;
    .locals 10

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/loc/O;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "copy"

    invoke-static {v1, v2}, Lcom/loc/s;->avj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/loc/s;

    invoke-direct {v2}, Lcom/loc/s;-><init>()V

    invoke-virtual {p1, v1, v2}, Lcom/loc/bX;->aFl(Ljava/lang/String;Lcom/loc/ai;)Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    return-object v8

    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v9}, Lcom/loc/aC;->azK(Ljava/util/List;)V

    move v7, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_2

    move-object v0, v8

    :goto_1
    return-object v0

    :cond_2
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/loc/bs;

    invoke-virtual {v6}, Lcom/loc/bs;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/loc/aC;->azH(Landroid/content/Context;Lcom/loc/bX;Ljava/lang/String;Lcom/loc/O;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Lcom/loc/bs;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/loc/aC;->azB(Landroid/content/Context;Lcom/loc/bX;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v0, Lcom/loc/E;

    invoke-virtual {p2}, Lcom/loc/O;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/loc/O;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loc/aC;->azx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/loc/bs;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/loc/O;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/loc/O;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/loc/bs;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/loc/E;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "usedex"

    invoke-virtual {v0, v1}, Lcom/loc/E;->a(Ljava/lang/String;)Lcom/loc/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/E;->a()Lcom/loc/bs;

    move-result-object v0

    invoke-virtual {v6}, Lcom/loc/bs;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/loc/aC;->azz(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/loc/aC;->azG(Landroid/content/Context;Lcom/loc/bX;Lcom/loc/O;Lcom/loc/bs;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/loc/bs;->e()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DexFileManager"

    const-string/jumbo v2, "loadAvailableDynamicSDKFile"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static azK(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/bs;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v3, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bs;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/bs;

    invoke-virtual {v0}, Lcom/loc/bs;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/loc/bs;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/loc/aw;->ayV(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_2

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    invoke-interface {p0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method static azw(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/loc/K;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method static azx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/K;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static azy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/loc/aC;->azx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/aC;->azz(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static azz(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/aC;->azA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
