.class abstract Lcom/loc/af;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private amS:Lcom/loc/O;

.field private amT:Lcom/loc/bz;

.field private amU:Lcom/loc/bB;

.field private b:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/loc/af;->b:I

    return-void
.end method

.method private axR(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/af;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/loc/af;->aym(Landroid/content/Context;Ljava/lang/String;)Lcom/loc/bB;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/af;->amU:Lcom/loc/bB;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "LogUpDateProcessor"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private axW(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/loc/O;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lcom/loc/bx;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lcom/loc/bx;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/loc/bx;->a()Ljava/util/List;

    move-result-object v1

    monitor-exit v2

    :goto_0
    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private axX(Lcom/loc/bI;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    new-instance v0, Lcom/loc/m;

    invoke-direct {v0}, Lcom/loc/m;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/m;->a(I)V

    invoke-virtual {v0, p2}, Lcom/loc/m;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/loc/m;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p4}, Lcom/loc/bI;->aEB(Lcom/loc/m;I)V

    return-void
.end method

.method private axZ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\"timestamp\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\",\"et\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\",\"classname\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\"detail\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aya(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/loc/aY;->aCJ(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private ayc(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ayd(Landroid/content/Context;Lcom/loc/O;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/loc/aY;->aCN(Landroid/content/Context;Lcom/loc/O;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aye(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/loc/bO;->aEP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ayf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/loc/bI;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/loc/aG;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x5000

    invoke-static {v2, v0, v3, v4, v5}, Lcom/loc/bB;->aDX(Ljava/io/File;IIJ)Lcom/loc/bB;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-virtual {p0, p5}, Lcom/loc/af;->axY(Lcom/loc/bI;)Lcom/loc/bz;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/loc/bB;->aDW(Lcom/loc/bz;)V

    invoke-virtual {v3, p2}, Lcom/loc/bB;->a(Ljava/lang/String;)Lcom/loc/aB;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-nez v2, :cond_3

    :try_start_2
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, p2}, Lcom/loc/bB;->b(Ljava/lang/String;)Lcom/loc/Z;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/loc/Z;->a(I)Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Lcom/loc/Z;->a()V

    invoke-virtual {v3}, Lcom/loc/bB;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v1, :cond_9

    :goto_0
    if-nez v2, :cond_a

    :goto_1
    if-nez v3, :cond_b

    :cond_1
    :goto_2
    return v7

    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    return v6

    :cond_3
    if-nez v2, :cond_7

    :goto_3
    if-nez v3, :cond_8

    :cond_4
    :goto_4
    return v6

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-nez v3, :cond_c

    :goto_6
    if-nez v1, :cond_d

    :goto_7
    if-nez v2, :cond_e

    :cond_5
    :goto_8
    return v6

    :catch_1
    move-exception v0

    move-object v3, v1

    move-object v2, v1

    :goto_9
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez v2, :cond_f

    :goto_a
    if-nez v1, :cond_10

    :goto_b
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/loc/bB;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_7
    invoke-virtual {v3}, Lcom/loc/bB;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v2, v1

    :goto_c
    if-nez v2, :cond_11

    :goto_d
    if-nez v1, :cond_12

    :goto_e
    if-nez v3, :cond_13

    :cond_6
    :goto_f
    throw v0

    :cond_7
    :try_start_8
    invoke-virtual {v2}, Lcom/loc/aB;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_8
    invoke-virtual {v3}, Lcom/loc/bB;->a()Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_9
    invoke-virtual {v3}, Lcom/loc/bB;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_9
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_a
    :try_start_b
    invoke-virtual {v2}, Lcom/loc/aB;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_1

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_b
    invoke-virtual {v3}, Lcom/loc/bB;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_c
    invoke-virtual {v3}, Lcom/loc/bB;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_c
    :try_start_d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_6

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :cond_d
    :try_start_e
    invoke-virtual {v1}, Lcom/loc/aB;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_7

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :cond_e
    invoke-virtual {v2}, Lcom/loc/bB;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_f
    invoke-virtual {v2}, Lcom/loc/bB;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_8

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :cond_f
    :try_start_10
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_a

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    :cond_10
    :try_start_11
    invoke-virtual {v1}, Lcom/loc/aB;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_c

    goto/16 :goto_b

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_b

    :cond_11
    :try_start_12
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_d

    goto :goto_d

    :catch_d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    :cond_12
    :try_start_13
    invoke-virtual {v1}, Lcom/loc/aB;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_e

    goto :goto_e

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_e

    :cond_13
    invoke-virtual {v3}, Lcom/loc/bB;->a()Z

    move-result v1

    if-nez v1, :cond_6

    :try_start_14
    invoke-virtual {v3}, Lcom/loc/bB;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_f

    goto/16 :goto_f

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_c

    :catchall_3
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_c

    :catchall_4
    move-exception v0

    move-object v8, v2

    move-object v2, v3

    move-object v3, v8

    goto/16 :goto_c

    :catchall_5
    move-exception v0

    goto/16 :goto_c

    :catch_10
    move-exception v0

    move-object v2, v1

    goto/16 :goto_9

    :catch_11
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_9

    :catch_12
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_9

    :catch_13
    move-exception v0

    move-object v2, v3

    move-object v3, v1

    goto/16 :goto_5

    :catch_14
    move-exception v0

    move-object v8, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v8

    goto/16 :goto_5

    :catch_15
    move-exception v0

    move-object v8, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v8

    goto/16 :goto_5
.end method

.method private ayi(Lcom/loc/bI;I)V
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p1, v0, p2}, Lcom/loc/bI;->aEA(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/loc/af;->ayj(Ljava/util/List;Lcom/loc/bI;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "processDeleteFail"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ayj(Ljava/util/List;Lcom/loc/bI;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/m;",
            ">;",
            "Lcom/loc/bI;",
            "I)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/m;

    invoke-virtual {v0}, Lcom/loc/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/loc/af;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/loc/m;->a(I)V

    invoke-virtual {v0}, Lcom/loc/m;->a()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lcom/loc/bI;->aEz(Lcom/loc/m;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/loc/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/loc/bI;->aEw(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private ayk(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/loc/aY;->aCI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/loc/aY;->aCM(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "getPublicInfo"

    invoke-static {v0, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "getPublicInfo"

    invoke-static {v0, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private ayl(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/m;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "{\"pinfo\":\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/loc/af;->ayk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\",\"els\":["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    move v1, v0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v1, :cond_4

    const-string/jumbo v0, "]}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/m;

    invoke-virtual {v0}, Lcom/loc/m;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/loc/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/loc/m;->d()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_3

    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v5, "{\"log\":\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\"}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    return-object v7
.end method

.method private aym(Landroid/content/Context;Ljava/lang/String;)Lcom/loc/bB;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/loc/aG;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x5000

    invoke-static {v2, v0, v3, v4, v5}, Lcom/loc/bB;->aDX(Ljava/io/File;IIJ)Lcom/loc/bB;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "initDiskLru"

    invoke-static {v0, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "initDiskLru"

    invoke-static {v0, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/af;->amU:Lcom/loc/bB;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/af;->amU:Lcom/loc/bB;

    invoke-virtual {v0, p1}, Lcom/loc/bB;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :cond_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LogUpdateProcessor"

    const-string/jumbo v3, "deleteLogData"

    invoke-static {v0, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "LogUpdateProcessor"

    const-string/jumbo v3, "deleteLogData"

    invoke-static {v0, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ac;->axL([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v3, Lcom/loc/H;

    invoke-direct {v3, v0}, Lcom/loc/H;-><init>([B)V

    :try_start_1
    invoke-static {}, Lcom/loc/bo;->a()Lcom/loc/bo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/loc/bo;->aDF(Lcom/loc/e;)[B
    :try_end_1
    .catch Lcom/loc/l; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_2
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/loc/l; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "code"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/loc/l; {:try_start_3 .. :try_end_3} :catch_2

    move-result v4

    if-nez v4, :cond_1

    move v0, v1

    :goto_2
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ac;->axL([B)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catch Lcom/loc/l; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/loc/l;->a()I

    move-result v3

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_2

    :goto_3
    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v3, "processUpdate"

    invoke-static {v0, v1, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move v0, v2

    goto :goto_2

    :cond_1
    :try_start_5
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/loc/l; {:try_start_5 .. :try_end_5} :catch_2

    move-result v0

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_6
    const-string/jumbo v3, "LogProcessor"

    const-string/jumbo v4, "processUpdate"

    invoke-static {v0, v3, v4}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/loc/l; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :cond_2
    move v2, v1

    goto :goto_3
.end method

.method private d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/loc/ac;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/af;->amU:Lcom/loc/bB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/af;->amU:Lcom/loc/bB;

    invoke-virtual {v0, p1}, Lcom/loc/bB;->a(Ljava/lang/String;)Lcom/loc/aB;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/aB;->a(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    const-string/jumbo v0, "utf-8"

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_4

    :goto_1
    if-nez v3, :cond_5

    :goto_2
    return-object v0

    :cond_0
    return-object v2

    :cond_1
    return-object v2

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    const-string/jumbo v4, "LogProcessor"

    const-string/jumbo v5, "readLog"

    invoke-static {v0, v4, v5}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_6

    :goto_4
    if-nez v3, :cond_7

    :cond_3
    :goto_5
    return-object v2

    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_6
    const-string/jumbo v4, "LogProcessor"

    const-string/jumbo v5, "readLog"

    invoke-static {v0, v4, v5}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v1, :cond_8

    :goto_7
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v3, "readLog2"

    invoke-static {v0, v1, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_8
    if-nez v1, :cond_9

    :goto_9
    if-nez v3, :cond_a

    :goto_a
    throw v0

    :cond_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v4, "readLog1"

    invoke-static {v1, v2, v4}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v4, "readLog1"

    invoke-static {v0, v1, v4}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v3, "readLog2"

    invoke-static {v0, v1, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v4, "readLog1"

    invoke-static {v0, v1, v4}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_9

    :catch_8
    move-exception v1

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v4, "readLog1"

    invoke-static {v1, v2, v4}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_a

    :catch_9
    move-exception v1

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_a
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6

    :catch_b
    move-exception v0

    goto/16 :goto_6

    :catch_c
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_3

    :catch_d
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/loc/af;->b:I

    invoke-static {v0}, Lcom/loc/aG;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/loc/K;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract avp(Landroid/content/Context;)Z
.end method

.method protected abstract avq(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/O;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method axS(Lcom/loc/O;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    invoke-virtual/range {p0 .. p1}, Lcom/loc/af;->axV(Lcom/loc/O;)V

    invoke-direct/range {p0 .. p0}, Lcom/loc/af;->d()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/loc/af;->ayd(Landroid/content/Context;Lcom/loc/O;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/loc/af;->aye(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/loc/af;->ayc(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v3, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/loc/af;->b()I

    move-result v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p5, :cond_3

    :goto_0
    if-nez p6, :cond_4

    :goto_1
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/loc/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/loc/af;->axZ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v9, "class:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string/jumbo v9, " method:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "$"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "<br/>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string/jumbo v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/loc/af;->aya(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/loc/af;->a()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    new-instance v13, Lcom/loc/bI;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Lcom/loc/bI;-><init>(Landroid/content/Context;)V

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v8 .. v13}, Lcom/loc/af;->ayf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/loc/bI;)Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/loc/O;->a()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v12, p0

    move-object v15, v10

    move/from16 v16, v7

    invoke-direct/range {v12 .. v17}, Lcom/loc/af;->axX(Lcom/loc/bI;Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method axT(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/loc/af;->axW(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/loc/af;->ayb(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v1, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v0, "com.amap.api.col"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_0
    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/O;

    invoke-virtual {v1}, Lcom/loc/O;->f()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/loc/af;->ayg([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/loc/af;->axS(Lcom/loc/O;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :try_start_0
    new-instance v0, Lcom/loc/cw;

    const-string/jumbo v1, "collection"

    const-string/jumbo v2, "1.0"

    const-string/jumbo v3, "AMap_collection_1.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/loc/cw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "com.amap.api.collection"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/loc/cw;->aFJ([Ljava/lang/String;)Lcom/loc/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/cw;->a()Lcom/loc/O;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/loc/af;->axS(Lcom/loc/O;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/loc/l;->printStackTrace()V

    goto :goto_0
.end method

.method axU(Landroid/content/Context;)V
    .locals 17

    invoke-direct/range {p0 .. p1}, Lcom/loc/af;->axW(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/loc/af;->avq(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v2, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/loc/af;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/af;->amS:Lcom/loc/O;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/loc/af;->ayd(Landroid/content/Context;Lcom/loc/O;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {p0 .. p1}, Lcom/loc/af;->aye(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "ANR"

    invoke-virtual/range {p0 .. p0}, Lcom/loc/af;->b()I

    move-result v6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/loc/af;->axZ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/loc/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/loc/af;->aya(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/loc/af;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    new-instance v12, Lcom/loc/bI;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/loc/bI;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/loc/af;->ayf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/loc/bI;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/af;->amS:Lcom/loc/O;

    invoke-virtual {v2}, Lcom/loc/O;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v14, v9

    move v15, v6

    invoke-direct/range {v11 .. v16}, Lcom/loc/af;->axX(Lcom/loc/bI;Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected axV(Lcom/loc/O;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/af;->amS:Lcom/loc/O;

    return-void
.end method

.method protected axY(Lcom/loc/bI;)Lcom/loc/bz;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/loc/af;->amT:Lcom/loc/bz;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/loc/af;->amT:Lcom/loc/bz;

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/loc/aN;

    invoke-direct {v0, p0, p1}, Lcom/loc/aN;-><init>(Lcom/loc/af;Lcom/loc/bI;)V

    iput-object v0, p0, Lcom/loc/af;->amT:Lcom/loc/bz;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected ayb(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/loc/af;->ayn(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected ayg([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    if-eqz p2, :cond_0

    :try_start_0
    array-length v2, p1

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_2

    :goto_1
    return v1

    :cond_2
    aget-object v3, p1, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method ayh(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    invoke-direct {p0, p1}, Lcom/loc/af;->axR(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/loc/af;->avp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lcom/loc/bI;

    invoke-direct {v0, p1}, Lcom/loc/bI;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/loc/af;->b()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/loc/af;->ayi(Lcom/loc/bI;I)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/loc/af;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/loc/bI;->aEA(II)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2, p1}, Lcom/loc/af;->ayl(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v3}, Lcom/loc/af;->c(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    :goto_0
    monitor-exit v1

    :goto_1
    return-void

    :cond_3
    monitor-exit v1

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/loc/af;->b()I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/loc/af;->ayj(Ljava/util/List;Lcom/loc/bI;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "processUpdateLog"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method ayn(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/loc/ac;->axI(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "\n"

    const-string/jumbo v2, "<br/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()I
    .locals 1

    iget v0, p0, Lcom/loc/af;->b:I

    return v0
.end method

.method c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/af;->amU:Lcom/loc/bB;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/af;->amU:Lcom/loc/bB;

    invoke-virtual {v0}, Lcom/loc/bB;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/af;->amU:Lcom/loc/bB;

    invoke-virtual {v0}, Lcom/loc/bB;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
