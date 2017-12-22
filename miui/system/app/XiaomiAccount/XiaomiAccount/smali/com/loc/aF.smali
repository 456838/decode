.class public Lcom/loc/aF;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[I

.field private static anF:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static anG:Lcom/loc/F;

.field private static anH:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static anI:Landroid/telephony/TelephonyManager;

.field static b:I

.field private static volatile c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    sput-object v1, Lcom/loc/aF;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/loc/aF;->anF:Ljava/util/Hashtable;

    new-instance v0, Lcom/loc/F;

    invoke-direct {v0}, Lcom/loc/F;-><init>()V

    sput-object v0, Lcom/loc/aF;->anG:Lcom/loc/F;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/loc/aF;->anH:Ljava/util/Hashtable;

    sput-object v1, Lcom/loc/aF;->anI:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v2, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    sput-object v0, Lcom/loc/aF;->a:[I

    const v0, 0x34383

    sput v0, Lcom/loc/aF;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x20

    new-array v2, v1, [I

    move v1, v0

    :goto_0
    const/4 v3, 0x4

    if-lt v0, v3, :cond_0

    sget v0, Lcom/loc/aF;->b:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    aget v3, v2, v0

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xf0

    aget v4, v2, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    add-int/2addr v3, v4

    aput v3, v2, v0

    aget v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    rsub-int/lit8 v4, v0, 0x3

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0x9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "cgi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    array-length v1, v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/loc/aF;->anG:Lcom/loc/F;

    invoke-virtual {v0}, Lcom/loc/F;->a()V

    sget-object v0, Lcom/loc/aF;->anF:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    sget-object v0, Lcom/loc/aF;->anH:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    sget-object v0, Lcom/loc/aF;->a:[I

    aput v2, v0, v2

    sget-object v0, Lcom/loc/aF;->a:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    return-void
.end method

.method private static aAa(ILcom/loc/J;Ljava/lang/String;[IIILjava/lang/String;I)I
    .locals 8

    const/4 v0, -0x1

    add-int/lit8 v7, p7, 0x1

    const/16 v1, 0x19

    if-gt v7, v1, :cond_1

    add-int v1, p4, p5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x10

    add-int v5, v1, p0

    invoke-static {p1, p2, p3, v5, p6}, Lcom/loc/aF;->aAb(Lcom/loc/J;Ljava/lang/String;[IILjava/lang/String;)I

    move-result v1

    if-eq p4, v5, :cond_2

    :cond_0
    const v2, 0x7fffffff

    if-eq v1, v2, :cond_4

    if-eqz v1, :cond_5

    if-ltz v1, :cond_6

    add-int/lit8 v4, v5, 0x10

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/loc/aF;->aAa(ILcom/loc/J;Ljava/lang/String;[IIILjava/lang/String;I)I

    move-result v0

    return v0

    :cond_1
    return v0

    :cond_2
    if-ne v5, p5, :cond_0

    if-eqz v1, :cond_3

    move p4, v0

    :cond_3
    return p4

    :cond_4
    return v0

    :cond_5
    return v5

    :cond_6
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/loc/aF;->aAa(ILcom/loc/J;Ljava/lang/String;[IIILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static aAb(Lcom/loc/J;Ljava/lang/String;[IILjava/lang/String;)I
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x6

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    int-to-long v2, p3

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/loc/J;->a(J)V

    const-string/jumbo v0, "gsm"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cdma"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "wifi"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_0
    const v0, 0x7fffffff

    return v0

    :cond_0
    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {p0}, Lcom/loc/J;->d()I

    move-result v3

    invoke-virtual {p0}, Lcom/loc/J;->e()I

    move-result v4

    if-lt v0, v3, :cond_1

    if-gt v0, v3, :cond_2

    if-lt v2, v4, :cond_3

    if-gt v2, v4, :cond_4

    return v1

    :cond_1
    return v7

    :cond_2
    return v6

    :cond_3
    return v7

    :cond_4
    return v6

    :cond_5
    const/4 v0, 0x3

    new-array v2, v0, [I

    const/4 v0, 0x0

    const/4 v3, 0x0

    aget v3, p2, v3

    aput v3, v2, v0

    const/4 v0, 0x1

    const/4 v3, 0x1

    aget v3, p2, v3

    aput v3, v2, v0

    const/4 v0, 0x2

    const/4 v3, 0x2

    aget v3, p2, v3

    aput v3, v2, v0

    const/4 v0, 0x3

    new-array v3, v0, [I

    move v0, v1

    :goto_1
    if-lt v0, v9, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/loc/J;->d()I

    move-result v4

    aput v4, v3, v0

    aget v4, v2, v0

    aget v5, v3, v0

    if-lt v4, v5, :cond_7

    aget v4, v2, v0

    aget v5, v3, v0

    if-gt v4, v5, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return v7

    :cond_8
    return v6

    :cond_9
    invoke-static {p1}, Lcom/loc/bd;->b(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v0, 0x6

    new-array v4, v0, [I

    move v2, v1

    :goto_2
    if-lt v2, v8, :cond_a

    const/4 v0, 0x6

    new-array v2, v0, [I

    move v0, v1

    :goto_3
    if-lt v0, v8, :cond_c

    return v1

    :cond_a
    aget-byte v0, v3, v2

    if-ltz v0, :cond_b

    aget-byte v0, v3, v2

    :goto_4
    aput v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_b
    aget-byte v0, v3, v2

    add-int/lit16 v0, v0, 0x100

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/loc/J;->f()I

    move-result v3

    aput v3, v2, v0

    aget v3, v4, v0

    aget v5, v2, v0

    if-lt v3, v5, :cond_d

    aget v3, v4, v0

    aget v5, v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v3, v5, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    return v7

    :cond_e
    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Off"

    const-string/jumbo v2, "cmpItem"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static aAc(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/loc/aF;->anH:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/loc/aF;->a(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :cond_0
    return-object v0

    :pswitch_0
    sget-object v1, Lcom/loc/aF;->anH:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/loc/aF;->anH:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object v0, v2

    move-object v2, v0

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    return-object v2

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static aAd(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 9

    const/16 v0, 0x19

    const-wide/16 v6, 0x0

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_2

    if-ne p3, v8, :cond_8

    :cond_0
    invoke-static {v6, v7, v6, v7, p1}, Lcom/loc/aF;->azR(DDLjava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eq p3, v8, :cond_9

    if-eq p3, v4, :cond_a

    move v2, v1

    :goto_0
    if-eq p2, v8, :cond_b

    if-eq p2, v4, :cond_c

    return v1

    :cond_1
    return v1

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/loc/aF;->aAe(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    return v8

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    :goto_2
    sget-object v1, Lcom/loc/aF;->anH:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_3
    sget-object v1, Lcom/loc/aF;->anF:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/loc/aF;->anF:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/loc/aF;->anH:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    if-eq p3, v4, :cond_0

    return v1

    :cond_9
    const/16 v2, 0x9

    goto :goto_0

    :cond_a
    move v2, v0

    goto :goto_0

    :cond_b
    move v0, v1

    :cond_c
    sget-object v1, Lcom/loc/aF;->anH:Ljava/util/Hashtable;

    sget-object v4, Lcom/loc/aF;->anF:Ljava/util/Hashtable;

    :goto_4
    if-lt v0, v2, :cond_d

    return v8

    :cond_d
    aget-object v5, v3, v0

    invoke-static {p0, v5, p2}, Lcom/loc/aF;->aAe(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_f

    :cond_e
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_11

    :cond_10
    :goto_6
    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    :goto_7
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_11
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_6

    :cond_12
    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method private static aAe(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/loc/aF;->c()Ljava/lang/StringBuilder;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    return-object v1

    :pswitch_0
    invoke-static {p0}, Lcom/loc/aF;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p0}, Lcom/loc/aF;->azT(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static aAf(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v8

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_3

    :cond_2
    return v8

    :cond_3
    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/loc/aF;->c()Ljava/lang/StringBuilder;

    move-result-object v1

    packed-switch p2, :pswitch_data_0

    return v8

    :pswitch_0
    invoke-static {p0}, Lcom/loc/aF;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p0}, Lcom/loc/aF;->azT(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    add-int/lit8 v6, v2, 0x3

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v8, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    aget-object v2, p3, v9

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_4
    :goto_3
    move-wide v2, v4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v4, "v"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "geohash"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "t"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "imei"

    sget-object v2, Lcom/loc/aH;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "imsi"

    sget-object v2, Lcom/loc/aH;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "src"

    sget-object v2, Lcom/loc/aH;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "license"

    sget-object v2, Lcom/loc/aH;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v8

    return v9

    :cond_5
    const/4 v2, 0x4

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v6, v2, 0x4

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_1
    const-string/jumbo v0, "wifi"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v2, 0x3

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "r"

    invoke-direct {v2, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v6, 0x0

    :try_start_2
    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLong()J
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v4

    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "getRequestParams part3"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_1
    move-exception v1

    move-object v2, v3

    :goto_5
    :try_start_4
    const-string/jumbo v3, "Off"

    const-string/jumbo v6, "getRequestParams part1"

    invoke-static {v1, v3, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v1

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "getRequestParams part3"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_3
    move-exception v1

    :goto_6
    :try_start_6
    const-string/jumbo v2, "Off"

    const-string/jumbo v6, "getRequestParams part2"

    invoke-static {v1, v2, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v1

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "getRequestParams part3"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :goto_7
    if-nez v3, :cond_8

    :goto_8
    throw v0

    :catch_5
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "getRequestParams part4"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    :catch_6
    move-exception v1

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "getRequestParams part3"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_7

    :catch_7
    move-exception v1

    move-object v3, v2

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static aAg(Landroid/content/Context;Ljava/lang/String;IZZ)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_5

    if-eq p2, v2, :cond_6

    :cond_0
    move v0, v1

    :goto_0
    const-string/jumbo v3, "cgi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_1
    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_2
    sget-object v0, Lcom/loc/aF;->a:[I

    aget v0, v0, v2

    const/16 v3, 0x7d0

    if-gt v0, v3, :cond_9

    invoke-static {p0}, Lcom/loc/bd;->aDh(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/aE;->azP(Landroid/net/NetworkInfo;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_b

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_c

    :cond_4
    :goto_1
    return v2

    :cond_5
    const/16 v0, 0x19

    if-ge p2, v0, :cond_0

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_1

    return v1

    :cond_8
    if-nez v0, :cond_2

    return v1

    :cond_9
    return v1

    :cond_a
    return v1

    :cond_b
    if-eqz p4, :cond_3

    return v1

    :cond_c
    if-nez p4, :cond_4

    sget-object v0, Lcom/loc/aF;->anI:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_4

    const-string/jumbo v0, "phone"

    invoke-static {p0, v0}, Lcom/loc/bd;->aDe(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/loc/aF;->anI:Landroid/telephony/TelephonyManager;

    goto :goto_1
.end method

.method public static azR(DDLjava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/16 v5, 0x32

    const/16 v4, 0x19

    const/4 v2, 0x0

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/loc/n;->aul(DD)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcom/loc/n;->aul(DD)Ljava/lang/String;

    move-result-object p4

    :goto_0
    aput-object v0, v1, v2

    aput-object p4, v1, v4

    invoke-static {v0}, Lcom/loc/n;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    :goto_1
    if-lt v0, v4, :cond_1

    invoke-static {p4}, Lcom/loc/n;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x1a

    :goto_2
    if-lt v0, v5, :cond_2

    return-object v1

    :cond_0
    move-object v0, p4

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v0, -0x1a

    aget-object v3, v2, v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static azS([DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;[I)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 29

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "gps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/loc/aF;->a(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/loc/aF;->azT(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/util/Hashtable;

    invoke-direct/range {v16 .. v16}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    invoke-static {v14, v0, v1, v2}, Lcom/loc/aF;->azU(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    new-instance v17, Ljava/util/Hashtable;

    invoke-direct/range {v17 .. v17}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/loc/aF;->azV(Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-static {}, Lcom/loc/aF;->c()Ljava/lang/StringBuilder;

    move-result-object v18

    if-eqz p0, :cond_4

    const/4 v4, 0x0

    aget-wide v4, p0, v4

    const/4 v6, 0x1

    aget-wide v6, p0, v6

    move-object/from16 v0, p1

    invoke-static {v4, v5, v6, v7, v0}, Lcom/loc/aF;->azR(DDLjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v6, v4

    const/4 v7, 0x0

    const/4 v5, 0x0

    array-length v4, v6

    div-int/lit8 v19, v4, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x1

    move/from16 v0, p4

    if-le v8, v0, :cond_5

    :goto_1
    move/from16 p4, v4

    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->size()I

    move-result v4

    sput v4, Lcom/loc/aH;->anM:I

    const/4 v4, 0x0

    move v8, v5

    move v5, v7

    move v7, v4

    :goto_2
    array-length v4, v6

    if-lt v7, v4, :cond_6

    :cond_1
    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v4, p6, v4

    const/4 v5, 0x1

    aget v5, p6, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4, v5}, Lcom/loc/aF;->azW(Ljava/util/Hashtable;Ljava/util/Hashtable;II)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v5

    if-nez v5, :cond_28

    const/4 v4, 0x0

    return-object v4

    :cond_2
    const/4 v4, 0x0

    return-object v4

    :cond_3
    const/4 v4, 0x0

    return-object v4

    :cond_4
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v4, v5, v6, v7, v0}, Lcom/loc/aF;->azR(DDLjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    const/4 v8, 0x3

    move/from16 v0, p4

    if-le v0, v8, :cond_0

    goto :goto_1

    :cond_6
    sget-boolean v4, Lcom/loc/aH;->anL:Z

    if-eqz v4, :cond_1

    move/from16 v0, v19

    if-lt v7, v0, :cond_9

    :goto_3
    move/from16 v0, v19

    if-ge v7, v0, :cond_a

    :goto_4
    move/from16 v0, v19

    if-ge v7, v0, :cond_b

    :cond_7
    :goto_5
    const/4 v4, 0x1

    move/from16 v0, p4

    if-eq v0, v4, :cond_c

    const/4 v4, 0x2

    move/from16 v0, p4

    if-eq v0, v4, :cond_d

    :goto_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v19

    if-lt v7, v0, :cond_f

    :cond_8
    :goto_7
    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move/from16 v28, v5

    move v5, v8

    move/from16 v8, v28

    goto :goto_2

    :cond_9
    if-gtz v5, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_a
    if-gtz v8, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_4

    :cond_b
    if-gtz v5, :cond_7

    goto :goto_5

    :cond_c
    if-nez v7, :cond_1

    goto :goto_6

    :cond_d
    const/16 v4, 0x8

    if-gt v7, v4, :cond_e

    :goto_8
    const/16 v4, 0x21

    if-gt v7, v4, :cond_1

    goto :goto_6

    :cond_e
    const/16 v4, 0x19

    if-lt v7, v4, :cond_8

    goto :goto_8

    :cond_f
    packed-switch v14, :pswitch_data_0

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, p6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, p6, v9

    :goto_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v9, v6, v7

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v4, Lcom/loc/aF;->c:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v21, Lcom/loc/aF;->anG:Lcom/loc/F;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/loc/F;->axD(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/loc/J;

    const/4 v10, 0x0

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_12

    const/4 v9, 0x1

    move-object v10, v4

    :goto_a
    const/4 v4, 0x0

    if-eqz v10, :cond_8

    const-wide/16 v22, 0x0

    :try_start_0
    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Lcom/loc/J;->a(J)V

    invoke-virtual {v10}, Lcom/loc/J;->c()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v22

    move/from16 v0, v19

    if-lt v7, v0, :cond_13

    :goto_b
    :try_start_1
    invoke-virtual {v10}, Lcom/loc/J;->g()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-result-wide v24

    const/16 v11, 0x8

    move/from16 v0, v19

    if-lt v7, v0, :cond_14

    :goto_c
    const-wide v26, 0x1cf7c5800L

    add-long v22, v22, v26

    invoke-static {}, Lcom/loc/bd;->a()J

    move-result-wide v26

    cmp-long v4, v22, v26

    if-ltz v4, :cond_15

    const/4 v4, 0x1

    :goto_d
    if-nez v4, :cond_18

    if-nez v10, :cond_16

    :goto_e
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    sget-object v4, Lcom/loc/aF;->anF:Ljava/util/Hashtable;

    aget-object v9, v6, v7

    invoke-virtual {v4, v9}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :pswitch_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, p6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, p6, v9

    :pswitch_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v9, v6, v7

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v9, v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_f
    aget-object v9, v6, v7

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    aget-object v10, v6, v7

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v10, v6, v7

    add-int/lit8 v11, v9, 0x3

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_9

    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v9, v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :cond_11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v10, v6, v7

    add-int/lit8 v11, v9, 0x4

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_9

    :cond_12
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v9, Lcom/loc/aA;

    invoke-direct {v9}, Lcom/loc/aA;-><init>()V

    :try_start_2
    new-instance v4, Lcom/loc/J;

    invoke-direct {v4, v12, v9}, Lcom/loc/J;-><init>(Ljava/io/File;Lcom/loc/aA;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_10
    move v9, v10

    move-object v10, v4

    goto/16 :goto_a

    :catch_0
    move-exception v4

    const-string/jumbo v9, "Off"

    const-string/jumbo v10, "search part1"

    invoke-static {v4, v9, v10}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_1
    move-exception v4

    const-string/jumbo v11, "Off"

    const-string/jumbo v13, "search part2"

    invoke-static {v4, v11, v13}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-boolean v4, v9, Lcom/loc/aA;->anu:Z

    :try_start_3
    new-instance v4, Lcom/loc/J;

    invoke-direct {v4, v12, v9}, Lcom/loc/J;-><init>(Ljava/io/File;Lcom/loc/aA;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_10

    :catch_2
    move-exception v4

    const/4 v9, 0x0

    const-string/jumbo v11, "Off"

    const-string/jumbo v13, "search part3"

    invoke-static {v4, v11, v13}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v9

    goto :goto_10

    :cond_13
    :try_start_4
    invoke-virtual {v10}, Lcom/loc/J;->d()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v4

    goto/16 :goto_b

    :catch_3
    move-exception v4

    const-string/jumbo v10, "Off"

    const-string/jumbo v11, "search part4"

    invoke-static {v4, v10, v11}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_8

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/loc/F;->axE(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :catch_4
    move-exception v4

    const-string/jumbo v10, "Off"

    const-string/jumbo v11, "search part5"

    invoke-static {v4, v10, v11}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_8

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/loc/F;->axE(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_14
    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x8

    move v11, v4

    goto/16 :goto_c

    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_d

    :cond_16
    if-nez v9, :cond_17

    :try_start_5
    invoke-virtual {v10}, Lcom/loc/J;->b()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_e

    :catch_5
    move-exception v4

    const-string/jumbo v9, "Off"

    const-string/jumbo v10, "search part6"

    invoke-static {v4, v9, v10}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_17
    :try_start_6
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/loc/F;->axE(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_e

    :cond_18
    const-wide/16 v22, 0x8

    cmp-long v4, v24, v22

    if-gtz v4, :cond_1a

    const/4 v4, 0x1

    :goto_11
    if-nez v4, :cond_19

    int-to-long v0, v11

    move-wide/from16 v22, v0

    sub-long v22, v24, v22

    const-wide/16 v24, 0x10

    rem-long v22, v22, v24

    const-wide/16 v24, 0x0

    cmp-long v4, v22, v24

    if-eqz v4, :cond_1c

    :cond_19
    if-nez v10, :cond_1b

    :goto_12
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    sget-object v4, Lcom/loc/aF;->anF:Ljava/util/Hashtable;

    aget-object v9, v6, v7

    invoke-virtual {v4, v9}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_1a
    const/4 v4, 0x0

    goto :goto_11

    :cond_1b
    :try_start_7
    invoke-virtual {v10}, Lcom/loc/J;->b()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_12

    :catch_6
    move-exception v4

    const-string/jumbo v9, "Off"

    const-string/jumbo v10, "search part7"

    invoke-static {v4, v9, v10}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_1c
    move/from16 v0, v19

    if-lt v7, v0, :cond_21

    :cond_1d
    const/4 v4, 0x0

    move v13, v4

    :goto_13
    move/from16 v0, v19

    if-ge v7, v0, :cond_22

    :cond_1e
    const/4 v4, 0x0

    move v12, v4

    :goto_14
    if-nez v13, :cond_23

    move v13, v5

    :cond_1f
    if-nez v12, :cond_25

    :cond_20
    :goto_15
    move v5, v13

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/loc/J;->a()Z

    move-result v4

    if-eqz v4, :cond_27

    if-nez v9, :cond_8

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lcom/loc/F;->axB(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_21
    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    sget v4, Lcom/loc/aH;->anM:I

    if-ge v5, v4, :cond_1d

    const/4 v4, 0x1

    move v13, v4

    goto :goto_13

    :cond_22
    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e

    const/16 v4, 0xf

    if-ge v8, v4, :cond_1e

    const/4 v4, 0x1

    move v12, v4

    goto :goto_14

    :cond_23
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v22

    move v13, v5

    :goto_16
    :try_start_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v11, v10, v5, v0}, Lcom/loc/aF;->azZ(ILcom/loc/J;Ljava/lang/String;I)[D

    move-result-object v5

    if-nez v5, :cond_24

    :goto_17
    move v4, v13

    move v13, v4

    goto :goto_16

    :cond_24
    add-int/lit8 v13, v13, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    aget-wide v24, v5, v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "|"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-wide v24, v5, v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "|"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x2

    aget-wide v24, v5, v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v23, "|"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v4, Lcom/loc/aH;->anM:I

    if-ge v13, v4, :cond_1f

    goto/16 :goto_17

    :cond_25
    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_18
    if-eqz v12, :cond_20

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-static {v11, v10, v5, v0}, Lcom/loc/aF;->azZ(ILcom/loc/J;Ljava/lang/String;I)[D

    move-result-object v5

    if-nez v5, :cond_26

    :goto_19
    move v4, v8

    move v8, v4

    goto :goto_18

    :cond_26
    add-int/lit8 v8, v8, 0x1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x0

    aget-wide v24, v5, v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "|"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    aget-wide v24, v5, v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "|"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x2

    aget-wide v24, v5, v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v22, "|"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    const/16 v4, 0xf

    if-ge v8, v4, :cond_20

    goto/16 :goto_19

    :catch_7
    move-exception v4

    move v13, v5

    :goto_1a
    const-string/jumbo v5, "Off"

    const-string/jumbo v11, "search part8"

    invoke-static {v4, v5, v11}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_27
    :try_start_a
    invoke-virtual {v10}, Lcom/loc/J;->b()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_7

    :catch_8
    move-exception v4

    const-string/jumbo v9, "Off"

    const-string/jumbo v10, "search part9"

    invoke-static {v4, v9, v10}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_28
    return-object v4

    :catch_9
    move-exception v4

    goto :goto_1a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static azT(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    aget-object v0, v1, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static azU(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x4

    const/4 v2, 0x3

    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "access"

    invoke-virtual {p3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "access"

    invoke-virtual {p3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static azV(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    aget-object v4, v2, v0

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {p1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static azW(Ljava/util/Hashtable;Ljava/util/Hashtable;II)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)",
            "Lcom/autonavi/aps/amapapi/model/AmapLoc;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/loc/bP;

    invoke-direct {v5}, Lcom/loc/bP;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    :goto_0
    int-to-double v2, p3

    int-to-double v6, p2

    :try_start_1
    invoke-virtual {v5, v2, v3, v6, v7}, Lcom/loc/bP;->aEX(DD)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    move-object v3, v0

    :goto_1
    if-nez v3, :cond_9

    :cond_2
    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/loc/bd;->aCY(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v2

    if-nez v2, :cond_a

    :goto_3
    return-object v1

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "access"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    :goto_5
    const-string/jumbo v7, "|"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    const-string/jumbo v8, "|"

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    if-nez v3, :cond_6

    const/4 v0, 0x2

    :goto_6
    :try_start_3
    invoke-virtual {v5, v0, v7}, Lcom/loc/bP;->aEW(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v3, "Off"

    const-string/jumbo v7, "calLoc part1"

    invoke-static {v0, v3, v7}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "calLoc part3"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    :try_start_5
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    const-string/jumbo v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {v5, v3, v0}, Lcom/loc/bP;->aEW(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_7
    const-string/jumbo v3, "Off"

    const-string/jumbo v6, "calLoc part2"

    invoke-static {v0, v3, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_7

    :catch_3
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "calLoc part4"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/o;

    new-instance v2, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const-string/jumbo v4, "network"

    invoke-virtual {v2, v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/loc/o;->a:D

    invoke-virtual {v2, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(D)V

    iget-wide v4, v0, Lcom/loc/o;->b:D

    invoke-virtual {v2, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(D)V

    iget v4, v0, Lcom/loc/o;->c:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(F)V

    iget-object v0, v0, Lcom/loc/o;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k(Ljava/lang/String;)V

    const-string/jumbo v0, "0"

    invoke-virtual {v2, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x(Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/bd;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(J)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object v0, v2

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_3
.end method

.method public static azX(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZZ)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p3, v1, p5}, Lcom/loc/aF;->aAg(Landroid/content/Context;Ljava/lang/String;IZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_1

    if-eq p4, v2, :cond_2

    const/16 v0, 0x18

    :goto_0
    invoke-static {v4, v5, v4, v5, p2}, Lcom/loc/aF;->azR(DDLjava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v1, v2

    :goto_1
    if-lt v1, v0, :cond_3

    return v2

    :cond_0
    return v1

    :cond_1
    invoke-static {p0, p1, p2, p3, p6}, Lcom/loc/aF;->azY(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    return v0

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    aget-object v4, v3, v1

    invoke-static {p0, p1, v4, p3, p6}, Lcom/loc/aF;->azY(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static azY(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 11

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {p1, p2, p3, v6}, Lcom/loc/aF;->aAf(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/loc/aF;->anF:Ljava/util/Hashtable;

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/loc/bd;->b()J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "v"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/loc/aE;->azM(Landroid/content/Context;)Lcom/loc/aE;

    move-result-object v5

    const-string/jumbo v7, "https://offline.aps.amap.com/LoadOfflineData/getData"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, p0, v7, v0, v8}, Lcom/loc/aE;->azQ(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;[B)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2a
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_24
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_6

    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_24
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_21
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1e
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_7

    const/16 v5, 0x194

    if-eq v0, v5, :cond_26

    move-object v0, v2

    move v2, v1

    move-object v1, v3

    :cond_0
    :goto_1
    if-nez v0, :cond_15

    :goto_2
    if-nez v1, :cond_16

    :goto_3
    if-nez v4, :cond_17

    :goto_4
    move v1, v2

    :cond_1
    :goto_5
    sget-object v0, Lcom/loc/aF;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_6
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    sget-object v0, Lcom/loc/aF;->anF:Ljava/util/Hashtable;

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/loc/bd;->a()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    :goto_7
    if-nez v0, :cond_5

    const/4 v0, 0x0

    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/loc/aF;->anF:Ljava/util/Hashtable;

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    if-nez v4, :cond_14

    :goto_8
    const/4 v0, 0x0

    return v0

    :cond_7
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v5

    :goto_9
    const/16 v5, 0x104

    if-eq v0, v5, :cond_a

    sget-boolean v0, Lcom/loc/aH;->anL:Z
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_24
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_21
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1e
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_12

    :goto_a
    move-object v0, v2

    move v2, v1

    move-object v1, v3

    :goto_b
    if-eqz p4, :cond_0

    const/4 v3, 0x1

    :try_start_3
    aget-object v3, v6, v3

    invoke-static {v3}, Lcom/loc/aF;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_29
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_26
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_23
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_20
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v10, v3

    move-object v3, v1

    move-object v1, v4

    move v4, v2

    move-object v2, v0

    move-object v0, v10

    :goto_c
    :try_start_4
    const-string/jumbo v5, "Off"

    const-string/jumbo v6, "c 2 part2"

    invoke-static {v0, v5, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v2, :cond_18

    :goto_d
    if-nez v3, :cond_19

    :goto_e
    if-nez v1, :cond_1a

    :goto_f
    move v1, v4

    goto :goto_5

    :cond_9
    :try_start_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string/jumbo v8, "code"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_9

    :cond_a
    const/4 v0, 0x1

    aget-object v0, v6, v0

    sput-object v0, Lcom/loc/aF;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_24
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_21
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1e
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    :try_start_6
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_2b
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_28
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_25
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_22
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1f
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    new-instance v2, Ljava/io/File;

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_d

    :cond_b
    :goto_10
    if-nez v0, :cond_e

    :cond_c
    :goto_11
    move v0, v1

    move-object v1, v5

    move v2, v0

    move-object v0, v3

    goto :goto_b

    :cond_d
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_b

    const/4 v0, 0x0

    goto :goto_10

    :cond_e
    sget-boolean v0, Lcom/loc/aH;->anL:Z

    if-eqz v0, :cond_c

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_f

    :goto_12
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x800

    invoke-direct {v2, v0, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/16 v0, 0x800

    new-array v0, v0, [B

    :goto_13
    const/4 v7, 0x0

    const/16 v8, 0x800

    invoke-virtual {v3, v0, v7, v8}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_10

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    const/4 v1, 0x1

    sget-object v0, Lcom/loc/aF;->anF:Ljava/util/Hashtable;

    const/4 v2, 0x1

    aget-object v2, v6, v2

    invoke-static {}, Lcom/loc/bd;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x0

    const-string/jumbo v0, "yyyyMMdd"

    invoke-static {v8, v9, v0}, Lcom/loc/bd;->aDt(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/loc/aF;->a:[I

    const/4 v7, 0x0

    aget v2, v2, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v2

    if-nez v2, :cond_11

    :try_start_8
    sget-object v2, Lcom/loc/aF;->a:[I

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v2, v7
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_14
    :try_start_9
    sget-object v0, Lcom/loc/aF;->a:[I

    const/4 v2, 0x1

    const/4 v7, 0x1

    aput v7, v0, v2

    goto :goto_11

    :catch_1
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    move-object v10, v4

    move v4, v1

    move-object v1, v10

    goto/16 :goto_c

    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_12

    :catch_2
    move-exception v0

    :goto_15
    :try_start_a
    const-string/jumbo v2, "Off"

    const-string/jumbo v6, "c 2 part3"

    invoke-static {v0, v2, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-nez v3, :cond_1b

    :goto_16
    if-nez v5, :cond_1c

    :goto_17
    if-eqz v4, :cond_1

    :try_start_b
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_5

    :catch_3
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part9"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_10
    const/4 v8, 0x0

    :try_start_c
    invoke-virtual {v2, v0, v8, v7}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_13

    :catch_4
    move-exception v0

    :goto_18
    :try_start_d
    const-string/jumbo v2, "Off"

    const-string/jumbo v6, "c 2 part4"

    invoke-static {v0, v2, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-nez v3, :cond_1d

    :goto_19
    if-nez v5, :cond_1e

    :goto_1a
    if-eqz v4, :cond_1

    :try_start_e
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_5

    :catch_5
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part9"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    :try_start_f
    sget-object v0, Lcom/loc/aF;->a:[I

    const/4 v2, 0x1

    sget-object v7, Lcom/loc/aF;->a:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/lit8 v7, v7, 0x1

    aput v7, v0, v2
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_11

    :catch_6
    move-exception v0

    :goto_1b
    :try_start_10
    const-string/jumbo v2, "Off"

    const-string/jumbo v6, "c 2 part5"

    invoke-static {v0, v2, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-nez v3, :cond_1f

    :goto_1c
    if-nez v5, :cond_20

    :goto_1d
    if-eqz v4, :cond_1

    :try_start_11
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_5

    :catch_7
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part9"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_8
    move-exception v0

    :try_start_12
    sget-object v2, Lcom/loc/aF;->a:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v2, v7

    sget-object v2, Lcom/loc/aF;->a:[I

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v2, v7

    const-string/jumbo v2, "Off"

    const-string/jumbo v7, "c 2 part1"

    invoke-static {v0, v2, v7}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_14

    :catch_9
    move-exception v0

    :goto_1e
    :try_start_13
    const-string/jumbo v2, "Off"

    const-string/jumbo v6, "c 2 part6"

    invoke-static {v0, v2, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-nez v3, :cond_21

    :goto_1f
    if-nez v5, :cond_22

    :goto_20
    if-eqz v4, :cond_1

    :try_start_14
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a

    goto/16 :goto_5

    :catch_a
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part9"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_12
    :try_start_15
    sget-object v0, Lcom/loc/aF;->anF:Ljava/util/Hashtable;

    const/4 v5, 0x1

    aget-object v5, v6, v5

    invoke-static {}, Lcom/loc/bd;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/net/UnknownHostException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/net/SocketException; {:try_start_15 .. :try_end_15} :catch_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_15} :catch_24
    .catch Ljava/io/EOFException; {:try_start_15 .. :try_end_15} :catch_21
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_1e
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_a

    :catch_b
    move-exception v0

    move-object v10, v4

    move v4, v1

    move-object v1, v10

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    :goto_21
    if-nez v3, :cond_23

    :goto_22
    if-nez v5, :cond_24

    :goto_23
    if-nez v4, :cond_25

    :goto_24
    throw v0

    :cond_13
    const/4 v0, 0x0

    sput-object v0, Lcom/loc/aF;->c:Ljava/lang/String;

    goto/16 :goto_6

    :cond_14
    :try_start_16
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_c

    goto/16 :goto_8

    :catch_c
    move-exception v0

    const-string/jumbo v1, "Off"

    const-string/jumbo v2, "c 2 part9"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_15
    :try_start_17
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_d

    goto/16 :goto_2

    :catch_d
    move-exception v0

    const-string/jumbo v3, "Off"

    const-string/jumbo v5, "c 2 part7"

    invoke-static {v0, v3, v5}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_16
    :try_start_18
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_e

    goto/16 :goto_3

    :catch_e
    move-exception v0

    const-string/jumbo v1, "Off"

    const-string/jumbo v3, "c 2 part8"

    invoke-static {v0, v1, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_17
    :try_start_19
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_f

    goto/16 :goto_4

    :catch_f
    move-exception v0

    const-string/jumbo v1, "Off"

    const-string/jumbo v3, "c 2 part9"

    invoke-static {v0, v1, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_18
    :try_start_1a
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_10

    goto/16 :goto_d

    :catch_10
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v5, "c 2 part7"

    invoke-static {v0, v2, v5}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_19
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_11

    goto/16 :goto_e

    :catch_11
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part8"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_1a
    :try_start_1c
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_12

    goto/16 :goto_f

    :catch_12
    move-exception v0

    const-string/jumbo v1, "Off"

    const-string/jumbo v2, "c 2 part9"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_1b
    :try_start_1d
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_13

    goto/16 :goto_16

    :catch_13
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part7"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_1c
    :try_start_1e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_14

    goto/16 :goto_17

    :catch_14
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part8"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_1d
    :try_start_1f
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_15

    goto/16 :goto_19

    :catch_15
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part7"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_1e
    :try_start_20
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_16

    goto/16 :goto_1a

    :catch_16
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part8"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_1f
    :try_start_21
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_17

    goto/16 :goto_1c

    :catch_17
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part7"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_20
    :try_start_22
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_18

    goto/16 :goto_1d

    :catch_18
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part8"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_21
    :try_start_23
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_19

    goto/16 :goto_1f

    :catch_19
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part7"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_22
    :try_start_24
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_1a

    goto/16 :goto_20

    :catch_1a
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part8"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_23
    :try_start_25
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_1b

    goto/16 :goto_22

    :catch_1b
    move-exception v1

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part7"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_24
    :try_start_26
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_1c

    goto/16 :goto_23

    :catch_1c
    move-exception v1

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part8"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_25
    :try_start_27
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_1d

    goto/16 :goto_24

    :catch_1d
    move-exception v1

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part9"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto/16 :goto_21

    :catchall_2
    move-exception v0

    goto/16 :goto_21

    :catchall_3
    move-exception v2

    move-object v3, v0

    move-object v5, v1

    move-object v0, v2

    goto/16 :goto_21

    :catchall_4
    move-exception v0

    move-object v4, v1

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_21

    :catch_1e
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_1e

    :catch_1f
    move-exception v0

    move-object v3, v2

    goto/16 :goto_1e

    :catch_20
    move-exception v3

    move-object v5, v1

    move v1, v2

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_1e

    :catch_21
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_1b

    :catch_22
    move-exception v0

    move-object v3, v2

    goto/16 :goto_1b

    :catch_23
    move-exception v3

    move-object v5, v1

    move v1, v2

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_1b

    :catch_24
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_18

    :catch_25
    move-exception v0

    move-object v3, v2

    goto/16 :goto_18

    :catch_26
    move-exception v3

    move-object v5, v1

    move v1, v2

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_18

    :catch_27
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_15

    :catch_28
    move-exception v0

    move-object v3, v2

    goto/16 :goto_15

    :catch_29
    move-exception v3

    move-object v5, v1

    move v1, v2

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_15

    :catch_2a
    move-exception v0

    move-object v10, v4

    move v4, v1

    move-object v1, v10

    goto/16 :goto_c

    :catch_2b
    move-exception v0

    move-object v3, v5

    move-object v10, v4

    move v4, v1

    move-object v1, v10

    goto/16 :goto_c

    :cond_26
    move-object v0, v2

    move v2, v1

    move-object v1, v3

    goto/16 :goto_1
.end method

.method private static azZ(ILcom/loc/J;Ljava/lang/String;I)[D
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_2

    const-string/jumbo v6, "wifi"

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/loc/J;->g()J

    move-result-wide v0

    int-to-long v4, p0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/loc/J;->a(J)V

    invoke-virtual {p1}, Lcom/loc/J;->g()J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v5, v0, -0x10

    const/4 v7, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p0

    invoke-static/range {v0 .. v7}, Lcom/loc/aF;->aAa(ILcom/loc/J;Ljava/lang/String;[IIILjava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    :cond_0
    move-object v0, v8

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    const-string/jumbo v0, "\\|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    new-array v3, v0, [I

    const/4 v0, 0x0

    :goto_3
    array-length v2, v1

    if-lt v0, v2, :cond_3

    array-length v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const-string/jumbo v6, "cdma"

    goto :goto_0

    :cond_3
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const-string/jumbo v6, "gsm"

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x6

    int-to-long v0, v0

    :try_start_1
    invoke-virtual {p1, v0, v1}, Lcom/loc/J;->a(J)V

    const/4 v0, 0x3

    new-array v0, v0, [D
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1}, Lcom/loc/J;->e()I

    move-result v2

    invoke-static {v2}, Lcom/loc/aF;->a(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/loc/J;->e()I

    move-result v2

    invoke-static {v2}, Lcom/loc/aF;->a(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/loc/J;->d()I

    move-result v2

    int-to-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Lcom/loc/bd;->a(D)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Lcom/loc/bd;->b(D)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-nez v1, :cond_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_4
    const-string/jumbo v1, "Off"

    const-string/jumbo v2, "binS"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_4
.end method

.method private static b(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/loc/aF;->anH:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/loc/aF;->anH:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v1, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x8

    :try_start_1
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v3

    :goto_1
    if-lt v0, v2, :cond_4

    sget-object v0, Lcom/loc/aF;->anH:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v4, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Off"

    const-string/jumbo v2, "loadFcFea part3"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-eq v0, v3, :cond_6

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_4
    :try_start_4
    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "loadFcFea part1"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "Off"

    const-string/jumbo v2, "loadFcFea part3"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :try_start_6
    const-string/jumbo v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_5
    :try_start_7
    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "loadFcFea part2"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v1, "Off"

    const-string/jumbo v2, "loadFcFea part3"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_6
    if-nez v1, :cond_7

    :goto_7
    throw v0

    :cond_7
    :try_start_9
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_7

    :catch_5
    move-exception v1

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "loadFcFea part3"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_4
.end method

.method public static b()Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/loc/aF;->anH:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c()Ljava/lang/StringBuilder;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loc/bd;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "offline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/loc/bd;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method
