.class public Lcom/loc/o;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:D

.field final synthetic ajG:Lcom/loc/bP;

.field public b:D

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/loc/bP;DD)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/loc/o;->ajG:Lcom/loc/bP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/loc/o;->a:D

    iput-wide v0, p0, Lcom/loc/o;->b:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/o;->c:I

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/loc/o;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/o;->e:I

    iput-wide p2, p0, Lcom/loc/o;->a:D

    iput-wide p4, p0, Lcom/loc/o;->b:D

    return-void
.end method

.method public constructor <init>(Lcom/loc/bP;DDII)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/loc/o;->ajG:Lcom/loc/bP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/loc/o;->a:D

    iput-wide v0, p0, Lcom/loc/o;->b:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/o;->c:I

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/loc/o;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/o;->e:I

    iput-wide p2, p0, Lcom/loc/o;->a:D

    iput-wide p4, p0, Lcom/loc/o;->b:D

    iput p6, p0, Lcom/loc/o;->c:I

    iput p7, p0, Lcom/loc/o;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/loc/bP;DDILjava/lang/String;DI)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/loc/o;->ajG:Lcom/loc/bP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/loc/o;->a:D

    iput-wide v0, p0, Lcom/loc/o;->b:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/o;->c:I

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/loc/o;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/o;->e:I

    iput-wide p2, p0, Lcom/loc/o;->a:D

    iput-wide p4, p0, Lcom/loc/o;->b:D

    iput-object p7, p0, Lcom/loc/o;->d:Ljava/lang/String;

    iput p6, p0, Lcom/loc/o;->c:I

    iput p10, p0, Lcom/loc/o;->e:I

    return-void
.end method

.method private auo(Lcom/loc/o;)Z
    .locals 12

    const-wide v10, 0x40b3880000000000L    # 5000.0

    const-wide v8, 0x407f400000000000L    # 500.0

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/loc/o;->aup(Lcom/loc/o;)D

    move-result-wide v4

    cmpg-double v2, v4, v8

    if-gez v2, :cond_0

    return v0

    :cond_0
    iget v2, p0, Lcom/loc/o;->e:I

    if-gtz v2, :cond_5

    :cond_1
    iget v2, p0, Lcom/loc/o;->e:I

    if-eqz v2, :cond_9

    :goto_0
    iget v2, p0, Lcom/loc/o;->e:I

    if-lez v2, :cond_e

    :cond_2
    cmpg-double v2, v4, v10

    if-gez v2, :cond_11

    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    iget v2, p0, Lcom/loc/o;->c:I

    int-to-double v2, v2

    cmpg-double v2, v4, v2

    if-gez v2, :cond_12

    move v2, v0

    :goto_2
    if-nez v2, :cond_3

    iget v2, p1, Lcom/loc/o;->c:I

    int-to-double v2, v2

    cmpg-double v2, v4, v2

    if-gez v2, :cond_4

    :cond_3
    move v1, v0

    :cond_4
    return v1

    :cond_5
    iget v2, p1, Lcom/loc/o;->e:I

    if-nez v2, :cond_1

    :cond_6
    iget v2, p0, Lcom/loc/o;->e:I

    if-ne v2, v0, :cond_a

    :cond_7
    const-wide v2, 0x40a7700000000000L    # 3000.0

    cmpg-double v2, v4, v2

    if-gez v2, :cond_c

    iget v2, p0, Lcom/loc/o;->c:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    cmpg-double v2, v4, v2

    if-gez v2, :cond_b

    move v2, v0

    :goto_3
    if-nez v2, :cond_8

    iget v2, p1, Lcom/loc/o;->c:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    cmpg-double v2, v4, v2

    if-gez v2, :cond_c

    :cond_8
    :goto_4
    return v0

    :cond_9
    iget v2, p1, Lcom/loc/o;->e:I

    if-gtz v2, :cond_6

    goto :goto_0

    :cond_a
    iget v2, p1, Lcom/loc/o;->e:I

    if-eq v2, v0, :cond_7

    cmpg-double v2, v4, v10

    if-gez v2, :cond_d

    :goto_5
    return v0

    :cond_b
    move v2, v1

    goto :goto_3

    :cond_c
    move v0, v1

    goto :goto_4

    :cond_d
    move v0, v1

    goto :goto_5

    :cond_e
    iget v2, p1, Lcom/loc/o;->e:I

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/loc/o;->c:I

    int-to-double v2, v2

    cmpg-double v2, v4, v2

    if-gez v2, :cond_13

    move v2, v0

    :goto_6
    if-nez v2, :cond_f

    iget v2, p1, Lcom/loc/o;->c:I

    int-to-double v2, v2

    cmpg-double v2, v4, v2

    if-gez v2, :cond_14

    move v2, v0

    :goto_7
    if-nez v2, :cond_f

    cmpg-double v2, v4, v8

    if-gez v2, :cond_10

    :cond_f
    move v1, v0

    :cond_10
    return v1

    :cond_11
    move v2, v1

    goto :goto_1

    :cond_12
    move v2, v1

    goto :goto_2

    :cond_13
    move v2, v1

    goto :goto_6

    :cond_14
    move v2, v1

    goto :goto_7
.end method

.method private aup(Lcom/loc/o;)D
    .locals 12

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v10, 0x4066800000000000L    # 180.0

    const-wide v8, 0x400921fb54442d28L    # 3.1415926535898

    iget-wide v0, p0, Lcom/loc/o;->a:D

    sub-double v0, v4, v0

    const-wide v2, 0x40d4e90000000000L    # 21412.0

    mul-double/2addr v0, v2

    div-double/2addr v0, v4

    const-wide v2, 0x41583fbd40000000L    # 6356725.0

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/loc/o;->a:D

    mul-double/2addr v2, v8

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iget-wide v4, p1, Lcom/loc/o;->b:D

    iget-wide v6, p0, Lcom/loc/o;->b:D

    sub-double/2addr v4, v6

    mul-double/2addr v4, v8

    div-double/2addr v4, v10

    mul-double/2addr v2, v4

    iget-wide v4, p1, Lcom/loc/o;->a:D

    iget-wide v6, p0, Lcom/loc/o;->a:D

    sub-double/2addr v4, v6

    mul-double/2addr v4, v8

    div-double/2addr v4, v10

    mul-double/2addr v0, v4

    mul-double/2addr v2, v2

    mul-double/2addr v0, v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic auq(Lcom/loc/o;Lcom/loc/o;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/loc/o;->auo(Lcom/loc/o;)Z

    move-result v0

    return v0
.end method

.method static synthetic aur(Lcom/loc/o;Lcom/loc/o;)D
    .locals 2

    invoke-direct {p0, p1}, Lcom/loc/o;->aup(Lcom/loc/o;)D

    move-result-wide v0

    return-wide v0
.end method
