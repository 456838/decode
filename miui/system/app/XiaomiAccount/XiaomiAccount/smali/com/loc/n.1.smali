.class public Lcom/loc/n;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ajE:[C

.field private static final ajF:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v0, 0x20

    new-array v0, v0, [C

    const/16 v1, 0x30

    aput-char v1, v0, v6

    const/16 v1, 0x31

    aput-char v1, v0, v3

    const/16 v1, 0x32

    aput-char v1, v0, v4

    const/16 v1, 0x33

    aput-char v1, v0, v7

    const/16 v1, 0x34

    aput-char v1, v0, v5

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x68

    aput-char v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x6a

    aput-char v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x6b

    aput-char v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x6d

    aput-char v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x70

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x71

    aput-char v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x76

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x77

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x78

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x79

    aput-char v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    sput-object v0, Lcom/loc/n;->ajE:[C

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x10

    aput v1, v0, v6

    const/16 v1, 0x8

    aput v1, v0, v3

    aput v5, v0, v4

    aput v4, v0, v7

    aput v3, v0, v5

    sput-object v0, Lcom/loc/n;->ajF:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "right"

    invoke-static {p0, v1}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string/jumbo v2, "btm"

    invoke-static {p0, v2}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "left"

    invoke-static {p0, v1}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "top"

    invoke-static {p0, v2}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aget-object v2, v0, v4

    const-string/jumbo v3, "top"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aget-object v2, v0, v4

    const-string/jumbo v3, "btm"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aget-object v2, v0, v5

    const-string/jumbo v3, "top"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aget-object v2, v0, v5

    const-string/jumbo v3, "btm"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    aget-object v1, v0, v4

    const-string/jumbo v2, "right"

    invoke-static {v1, v2}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    aget-object v1, v0, v6

    const-string/jumbo v2, "top"

    invoke-static {v1, v2}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    aget-object v1, v0, v7

    const-string/jumbo v2, "top"

    invoke-static {v1, v2}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/16 v1, 0xb

    aget-object v2, v0, v8

    const-string/jumbo v3, "left"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xb

    aget-object v2, v0, v2

    const-string/jumbo v3, "left"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xc

    aget-object v2, v0, v2

    const-string/jumbo v3, "left"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xd

    aget-object v2, v0, v2

    const-string/jumbo v3, "left"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xe

    aget-object v2, v0, v2

    const-string/jumbo v3, "btm"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xf

    aget-object v2, v0, v2

    const-string/jumbo v3, "btm"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x10

    aget-object v2, v0, v2

    const-string/jumbo v3, "btm"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x11

    aget-object v2, v0, v2

    const-string/jumbo v3, "btm"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x12

    aget-object v2, v0, v2

    const-string/jumbo v3, "right"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x13

    aget-object v2, v0, v2

    const-string/jumbo v3, "right"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x14

    aget-object v2, v0, v2

    const-string/jumbo v3, "right"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x15

    aget-object v2, v0, v2

    const-string/jumbo v3, "right"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x16

    aget-object v2, v0, v2

    const-string/jumbo v3, "top"

    invoke-static {v2, v3}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static final aul(DD)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x6

    invoke-static {p0, p1, p2, p3, v0}, Lcom/loc/n;->aum(DDI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final aum(DDI)Ljava/lang/String;
    .locals 10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide v6, -0x3fa9800000000000L    # -90.0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide v6, 0x4056800000000000L    # 90.0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide v8, -0x3f99800000000000L    # -180.0

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const-wide v8, 0x4066800000000000L    # 180.0

    aput-wide v8, v5, v6

    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lt v6, p4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez v2, :cond_1

    const/4 v6, 0x0

    aget-wide v6, v4, v6

    const/4 v8, 0x1

    aget-wide v8, v4, v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    cmpl-double v8, p0, v6

    if-lez v8, :cond_3

    sget-object v8, Lcom/loc/n;->ajF:[I

    aget v8, v8, v1

    or-int/2addr v0, v8

    const/4 v8, 0x0

    aput-wide v6, v4, v8

    :goto_1
    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    const/4 v6, 0x4

    if-lt v1, v6, :cond_5

    sget-object v1, Lcom/loc/n;->ajE:[C

    aget-char v0, v1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    aget-wide v6, v5, v6

    const/4 v8, 0x1

    aget-wide v8, v5, v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    cmpl-double v8, p2, v6

    if-lez v8, :cond_2

    sget-object v8, Lcom/loc/n;->ajF:[I

    aget v8, v8, v1

    or-int/2addr v0, v8

    const/4 v8, 0x0

    aput-wide v6, v5, v8

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    aput-wide v6, v5, v8

    goto :goto_1

    :cond_3
    const/4 v8, 0x1

    aput-wide v6, v4, v8

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static final aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const-string/jumbo v0, "even"

    move-object v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/loc/ak;->amW:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    :cond_0
    :goto_1
    sget-object v0, Lcom/loc/bb;->apY:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    sget-object v1, Lcom/loc/n;->ajE:[C

    aget-char v0, v1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    return-object v1

    :cond_3
    const-string/jumbo v0, "odd"

    move-object v1, v0

    goto :goto_0

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2, p1}, Lcom/loc/n;->aun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1
.end method
