.class public Lcom/loc/bF;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private arm:Landroid/content/Context;

.field private arn:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private g:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v1, 0x300

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/loc/bF;->b:I

    iput v0, p0, Lcom/loc/bF;->c:I

    iput v0, p0, Lcom/loc/bF;->d:I

    iput v0, p0, Lcom/loc/bF;->e:I

    iput v0, p0, Lcom/loc/bF;->arn:I

    iput v0, p0, Lcom/loc/bF;->g:I

    iput-object p1, p0, Lcom/loc/bF;->arm:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/loc/bF;->a(I)V

    invoke-virtual {p0, v1}, Lcom/loc/bF;->b(I)V

    return-void
.end method

.method protected static aEk([BI)[B
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    array-length v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, 0x1

    if-gtz v1, :cond_3

    move p1, v0

    :cond_2
    :goto_0
    new-array v0, p1, [B

    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, p1, -0x1

    aput-byte v2, v0, v1

    return-object v0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    if-gt v0, p1, :cond_2

    add-int/lit8 p1, v1, 0x1

    goto :goto_0
.end method

.method private static aEm([Ljava/io/File;)Ljava/util/ArrayList;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private aEn(J)Ljava/io/File;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_1

    :try_start_0
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-static {}, Lcom/loc/bF;->c()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    invoke-static {}, Lcom/loc/bF;->d()J

    move-result-wide v4

    iget v0, p0, Lcom/loc/bF;->d:I

    div-int/lit8 v0, v0, 0x2

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    return-object v2

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    move-object v0, v2

    :goto_2
    if-nez v1, :cond_7

    return-object v2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/loc/bF;->arm:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bF;->aEt(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "carrierdata"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :goto_3
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_7
    return-object v0
.end method

.method protected static aEo([B)[B
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected static aEp(Landroid/location/Location;Lcom/loc/aS;IBJZ)Lcom/loc/da;
    .locals 16

    new-instance v6, Lcom/loc/da;

    invoke-direct {v6}, Lcom/loc/da;-><init>()V

    if-gtz p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :cond_1
    const/4 v2, 0x3

    move/from16 v0, p2

    if-gt v0, v2, :cond_0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    :cond_2
    const/4 v2, 0x1

    move v5, v2

    :goto_0
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    :cond_3
    const/4 v2, 0x1

    move v3, v2

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v7, v6, Lcom/loc/da;->c:[B

    const/4 v8, 0x0

    array-length v9, v2

    iget-object v10, v6, Lcom/loc/da;->c:[B

    array-length v10, v10

    invoke-static {v9, v10}, Lcom/loc/bF;->aEq(II)I

    move-result v9

    invoke-static {v2, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v7, v6, Lcom/loc/da;->g:[B

    const/4 v8, 0x0

    array-length v9, v2

    iget-object v10, v6, Lcom/loc/da;->g:[B

    array-length v10, v10

    invoke-static {v9, v10}, Lcom/loc/bF;->aEq(II)I

    move-result v9

    invoke-static {v2, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v7, v6, Lcom/loc/da;->a:[B

    const/4 v8, 0x0

    array-length v9, v2

    iget-object v10, v6, Lcom/loc/da;->a:[B

    array-length v10, v10

    invoke-static {v9, v10}, Lcom/loc/bF;->aEq(II)I

    move-result v9

    invoke-static {v2, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v7, v6, Lcom/loc/da;->b:[B

    const/4 v8, 0x0

    array-length v9, v2

    iget-object v10, v6, Lcom/loc/da;->b:[B

    array-length v10, v10

    invoke-static {v9, v10}, Lcom/loc/bF;->aEq(II)I

    move-result v9

    invoke-static {v2, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->p()I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, v6, Lcom/loc/da;->d:S

    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->q()I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, v6, Lcom/loc/da;->e:S

    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->r()I

    move-result v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    iput-byte v2, v6, Lcom/loc/da;->f:B

    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v7, v6, Lcom/loc/da;->h:[B

    const/4 v8, 0x0

    array-length v9, v2

    iget-object v10, v6, Lcom/loc/da;->h:[B

    array-length v10, v10

    invoke-static {v9, v10}, Lcom/loc/bF;->aEq(II)I

    move-result v9

    invoke-static {v2, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 v8, 0x3e8

    div-long v8, p4, v8

    if-nez p0, :cond_7

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_8

    if-nez p6, :cond_11

    const/4 v2, 0x0

    return-object v2

    :cond_5
    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    new-instance v4, Lcom/loc/cy;

    invoke-direct {v4}, Lcom/loc/cy;-><init>()V

    long-to-int v2, v8

    iput v2, v4, Lcom/loc/cy;->b:I

    new-instance v2, Lcom/loc/cz;

    invoke-direct {v2}, Lcom/loc/cz;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    double-to-int v7, v10

    iput v7, v2, Lcom/loc/cz;->a:I

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    double-to-int v7, v10

    iput v7, v2, Lcom/loc/cz;->b:I

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    double-to-int v7, v10

    iput v7, v2, Lcom/loc/cz;->c:I

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    float-to-int v7, v7

    iput v7, v2, Lcom/loc/cz;->d:I

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v7

    float-to-int v7, v7

    iput v7, v2, Lcom/loc/cz;->e:I

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearing()F

    move-result v7

    float-to-int v7, v7

    int-to-short v7, v7

    int-to-short v7, v7

    iput-short v7, v2, Lcom/loc/cz;->f:S

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v10, "sdk"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :goto_3
    const/4 v7, 0x1

    iput-byte v7, v2, Lcom/loc/cz;->g:B

    :goto_4
    move/from16 v0, p3

    int-to-byte v7, v0

    iput-byte v7, v2, Lcom/loc/cz;->h:B

    iget v7, v2, Lcom/loc/cz;->d:I

    const/16 v10, 0x19

    if-gt v7, v10, :cond_10

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/loc/cz;->i:J

    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->n()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/loc/cz;->j:J

    iput-object v2, v4, Lcom/loc/cy;->c:Lcom/loc/cz;

    const/4 v2, 0x1

    iget-object v7, v6, Lcom/loc/da;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->c()Z

    move-result v4

    if-nez v4, :cond_13

    :cond_9
    :goto_7
    move v4, v2

    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->c()Z

    move-result v2

    if-nez v2, :cond_17

    :cond_a
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->d()Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_b
    :goto_9
    int-to-short v2, v4

    int-to-short v2, v2

    iput-short v2, v6, Lcom/loc/da;->i:S

    const/4 v2, 0x2

    if-lt v4, v2, :cond_1e

    :cond_c
    return-object v6

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->x()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/loc/aS;->aBn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_f

    :cond_e
    const/4 v7, 0x0

    iput-byte v7, v2, Lcom/loc/cz;->g:B

    goto :goto_4

    :cond_f
    sget-boolean v7, Lcom/loc/q;->ajN:Z

    if-eqz v7, :cond_e

    goto :goto_3

    :cond_10
    const/4 v7, 0x5

    iput-byte v7, v2, Lcom/loc/cz;->h:B

    goto :goto_5

    :cond_11
    new-instance v4, Lcom/loc/cy;

    invoke-direct {v4}, Lcom/loc/cy;-><init>()V

    long-to-int v2, v8

    iput v2, v4, Lcom/loc/cy;->b:I

    new-instance v7, Lcom/loc/dd;

    invoke-direct {v7}, Lcom/loc/dd;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->w()B

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v7, Lcom/loc/dd;->a:B

    const/4 v2, 0x0

    :goto_a
    iget-byte v10, v7, Lcom/loc/dd;->a:B

    if-lt v2, v10, :cond_12

    iput-object v7, v4, Lcom/loc/cy;->g:Lcom/loc/dd;

    const/4 v2, 0x1

    iget-object v7, v6, Lcom/loc/da;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    new-instance v10, Lcom/loc/de;

    invoke-direct {v10}, Lcom/loc/de;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/aS;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    int-to-byte v11, v11

    iput-byte v11, v10, Lcom/loc/de;->a:B

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/aS;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, v10, Lcom/loc/de;->b:[B

    const/4 v14, 0x0

    iget-byte v15, v10, Lcom/loc/de;->a:B

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/aS;->c(I)D

    move-result-wide v12

    iput-wide v12, v10, Lcom/loc/de;->c:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/aS;->aAX(I)I

    move-result v11

    iput v11, v10, Lcom/loc/de;->d:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/aS;->aAY(I)I

    move-result v11

    iput v11, v10, Lcom/loc/de;->e:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/aS;->aAZ(I)D

    move-result-wide v12

    iput-wide v12, v10, Lcom/loc/de;->f:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/aS;->aBa(I)B

    move-result v11

    int-to-byte v11, v11

    iput-byte v11, v10, Lcom/loc/de;->g:B

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/aS;->aBb(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    int-to-byte v11, v11

    iput-byte v11, v10, Lcom/loc/de;->h:B

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/aS;->aBb(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, v10, Lcom/loc/de;->i:[B

    const/4 v14, 0x0

    iget-byte v15, v10, Lcom/loc/de;->h:B

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/aS;->aBc(I)B

    move-result v11

    int-to-byte v11, v11

    iput-byte v11, v10, Lcom/loc/de;->j:B

    iget-object v11, v7, Lcom/loc/dd;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->i()Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz v5, :cond_9

    if-nez p6, :cond_9

    new-instance v7, Lcom/loc/cy;

    invoke-direct {v7}, Lcom/loc/cy;-><init>()V

    long-to-int v2, v8

    iput v2, v7, Lcom/loc/cy;->b:I

    new-instance v10, Lcom/loc/eg;

    invoke-direct {v10}, Lcom/loc/eg;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/aS;->a(F)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_15

    :cond_14
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->k()B

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v10, Lcom/loc/eg;->c:B

    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->l()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    iput-byte v2, v10, Lcom/loc/eg;->d:B

    const/4 v2, 0x0

    move v4, v2

    :goto_c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-lt v4, v2, :cond_16

    iput-object v10, v7, Lcom/loc/cy;->d:Lcom/loc/eg;

    const/4 v2, 0x2

    iget-object v4, v6, Lcom/loc/da;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_15
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x3

    if-lt v2, v11, :cond_14

    const/4 v2, 0x0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, v10, Lcom/loc/eg;->a:S

    const/4 v2, 0x1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v10, Lcom/loc/eg;->b:I

    goto :goto_b

    :cond_16
    new-instance v12, Lcom/loc/dk;

    invoke-direct {v12}, Lcom/loc/dk;-><init>()V

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, v12, Lcom/loc/dk;->a:S

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    iput v2, v12, Lcom/loc/dk;->b:I

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    iput-byte v2, v12, Lcom/loc/dk;->c:B

    iget-object v2, v10, Lcom/loc/eg;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_c

    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->i()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v5, :cond_a

    if-nez p6, :cond_a

    new-instance v5, Lcom/loc/cy;

    invoke-direct {v5}, Lcom/loc/cy;-><init>()V

    long-to-int v2, v8

    iput v2, v5, Lcom/loc/cy;->b:I

    new-instance v7, Lcom/loc/dj;

    invoke-direct {v7}, Lcom/loc/dj;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/loc/aS;->b(F)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_19

    :cond_18
    :goto_d
    iput-object v7, v5, Lcom/loc/cy;->e:Lcom/loc/dj;

    add-int/lit8 v4, v4, 0x1

    iget-object v2, v6, Lcom/loc/da;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_19
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x6

    if-lt v2, v9, :cond_18

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v7, Lcom/loc/dj;->a:I

    const/4 v2, 0x4

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v7, Lcom/loc/dj;->b:I

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, v7, Lcom/loc/dj;->c:S

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, v7, Lcom/loc/dj;->d:S

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v7, Lcom/loc/dj;->e:I

    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->k()B

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v7, Lcom/loc/dj;->f:B

    goto :goto_d

    :cond_1a
    if-eqz v3, :cond_b

    if-nez p6, :cond_b

    new-instance v7, Lcom/loc/cy;

    invoke-direct {v7}, Lcom/loc/cy;-><init>()V

    new-instance v8, Lcom/loc/df;

    invoke-direct {v8}, Lcom/loc/df;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/loc/aS;->t()Ljava/util/List;

    move-result-object v9

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v2, v10

    long-to-int v2, v2

    iput v2, v7, Lcom/loc/cy;->b:I

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    iput-byte v2, v8, Lcom/loc/df;->a:B

    const/4 v2, 0x1

    move v5, v2

    :goto_e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lt v5, v2, :cond_1b

    iput-object v8, v7, Lcom/loc/cy;->f:Lcom/loc/df;

    add-int/lit8 v4, v4, 0x1

    iget-object v2, v6, Lcom/loc/da;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_1b
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1d

    :cond_1c
    :goto_f
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_e

    :cond_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v10, 0x3

    if-lt v3, v10, :cond_1c

    new-instance v10, Lcom/loc/dg;

    invoke-direct {v10}, Lcom/loc/dg;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v11, 0x0

    iget-object v12, v10, Lcom/loc/dg;->a:[B

    const/4 v13, 0x0

    array-length v14, v3

    iget-object v15, v10, Lcom/loc/dg;->a:[B

    array-length v15, v15

    invoke-static {v14, v15}, Lcom/loc/bF;->aEq(II)I

    move-result v14

    invoke-static {v3, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-short v3, v3

    int-to-short v3, v3

    iput-short v3, v10, Lcom/loc/dg;->b:S

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v11, v10, Lcom/loc/dg;->c:[B

    const/4 v12, 0x0

    array-length v13, v2

    iget-object v14, v10, Lcom/loc/dg;->c:[B

    array-length v14, v14

    invoke-static {v13, v14}, Lcom/loc/bF;->aEq(II)I

    move-result v13

    invoke-static {v2, v3, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v8, Lcom/loc/df;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1e
    if-nez p6, :cond_c

    const/4 v2, 0x0

    return-object v2
.end method

.method private static aEq(II)I
    .locals 0

    if-lt p0, p1, :cond_0

    return p1

    :cond_0
    return p0
.end method

.method protected static aEr(Ljava/util/BitSet;)[B
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/BitSet;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v3, v0, [B

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/util/BitSet;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-object v3

    :cond_0
    div-int/lit8 v4, v0, 0x8

    rem-int/lit8 v2, v0, 0x8

    rsub-int/lit8 v5, v2, 0x7

    aget-byte v6, v3, v4

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    shl-int/2addr v2, v5

    or-int/2addr v2, v6

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected static aEs([B)Ljava/util/BitSet;
    .locals 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v7, Ljava/util/BitSet;

    array-length v0, p0

    shl-int/lit8 v0, v0, 0x3

    invoke-direct {v7, v0}, Ljava/util/BitSet;-><init>(I)V

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    return-object v7

    :cond_0
    const/4 v3, 0x7

    move v5, v3

    :goto_1
    if-gez v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v2, 0x1

    aget-byte v3, p0, v0

    shl-int v8, v4, v5

    and-int/2addr v3, v8

    shr-int/2addr v3, v5

    if-eq v3, v4, :cond_2

    move v3, v1

    :goto_2
    invoke-virtual {v7, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v2, v5, -0x1

    move v5, v2

    move v2, v6

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method protected static aEt(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    const-string/jumbo v0, "/files/"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/Android/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static varargs aEu(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p2

    new-array v2, v2, [Ljava/lang/Class;

    array-length v3, p2

    :goto_0
    if-lt v0, v3, :cond_0

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v0

    aget-object v4, v2, v0

    const-class v5, Ljava/lang/Integer;

    if-eq v4, v5, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_1
.end method

.method public static varargs aEv(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p2

    new-array v2, v2, [Ljava/lang/Class;

    array-length v3, p2

    :goto_0
    if-lt v0, v3, :cond_0

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v0

    aget-object v4, v2, v0

    const-class v5, Ljava/lang/Integer;

    if-eq v4, v5, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_1
.end method

.method protected static c()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_0
    const-class v0, Landroid/os/Environment;

    const-string/jumbo v1, "isExternalStorageRemovable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static d()J
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private e()Ljava/io/File;
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_3

    :try_start_0
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-static {}, Lcom/loc/bF;->c()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/loc/bF;->arm:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bF;->aEt(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "carrierdata"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    :goto_1
    move-object v0, v2

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    return-object v2

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_0

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v4, v0

    if-lez v4, :cond_1

    invoke-static {v0}, Lcom/loc/bF;->aEm([Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v3, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x2

    if-lt v0, v5, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    iget v0, p0, Lcom/loc/bF;->arn:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_7

    move v0, v3

    :goto_3
    if-nez v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method private f()I
    .locals 8

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_2

    :try_start_0
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-static {}, Lcom/loc/bF;->c()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/loc/bF;->arm:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bF;->aEt(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "carrierdata"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    :goto_1
    return v1

    :cond_2
    return v1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_0

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v4, v0

    if-lez v4, :cond_1

    invoke-static {v0}, Lcom/loc/bF;->aEm([Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v3, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v2, :cond_1

    move v1, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    move v1, v3

    :cond_6
    if-nez v1, :cond_7

    const/16 v1, 0xa

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_1
.end method

.method private g()Ljava/io/File;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_3

    :try_start_0
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-static {}, Lcom/loc/bF;->c()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/loc/bF;->arm:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bF;->aEt(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_1
    :goto_1
    move-object v0, v2

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    return-object v2

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "carrierdata"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    invoke-static {v0}, Lcom/loc/bF;->aEm([Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget v0, p0, Lcom/loc/bF;->b:I

    return v0
.end method

.method protected declared-synchronized a(J)Ljava/io/File;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bF;->e()Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/loc/bF;->aEn(J)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(I)V
    .locals 2

    iput p1, p0, Lcom/loc/bF;->b:I

    iget v0, p0, Lcom/loc/bF;->b:I

    shl-int/lit8 v0, v0, 0x3

    mul-int/lit16 v0, v0, 0x5dc

    iget v1, p0, Lcom/loc/bF;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/loc/bF;->d:I

    iget v0, p0, Lcom/loc/bF;->b:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/loc/bF;->d:I

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/loc/bF;->arn:I

    return-void

    :cond_1
    iget v0, p0, Lcom/loc/bF;->b:I

    const/16 v1, 0x300

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/loc/bF;->b:I

    const/16 v1, 0x2220

    if-eq v0, v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/loc/bF;->d:I

    add-int/lit16 v0, v0, -0x1388

    iput v0, p0, Lcom/loc/bF;->arn:I

    goto :goto_0
.end method

.method protected declared-synchronized aEl(J)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bF;->f()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    monitor-exit p0

    return v2

    :cond_0
    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/loc/bF;->aEn(J)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v3

    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b()Ljava/io/File;
    .locals 1

    invoke-direct {p0}, Lcom/loc/bF;->g()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)V
    .locals 2

    iput p1, p0, Lcom/loc/bF;->c:I

    iget v0, p0, Lcom/loc/bF;->c:I

    shl-int/lit8 v0, v0, 0x3

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/loc/bF;->c:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/loc/bF;->e:I

    iget v0, p0, Lcom/loc/bF;->e:I

    iput v0, p0, Lcom/loc/bF;->g:I

    return-void
.end method
