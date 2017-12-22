.class public final Lokio/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/r;
.implements Lokio/u;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final auw:[B


# instance fields
.field aux:Lokio/n;

.field size:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    sput-object v0, Lokio/i;->auw:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aIT()Lokio/i;
    .locals 0

    return-object p0
.end method

.method public aIU()Lokio/i;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic aIU()Lokio/u;
    .locals 1

    invoke-virtual {p0}, Lokio/i;->aIU()Lokio/i;

    move-result-object v0

    return-object v0
.end method

.method public aIV()Lokio/u;
    .locals 0

    return-object p0
.end method

.method public aIW()Z
    .locals 4

    iget-wide v0, p0, Lokio/i;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aIX(J)V
    .locals 3

    iget-wide v0, p0, Lokio/i;->size:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public aIY()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lokio/f;

    invoke-direct {v0, p0}, Lokio/f;-><init>(Lokio/i;)V

    return-object v0
.end method

.method public aIZ(Lokio/i;JJ)Lokio/i;
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lokio/i;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/p;->checkOffsetAndCount(JJJ)V

    cmp-long v0, p4, v8

    if-nez v0, :cond_1

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p1, Lokio/i;->size:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lokio/i;->size:J

    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    :goto_0
    iget v1, v0, Lokio/n;->limit:I

    iget v2, v0, Lokio/n;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-gez v1, :cond_2

    move v1, v6

    :goto_1
    if-nez v1, :cond_3

    iget v1, v0, Lokio/n;->limit:I

    iget v2, v0, Lokio/n;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    iget-object v0, v0, Lokio/n;->auG:Lokio/n;

    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_2
    cmp-long v0, p4, v8

    if-gtz v0, :cond_4

    move v0, v6

    :goto_3
    if-nez v0, :cond_6

    new-instance v0, Lokio/n;

    invoke-direct {v0, v1}, Lokio/n;-><init>(Lokio/n;)V

    iget v2, v0, Lokio/n;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v0, Lokio/n;->pos:I

    iget v2, v0, Lokio/n;->pos:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v0, Lokio/n;->limit:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lokio/n;->limit:I

    iget-object v2, p1, Lokio/i;->aux:Lokio/n;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lokio/i;->aux:Lokio/n;

    iget-object v2, v2, Lokio/n;->auH:Lokio/n;

    invoke-virtual {v2, v0}, Lokio/n;->aJJ(Lokio/n;)Lokio/n;

    :goto_4
    iget v2, v0, Lokio/n;->limit:I

    iget v0, v0, Lokio/n;->pos:I

    sub-int v0, v2, v0

    int-to-long v2, v0

    sub-long/2addr p4, v2

    iget-object v0, v1, Lokio/n;->auG:Lokio/n;

    move-object v1, v0

    move-wide p2, v8

    goto :goto_2

    :cond_4
    move v0, v7

    goto :goto_3

    :cond_5
    iput-object v0, v0, Lokio/n;->auH:Lokio/n;

    iput-object v0, v0, Lokio/n;->auG:Lokio/n;

    iput-object v0, p1, Lokio/i;->aux:Lokio/n;

    goto :goto_4

    :cond_6
    return-object p0
.end method

.method public aJA(I)Lokio/i;
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lokio/i;->aJD(I)Lokio/n;

    move-result-object v0

    iget-object v1, v0, Lokio/n;->data:[B

    iget v2, v0, Lokio/n;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, Lokio/n;->limit:I

    iget-wide v0, p0, Lokio/i;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/i;->size:J

    return-object p0
.end method

.method public bridge synthetic aJA(I)Lokio/u;
    .locals 1

    invoke-virtual {p0, p1}, Lokio/i;->aJA(I)Lokio/i;

    move-result-object v0

    return-object v0
.end method

.method public aJB(J)Lokio/i;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    neg-long v2, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    const-string/jumbo v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lokio/i;->aJs(Ljava/lang/String;)Lokio/i;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v4, v0

    move-wide v2, p1

    :goto_2
    const-wide/32 v0, 0x5f5e100

    cmp-long v0, v2, v0

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_14

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_d

    const-wide/16 v0, 0x64

    cmp-long v0, v2, v0

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_a

    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_7
    if-nez v4, :cond_29

    :goto_8
    invoke-virtual {p0, v0}, Lokio/i;->aJD(I)Lokio/n;

    move-result-object v5

    iget-object v6, v5, Lokio/n;->data:[B

    iget v1, v5, Lokio/n;->limit:I

    add-int/2addr v1, v0

    :goto_9
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_2a

    const-wide/16 v8, 0xa

    rem-long v8, v2, v8

    long-to-int v7, v8

    add-int/lit8 v1, v1, -0x1

    sget-object v8, Lokio/i;->auw:[B

    aget-byte v7, v8, v7

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    const-wide/16 v8, 0xa

    div-long/2addr v2, v8

    goto :goto_9

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    move v4, v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :cond_9
    const/4 v0, 0x2

    goto :goto_7

    :cond_a
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    if-nez v0, :cond_c

    const/4 v0, 0x3

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    goto :goto_a

    :cond_c
    const/4 v0, 0x4

    goto :goto_7

    :cond_d
    const-wide/32 v0, 0xf4240

    cmp-long v0, v2, v0

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    :goto_b
    if-nez v0, :cond_11

    const-wide/32 v0, 0x186a0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    :goto_c
    if-nez v0, :cond_10

    const/4 v0, 0x5

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    goto :goto_b

    :cond_f
    const/4 v0, 0x0

    goto :goto_c

    :cond_10
    const/4 v0, 0x6

    goto :goto_7

    :cond_11
    const-wide/32 v0, 0x989680

    cmp-long v0, v2, v0

    if-ltz v0, :cond_12

    const/4 v0, 0x1

    :goto_d
    if-nez v0, :cond_13

    const/4 v0, 0x7

    goto :goto_7

    :cond_12
    const/4 v0, 0x0

    goto :goto_d

    :cond_13
    const/16 v0, 0x8

    goto :goto_7

    :cond_14
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, v2, v0

    if-ltz v0, :cond_15

    const/4 v0, 0x1

    :goto_e
    if-nez v0, :cond_1c

    const-wide v0, 0x2540be400L

    cmp-long v0, v2, v0

    if-ltz v0, :cond_16

    const/4 v0, 0x1

    :goto_f
    if-nez v0, :cond_19

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v2, v0

    if-ltz v0, :cond_17

    const/4 v0, 0x1

    :goto_10
    if-nez v0, :cond_18

    const/16 v0, 0x9

    goto/16 :goto_7

    :cond_15
    const/4 v0, 0x0

    goto :goto_e

    :cond_16
    const/4 v0, 0x0

    goto :goto_f

    :cond_17
    const/4 v0, 0x0

    goto :goto_10

    :cond_18
    const/16 v0, 0xa

    goto/16 :goto_7

    :cond_19
    const-wide v0, 0x174876e800L

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1a

    const/4 v0, 0x1

    :goto_11
    if-nez v0, :cond_1b

    const/16 v0, 0xb

    goto/16 :goto_7

    :cond_1a
    const/4 v0, 0x0

    goto :goto_11

    :cond_1b
    const/16 v0, 0xc

    goto/16 :goto_7

    :cond_1c
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1d

    const/4 v0, 0x1

    :goto_12
    if-nez v0, :cond_22

    const-wide v0, 0x9184e72a000L

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1e

    const/4 v0, 0x1

    :goto_13
    if-nez v0, :cond_1f

    const/16 v0, 0xd

    goto/16 :goto_7

    :cond_1d
    const/4 v0, 0x0

    goto :goto_12

    :cond_1e
    const/4 v0, 0x0

    goto :goto_13

    :cond_1f
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, v2, v0

    if-ltz v0, :cond_20

    const/4 v0, 0x1

    :goto_14
    if-nez v0, :cond_21

    const/16 v0, 0xe

    goto/16 :goto_7

    :cond_20
    const/4 v0, 0x0

    goto :goto_14

    :cond_21
    const/16 v0, 0xf

    goto/16 :goto_7

    :cond_22
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, v2, v0

    if-ltz v0, :cond_23

    const/4 v0, 0x1

    :goto_15
    if-nez v0, :cond_26

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, v2, v0

    if-ltz v0, :cond_24

    const/4 v0, 0x1

    :goto_16
    if-nez v0, :cond_25

    const/16 v0, 0x10

    goto/16 :goto_7

    :cond_23
    const/4 v0, 0x0

    goto :goto_15

    :cond_24
    const/4 v0, 0x0

    goto :goto_16

    :cond_25
    const/16 v0, 0x11

    goto/16 :goto_7

    :cond_26
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, v2, v0

    if-ltz v0, :cond_27

    const/4 v0, 0x1

    :goto_17
    if-nez v0, :cond_28

    const/16 v0, 0x12

    goto/16 :goto_7

    :cond_27
    const/4 v0, 0x0

    goto :goto_17

    :cond_28
    const/16 v0, 0x13

    goto/16 :goto_7

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_2a
    if-nez v4, :cond_2b

    :goto_18
    iget v1, v5, Lokio/n;->limit:I

    add-int/2addr v1, v0

    iput v1, v5, Lokio/n;->limit:I

    iget-wide v2, p0, Lokio/i;->size:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/i;->size:J

    return-object p0

    :cond_2b
    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    aput-byte v2, v6, v1

    goto :goto_18
.end method

.method public bridge synthetic aJB(J)Lokio/u;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lokio/i;->aJB(J)Lokio/i;

    move-result-object v0

    return-object v0
.end method

.method public aJC(J)Lokio/i;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lokio/i;->aJD(I)Lokio/n;

    move-result-object v2

    iget-object v3, v2, Lokio/n;->data:[B

    iget v0, v2, Lokio/n;->limit:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, Lokio/n;->limit:I

    :goto_0
    if-ge v0, v4, :cond_1

    iget v0, v2, Lokio/n;->limit:I

    add-int/2addr v0, v1

    iput v0, v2, Lokio/n;->limit:I

    iget-wide v2, p0, Lokio/i;->size:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/i;->size:J

    return-object p0

    :cond_1
    sget-object v5, Lokio/i;->auw:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic aJC(J)Lokio/u;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lokio/i;->aJC(J)Lokio/i;

    move-result-object v0

    return-object v0
.end method

.method aJD(I)Lokio/n;
    .locals 3

    const/16 v2, 0x800

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-gt p1, v2, :cond_0

    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    iget-object v0, v0, Lokio/n;->auH:Lokio/n;

    iget v1, v0, Lokio/n;->limit:I

    add-int/2addr v1, p1

    if-le v1, v2, :cond_4

    :cond_2
    invoke-static {}, Lokio/c;->aIu()Lokio/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokio/n;->aJJ(Lokio/n;)Lokio/n;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_3
    invoke-static {}, Lokio/c;->aIu()Lokio/n;

    move-result-object v0

    iput-object v0, p0, Lokio/i;->aux:Lokio/n;

    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    iget-object v1, p0, Lokio/i;->aux:Lokio/n;

    iget-object v2, p0, Lokio/i;->aux:Lokio/n;

    iput-object v2, v1, Lokio/n;->auH:Lokio/n;

    iput-object v2, v0, Lokio/n;->auG:Lokio/n;

    return-object v2

    :cond_4
    iget-boolean v1, v0, Lokio/n;->auF:Z

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public aJE(B)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/i;->aJF(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public aJF(BJ)J
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lokio/i;->aux:Lokio/n;

    if-eqz v2, :cond_3

    const-wide/16 v0, 0x0

    :cond_2
    iget v3, v2, Lokio/n;->limit:I

    iget v4, v2, Lokio/n;->pos:I

    sub-int v4, v3, v4

    int-to-long v6, v4

    cmp-long v3, p2, v6

    if-gez v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_5

    int-to-long v6, v4

    sub-long/2addr p2, v6

    :goto_2
    int-to-long v4, v4

    add-long/2addr v0, v4

    iget-object v2, v2, Lokio/n;->auG:Lokio/n;

    iget-object v3, p0, Lokio/i;->aux:Lokio/n;

    if-ne v2, v3, :cond_2

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_3
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    iget-object v5, v2, Lokio/n;->data:[B

    iget v3, v2, Lokio/n;->pos:I

    int-to-long v6, v3

    add-long/2addr v6, p2

    long-to-int v3, v6

    iget v6, v2, Lokio/n;->limit:I

    :goto_3
    if-lt v3, v6, :cond_6

    const-wide/16 p2, 0x0

    goto :goto_2

    :cond_6
    aget-byte v7, v5, v3

    if-eq v7, p1, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    int-to-long v4, v3

    add-long/2addr v0, v4

    iget v2, v2, Lokio/n;->pos:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public aJG(I)Lokio/ByteString;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lokio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lokio/SegmentedByteString;-><init>(Lokio/i;I)V

    return-object v0

    :cond_0
    sget-object v0, Lokio/ByteString;->aus:Lokio/ByteString;

    return-object v0
.end method

.method public aJa()J
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lokio/i;->size:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    return-wide v4

    :cond_0
    iget-object v2, p0, Lokio/i;->aux:Lokio/n;

    iget-object v2, v2, Lokio/n;->auH:Lokio/n;

    iget v3, v2, Lokio/n;->limit:I

    const/16 v4, 0x800

    if-lt v3, v4, :cond_2

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    iget-boolean v3, v2, Lokio/n;->auF:Z

    if-eqz v3, :cond_1

    iget v3, v2, Lokio/n;->limit:I

    iget v2, v2, Lokio/n;->pos:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public aJb(J)B
    .locals 7

    iget-wide v0, p0, Lokio/i;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/p;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    :goto_0
    iget v1, v0, Lokio/n;->limit:I

    iget v2, v0, Lokio/n;->pos:I

    sub-int v2, v1, v2

    int-to-long v4, v2

    cmp-long v1, p1, v4

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_1

    iget-object v1, v0, Lokio/n;->data:[B

    iget v0, v0, Lokio/n;->pos:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    int-to-long v2, v2

    sub-long/2addr p1, v2

    iget-object v0, v0, Lokio/n;->auG:Lokio/n;

    goto :goto_0
.end method

.method public aJc()S
    .locals 10

    const-wide/16 v8, 0x2

    iget-wide v0, p0, Lokio/i;->size:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/i;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    iget v1, v0, Lokio/n;->pos:I

    iget v2, v0, Lokio/n;->limit:I

    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    iget-object v3, v0, Lokio/n;->data:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iget-wide v6, p0, Lokio/i;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/i;->size:J

    if-eq v5, v2, :cond_3

    iput v5, v0, Lokio/n;->pos:I

    :goto_1
    int-to-short v0, v1

    return v0

    :cond_2
    invoke-virtual {p0}, Lokio/i;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lokio/i;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :cond_3
    invoke-virtual {v0}, Lokio/n;->pop()Lokio/n;

    move-result-object v2

    iput-object v2, p0, Lokio/i;->aux:Lokio/n;

    invoke-static {v0}, Lokio/c;->aIv(Lokio/n;)V

    goto :goto_1
.end method

.method public aJd()I
    .locals 10

    const-wide/16 v8, 0x4

    iget-wide v0, p0, Lokio/i;->size:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/i;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    iget v1, v0, Lokio/n;->pos:I

    iget v2, v0, Lokio/n;->limit:I

    sub-int v3, v2, v1

    const/4 v4, 0x4

    if-lt v3, v4, :cond_2

    iget-object v3, v0, Lokio/n;->data:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v1, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iget-wide v6, p0, Lokio/i;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/i;->size:J

    if-eq v5, v2, :cond_3

    iput v5, v0, Lokio/n;->pos:I

    :goto_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lokio/i;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lokio/i;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lokio/i;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lokio/i;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    :cond_3
    invoke-virtual {v0}, Lokio/n;->pop()Lokio/n;

    move-result-object v2

    iput-object v2, p0, Lokio/i;->aux:Lokio/n;

    invoke-static {v0}, Lokio/c;->aIv(Lokio/n;)V

    goto :goto_1
.end method

.method public aJe()S
    .locals 1

    invoke-virtual {p0}, Lokio/i;->aJc()S

    move-result v0

    invoke-static {v0}, Lokio/p;->aJP(S)S

    move-result v0

    return v0
.end method

.method public aJf()I
    .locals 1

    invoke-virtual {p0}, Lokio/i;->aJd()I

    move-result v0

    invoke-static {v0}, Lokio/p;->aJQ(I)I

    move-result v0

    return v0
.end method

.method public aJg()J
    .locals 18

    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/i;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, -0x7

    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/i;->aux:Lokio/n;

    iget-object v12, v11, Lokio/n;->data:[B

    iget v7, v11, Lokio/n;->pos:I

    iget v13, v11, Lokio/n;->limit:I

    move v10, v7

    :goto_1
    if-lt v10, v13, :cond_3

    :goto_2
    if-eq v10, v13, :cond_e

    iput v10, v11, Lokio/n;->pos:I

    :goto_3
    if-eqz v4, :cond_f

    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/i;->size:J

    int-to-long v6, v6

    sub-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lokio/i;->size:J

    if-nez v5, :cond_2

    neg-long v8, v8

    :cond_2
    return-wide v8

    :cond_3
    aget-byte v14, v12, v10

    const/16 v7, 0x30

    if-ge v14, v7, :cond_6

    :cond_4
    const/16 v7, 0x2d

    if-eq v14, v7, :cond_c

    :cond_5
    if-eqz v6, :cond_d

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/16 v7, 0x39

    if-gt v14, v7, :cond_4

    rsub-int/lit8 v15, v14, 0x30

    const-wide v16, -0xcccccccccccccccL

    cmp-long v7, v8, v16

    if-gez v7, :cond_8

    const/4 v7, 0x1

    :goto_4
    if-nez v7, :cond_7

    const-wide v16, -0xcccccccccccccccL

    cmp-long v7, v8, v16

    if-nez v7, :cond_b

    int-to-long v0, v15

    move-wide/from16 v16, v0

    cmp-long v7, v16, v2

    if-ltz v7, :cond_9

    const/4 v7, 0x1

    :goto_5
    if-nez v7, :cond_b

    :cond_7
    new-instance v2, Lokio/i;

    invoke-direct {v2}, Lokio/i;-><init>()V

    invoke-virtual {v2, v8, v9}, Lokio/i;->aJB(J)Lokio/i;

    move-result-object v2

    invoke-virtual {v2, v14}, Lokio/i;->aJy(I)Lokio/i;

    move-result-object v2

    if-eqz v5, :cond_a

    :goto_6
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Number too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lokio/i;->aJj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    goto :goto_5

    :cond_a
    invoke-virtual {v2}, Lokio/i;->readByte()B

    goto :goto_6

    :cond_b
    const-wide/16 v16, 0xa

    mul-long v8, v8, v16

    int-to-long v14, v15

    add-long/2addr v8, v14

    :goto_7
    add-int/lit8 v7, v10, 0x1

    add-int/lit8 v6, v6, 0x1

    move v10, v7

    goto/16 :goto_1

    :cond_c
    if-nez v6, :cond_5

    const/4 v5, 0x1

    const-wide/16 v14, 0x1

    sub-long/2addr v2, v14

    goto :goto_7

    :cond_d
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    invoke-virtual {v11}, Lokio/n;->pop()Lokio/n;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lokio/i;->aux:Lokio/n;

    invoke-static {v11}, Lokio/c;->aIv(Lokio/n;)V

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lokio/i;->aux:Lokio/n;

    if-eqz v7, :cond_1

    goto/16 :goto_0
.end method

.method public aJh()J
    .locals 18

    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/i;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lokio/i;->aux:Lokio/n;

    iget-object v11, v10, Lokio/n;->data:[B

    iget v6, v10, Lokio/n;->pos:I

    iget v12, v10, Lokio/n;->limit:I

    move v7, v6

    :goto_1
    if-lt v7, v12, :cond_2

    :goto_2
    if-eq v7, v12, :cond_b

    iput v7, v10, Lokio/n;->pos:I

    :goto_3
    if-eqz v2, :cond_c

    :cond_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lokio/i;->size:J

    int-to-long v2, v3

    sub-long v2, v6, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lokio/i;->size:J

    return-wide v4

    :cond_2
    aget-byte v8, v11, v7

    const/16 v6, 0x30

    if-ge v8, v6, :cond_6

    :cond_3
    const/16 v6, 0x61

    if-ge v8, v6, :cond_7

    :cond_4
    const/16 v6, 0x41

    if-ge v8, v6, :cond_8

    :cond_5
    if-eqz v3, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/16 v6, 0x39

    if-gt v8, v6, :cond_3

    add-int/lit8 v6, v8, -0x30

    :goto_4
    const-wide/high16 v14, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v14, v4

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_a

    new-instance v2, Lokio/i;

    invoke-direct {v2}, Lokio/i;-><init>()V

    invoke-virtual {v2, v4, v5}, Lokio/i;->aJC(J)Lokio/i;

    move-result-object v2

    invoke-virtual {v2, v8}, Lokio/i;->aJy(I)Lokio/i;

    move-result-object v2

    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Number too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lokio/i;->aJj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    const/16 v6, 0x66

    if-gt v8, v6, :cond_4

    add-int/lit8 v6, v8, -0x61

    add-int/lit8 v6, v6, 0xa

    goto :goto_4

    :cond_8
    const/16 v6, 0x46

    if-gt v8, v6, :cond_5

    add-int/lit8 v6, v8, -0x41

    add-int/lit8 v6, v6, 0xa

    goto :goto_4

    :cond_9
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    const/4 v8, 0x4

    shl-long/2addr v4, v8

    int-to-long v8, v6

    or-long/2addr v8, v4

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move-wide v4, v8

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v10}, Lokio/n;->pop()Lokio/n;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lokio/i;->aux:Lokio/n;

    invoke-static {v10}, Lokio/c;->aIv(Lokio/n;)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lokio/i;->aux:Lokio/n;

    if-eqz v6, :cond_1

    goto/16 :goto_0
.end method

.method public aJi(J)Lokio/ByteString;
    .locals 3

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/i;->aJp(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public aJj()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-wide v0, p0, Lokio/i;->size:J

    sget-object v2, Lokio/p;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/i;->aJl(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public aJk(J)Ljava/lang/String;
    .locals 1

    sget-object v0, Lokio/p;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/i;->aJl(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aJl(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-wide v0, p0, Lokio/i;->size:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/p;->checkOffsetAndCount(JJJ)V

    if-eqz p3, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    move v0, v6

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    return-object v0

    :cond_3
    iget-object v1, p0, Lokio/i;->aux:Lokio/n;

    iget v0, v1, Lokio/n;->pos:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, Lokio/n;->limit:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4

    move v0, v6

    :goto_1
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokio/i;->aJp(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_4
    move v0, v7

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lokio/n;->data:[B

    iget v3, v1, Lokio/n;->pos:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, v1, Lokio/n;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, Lokio/n;->pos:I

    iget-wide v2, p0, Lokio/i;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokio/i;->size:J

    iget v2, v1, Lokio/n;->pos:I

    iget v3, v1, Lokio/n;->limit:I

    if-eq v2, v3, :cond_6

    :goto_2
    return-object v0

    :cond_6
    invoke-virtual {v1}, Lokio/n;->pop()Lokio/n;

    move-result-object v2

    iput-object v2, p0, Lokio/i;->aux:Lokio/n;

    invoke-static {v1}, Lokio/c;->aIv(Lokio/n;)V

    goto :goto_2
.end method

.method public aJm()Ljava/lang/String;
    .locals 8

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/i;->aJE(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v1, Lokio/i;

    invoke-direct {v1}, Lokio/i;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-wide v6, p0, Lokio/i;->size:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/i;->aIZ(Lokio/i;JJ)Lokio/i;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lokio/i;->size()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lokio/i;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->aID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lokio/i;->aJn(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method aJn(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lokio/i;->aJb(J)B

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/i;->aJk(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, Lokio/i;->skip(J)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lokio/i;->aJk(J)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lokio/i;->skip(J)V

    return-object v0
.end method

.method public aJo()[B
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lokio/i;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/i;->aJp(J)[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public aJp(J)[B
    .locals 7

    iget-wide v0, p0, Lokio/i;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/p;->checkOffsetAndCount(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    long-to-int v0, p1

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lokio/i;->aJq([B)V

    return-object v0
.end method

.method public aJq([B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/i;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public aJr(Lokio/ByteString;)Lokio/i;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lokio/ByteString;->aIH(Lokio/i;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic aJr(Lokio/ByteString;)Lokio/u;
    .locals 1

    invoke-virtual {p0, p1}, Lokio/i;->aJr(Lokio/ByteString;)Lokio/i;

    move-result-object v0

    return-object v0
.end method

.method public aJs(Ljava/lang/String;)Lokio/i;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lokio/i;->aJt(Ljava/lang/String;II)Lokio/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aJs(Ljava/lang/String;)Lokio/u;
    .locals 1

    invoke-virtual {p0, p1}, Lokio/i;->aJs(Ljava/lang/String;)Lokio/i;

    move-result-object v0

    return-object v0
.end method

.method public aJt(Ljava/lang/String;II)Lokio/i;
    .locals 10

    const v9, 0xdfff

    const/16 v8, 0x80

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_1

    if-lt p3, p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_3

    :goto_0
    if-lt p2, p3, :cond_4

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v8, :cond_6

    const/16 v0, 0x800

    if-lt v2, v0, :cond_9

    const v0, 0xd800

    if-ge v2, v0, :cond_a

    :cond_5
    shr-int/lit8 v0, v2, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    shr-int/lit8 v0, v2, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    and-int/lit8 v0, v2, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    add-int/lit8 v0, p2, 0x1

    :goto_1
    move p2, v0

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/i;->aJD(I)Lokio/n;

    move-result-object v3

    iget-object v4, v3, Lokio/n;->data:[B

    iget v0, v3, Lokio/n;->limit:I

    sub-int v5, v0, p2

    rsub-int v0, v5, 0x800

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v0, p2, 0x1

    add-int v7, v5, p2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v4, v7

    :goto_2
    if-lt v0, v6, :cond_8

    :cond_7
    add-int v2, v0, v5

    iget v4, v3, Lokio/n;->limit:I

    sub-int/2addr v2, v4

    iget v4, v3, Lokio/n;->limit:I

    add-int/2addr v4, v2

    iput v4, v3, Lokio/n;->limit:I

    iget-wide v4, p0, Lokio/i;->size:J

    int-to-long v2, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/i;->size:J

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ge v7, v8, :cond_7

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v5

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v0

    move v0, v2

    goto :goto_2

    :cond_9
    shr-int/lit8 v0, v2, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    and-int/lit8 v0, v2, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    add-int/lit8 v0, p2, 0x1

    goto :goto_1

    :cond_a
    if-gt v2, v9, :cond_5

    add-int/lit8 v0, p2, 0x1

    if-lt v0, p3, :cond_c

    move v0, v1

    :goto_3
    const v3, 0xdbff

    if-le v2, v3, :cond_d

    :cond_b
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    :cond_d
    const v3, 0xdc00

    if-lt v0, v3, :cond_b

    if-gt v0, v9, :cond_b

    const v3, -0xd801

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0xa

    const v3, -0xdc01

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    const/high16 v2, 0x10000

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    invoke-virtual {p0, v2}, Lokio/i;->aJy(I)Lokio/i;

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p0, v2}, Lokio/i;->aJy(I)Lokio/i;

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p0, v2}, Lokio/i;->aJy(I)Lokio/i;

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    add-int/lit8 v0, p2, 0x2

    goto/16 :goto_1
.end method

.method public aJu(I)Lokio/i;
    .locals 3

    const/16 v0, 0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x800

    if-lt p1, v0, :cond_1

    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_2

    const v0, 0x10ffff

    if-le p1, v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lokio/i;->aJy(I)Lokio/i;

    :goto_0
    return-object p0

    :cond_1
    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    goto :goto_0

    :cond_2
    const v0, 0xd800

    if-ge p1, v0, :cond_4

    :cond_3
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    goto :goto_0

    :cond_4
    const v0, 0xdfff

    if-gt p1, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/i;->aJy(I)Lokio/i;

    goto :goto_0
.end method

.method public aJv(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/i;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lokio/i;->aJw(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/i;

    move-result-object v0

    return-object v0
.end method

.method public aJw(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/i;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_1

    if-lt p3, p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_3

    if-eqz p4, :cond_4

    sget-object v0, Lokio/p;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lokio/i;->write([BII)Lokio/i;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0, p1}, Lokio/i;->aJs(Ljava/lang/String;)Lokio/i;

    move-result-object v0

    return-object v0
.end method

.method public aJx(Lokio/w;)J
    .locals 6

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x800

    invoke-interface {p1, p0, v2, v3}, Lokio/w;->read(Lokio/i;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-wide v0
.end method

.method public aJy(I)Lokio/i;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/i;->aJD(I)Lokio/n;

    move-result-object v0

    iget-object v1, v0, Lokio/n;->data:[B

    iget v2, v0, Lokio/n;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/n;->limit:I

    int-to-byte v0, p1

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    iget-wide v0, p0, Lokio/i;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/i;->size:J

    return-object p0
.end method

.method public bridge synthetic aJy(I)Lokio/u;
    .locals 1

    invoke-virtual {p0, p1}, Lokio/i;->aJy(I)Lokio/i;

    move-result-object v0

    return-object v0
.end method

.method public aJz(I)Lokio/i;
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lokio/i;->aJD(I)Lokio/n;

    move-result-object v0

    iget-object v1, v0, Lokio/n;->data:[B

    iget v2, v0, Lokio/n;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, Lokio/n;->limit:I

    iget-wide v0, p0, Lokio/i;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/i;->size:J

    return-object p0
.end method

.method public bridge synthetic aJz(I)Lokio/u;
    .locals 1

    invoke-virtual {p0, p1}, Lokio/i;->aJz(I)Lokio/i;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lokio/i;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/i;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lokio/i;->clone()Lokio/i;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokio/i;
    .locals 6

    new-instance v1, Lokio/i;

    invoke-direct {v1}, Lokio/i;-><init>()V

    iget-wide v2, p0, Lokio/i;->size:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lokio/n;

    iget-object v2, p0, Lokio/i;->aux:Lokio/n;

    invoke-direct {v0, v2}, Lokio/n;-><init>(Lokio/n;)V

    iput-object v0, v1, Lokio/i;->aux:Lokio/n;

    iget-object v0, v1, Lokio/i;->aux:Lokio/n;

    iget-object v2, v1, Lokio/i;->aux:Lokio/n;

    iget-object v3, v1, Lokio/i;->aux:Lokio/n;

    iput-object v3, v2, Lokio/n;->auH:Lokio/n;

    iput-object v3, v0, Lokio/n;->auG:Lokio/n;

    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    iget-object v0, v0, Lokio/n;->auG:Lokio/n;

    :goto_0
    iget-object v2, p0, Lokio/i;->aux:Lokio/n;

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Lokio/i;->size:J

    iput-wide v2, v1, Lokio/i;->size:J

    return-object v1

    :cond_1
    iget-object v2, v1, Lokio/i;->aux:Lokio/n;

    iget-object v2, v2, Lokio/n;->auH:Lokio/n;

    new-instance v3, Lokio/n;

    invoke-direct {v3, v0}, Lokio/n;-><init>(Lokio/n;)V

    invoke-virtual {v2, v3}, Lokio/n;->aJJ(Lokio/n;)Lokio/n;

    iget-object v0, v0, Lokio/n;->auG:Lokio/n;

    goto :goto_0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 14

    const-wide/16 v0, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lokio/i;

    if-eqz v2, :cond_1

    check-cast p1, Lokio/i;

    iget-wide v2, p0, Lokio/i;->size:J

    iget-wide v4, p1, Lokio/i;->size:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v8

    :cond_0
    return v7

    :cond_1
    return v8

    :cond_2
    iget-wide v2, p0, Lokio/i;->size:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    return v7

    :cond_3
    iget-object v5, p0, Lokio/i;->aux:Lokio/n;

    iget-object v4, p1, Lokio/i;->aux:Lokio/n;

    iget v3, v5, Lokio/n;->pos:I

    iget v2, v4, Lokio/n;->pos:I

    :goto_0
    iget-wide v10, p0, Lokio/i;->size:J

    cmp-long v6, v0, v10

    if-ltz v6, :cond_4

    move v6, v7

    :goto_1
    if-nez v6, :cond_a

    iget v6, v5, Lokio/n;->limit:I

    sub-int/2addr v6, v3

    iget v9, v4, Lokio/n;->limit:I

    sub-int/2addr v9, v2

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-long v10, v6

    move v9, v8

    :goto_2
    int-to-long v12, v9

    cmp-long v6, v12, v10

    if-ltz v6, :cond_5

    move v6, v7

    :goto_3
    if-nez v6, :cond_7

    iget-object v12, v5, Lokio/n;->data:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v12, v12, v3

    iget-object v13, v4, Lokio/n;->data:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v13, v2

    if-ne v12, v2, :cond_6

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v2, v3

    move v3, v6

    goto :goto_2

    :cond_4
    move v6, v8

    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_3

    :cond_6
    return v8

    :cond_7
    iget v6, v5, Lokio/n;->limit:I

    if-eq v3, v6, :cond_8

    :goto_4
    iget v6, v4, Lokio/n;->limit:I

    if-eq v2, v6, :cond_9

    :goto_5
    add-long/2addr v0, v10

    goto :goto_0

    :cond_8
    iget-object v5, v5, Lokio/n;->auG:Lokio/n;

    iget v3, v5, Lokio/n;->pos:I

    goto :goto_4

    :cond_9
    iget-object v4, v4, Lokio/n;->auG:Lokio/n;

    iget v2, v4, Lokio/n;->pos:I

    goto :goto_5

    :cond_a
    return v7
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public hashCode()I
    .locals 5

    iget-object v1, p0, Lokio/i;->aux:Lokio/n;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    iget v2, v1, Lokio/n;->pos:I

    iget v4, v1, Lokio/n;->limit:I

    :goto_0
    if-lt v2, v4, :cond_2

    iget-object v1, v1, Lokio/n;->auG:Lokio/n;

    iget-object v2, p0, Lokio/i;->aux:Lokio/n;

    if-ne v1, v2, :cond_0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, Lokio/n;->data:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6

    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/p;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    if-eqz v0, :cond_0

    iget v1, v0, Lokio/n;->limit:I

    iget v2, v0, Lokio/n;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lokio/n;->data:[B

    iget v3, v0, Lokio/n;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, Lokio/n;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/n;->pos:I

    iget-wide v2, p0, Lokio/i;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/i;->size:J

    iget v2, v0, Lokio/n;->pos:I

    iget v3, v0, Lokio/n;->limit:I

    if-eq v2, v3, :cond_1

    :goto_0
    return v1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    invoke-virtual {v0}, Lokio/n;->pop()Lokio/n;

    move-result-object v2

    iput-object v2, p0, Lokio/i;->aux:Lokio/n;

    invoke-static {v0}, Lokio/c;->aIv(Lokio/n;)V

    goto :goto_0
.end method

.method public read(Lokio/i;J)J
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    cmp-long v2, p2, v4

    if-ltz v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lokio/i;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_3
    iget-wide v2, p0, Lokio/i;->size:J

    cmp-long v2, p2, v2

    if-gtz v2, :cond_5

    :goto_1
    if-nez v0, :cond_4

    iget-wide p2, p0, Lokio/i;->size:J

    :cond_4
    invoke-virtual {p1, p0, p2, p3}, Lokio/i;->write(Lokio/i;J)V

    return-wide p2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public readByte()B
    .locals 10

    iget-wide v0, p0, Lokio/i;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    iget v1, v0, Lokio/n;->pos:I

    iget v2, v0, Lokio/n;->limit:I

    iget-object v3, v0, Lokio/n;->data:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    iget-wide v6, p0, Lokio/i;->size:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/i;->size:J

    if-eq v4, v2, :cond_1

    iput v4, v0, Lokio/n;->pos:I

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lokio/n;->pop()Lokio/n;

    move-result-object v2

    iput-object v2, p0, Lokio/i;->aux:Lokio/n;

    invoke-static {v0}, Lokio/c;->aIv(Lokio/n;)V

    goto :goto_0
.end method

.method public readByteString()Lokio/ByteString;
    .locals 2

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/i;->aJo()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lokio/i;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .locals 7

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    iget v0, v0, Lokio/n;->limit:I

    iget-object v1, p0, Lokio/i;->aux:Lokio/n;

    iget v1, v1, Lokio/n;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-wide v2, p0, Lokio/i;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/i;->size:J

    int-to-long v2, v0

    sub-long/2addr p1, v2

    iget-object v1, p0, Lokio/i;->aux:Lokio/n;

    iget v2, v1, Lokio/n;->pos:I

    add-int/2addr v0, v2

    iput v0, v1, Lokio/n;->pos:I

    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    iget v0, v0, Lokio/n;->pos:I

    iget-object v1, p0, Lokio/i;->aux:Lokio/n;

    iget v1, v1, Lokio/n;->limit:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    invoke-virtual {v0}, Lokio/n;->pop()Lokio/n;

    move-result-object v1

    iput-object v1, p0, Lokio/i;->aux:Lokio/n;

    invoke-static {v0}, Lokio/c;->aIv(Lokio/n;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_3
    return-void
.end method

.method public snapshot()Lokio/ByteString;
    .locals 4

    iget-wide v0, p0, Lokio/i;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/i;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lokio/i;->size:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lokio/i;->aJG(I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public timeout()Lokio/e;
    .locals 1

    sget-object v0, Lokio/e;->NONE:Lokio/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lokio/i;->size:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    const-string/jumbo v0, "Buffer[size=0]"

    return-object v0

    :cond_0
    iget-wide v4, p0, Lokio/i;->size:J

    const-wide/16 v6, 0x10

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lokio/i;->clone()Lokio/i;

    move-result-object v0

    invoke-virtual {v0}, Lokio/i;->readByteString()Lokio/ByteString;

    move-result-object v0

    const-string/jumbo v3, "Buffer[size=%s data=%s]"

    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v6, p0, Lokio/i;->size:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0}, Lokio/ByteString;->aID()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    iget-object v0, v0, Lokio/n;->data:[B

    iget-object v2, p0, Lokio/i;->aux:Lokio/n;

    iget v2, v2, Lokio/n;->pos:I

    iget-object v3, p0, Lokio/i;->aux:Lokio/n;

    iget v3, v3, Lokio/n;->limit:I

    iget-object v4, p0, Lokio/i;->aux:Lokio/n;

    iget v4, v4, Lokio/n;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    iget-object v0, v0, Lokio/n;->auG:Lokio/n;

    :goto_1
    iget-object v2, p0, Lokio/i;->aux:Lokio/n;

    if-ne v0, v2, :cond_3

    const-string/jumbo v0, "Buffer[size=%s md5=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lokio/i;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lokio/ByteString;->aIw([B)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->aID()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v2, v0, Lokio/n;->data:[B

    iget v3, v0, Lokio/n;->pos:I

    iget v4, v0, Lokio/n;->limit:I

    iget v5, v0, Lokio/n;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, v0, Lokio/n;->auG:Lokio/n;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public write([B)Lokio/i;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/i;->write([BII)Lokio/i;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)Lokio/i;
    .locals 6

    if-eqz p1, :cond_0

    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/p;->checkOffsetAndCount(JJJ)V

    add-int v0, p2, p3

    :goto_0
    if-lt p2, v0, :cond_1

    iget-wide v0, p0, Lokio/i;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/i;->size:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lokio/i;->aJD(I)Lokio/n;

    move-result-object v1

    sub-int v2, v0, p2

    iget v3, v1, Lokio/n;->limit:I

    rsub-int v3, v3, 0x800

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, Lokio/n;->data:[B

    iget v4, v1, Lokio/n;->limit:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    iget v3, v1, Lokio/n;->limit:I

    add-int/2addr v2, v3

    iput v2, v1, Lokio/n;->limit:I

    goto :goto_0
.end method

.method public bridge synthetic write([B)Lokio/u;
    .locals 1

    invoke-virtual {p0, p1}, Lokio/i;->write([B)Lokio/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write([BII)Lokio/u;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lokio/i;->write([BII)Lokio/i;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/i;J)V
    .locals 12

    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_3

    iget-wide v0, p1, Lokio/i;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/p;->checkOffsetAndCount(JJJ)V

    :goto_0
    cmp-long v0, p2, v2

    if-gtz v0, :cond_4

    move v0, v7

    :goto_1
    if-nez v0, :cond_b

    iget-object v0, p1, Lokio/i;->aux:Lokio/n;

    iget v0, v0, Lokio/n;->limit:I

    iget-object v1, p1, Lokio/i;->aux:Lokio/n;

    iget v1, v1, Lokio/n;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_5

    move v0, v7

    :goto_2
    if-nez v0, :cond_1

    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    if-nez v0, :cond_6

    move-object v0, v6

    :goto_3
    if-nez v0, :cond_7

    :cond_0
    iget-object v0, p1, Lokio/i;->aux:Lokio/n;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lokio/n;->aJK(I)Lokio/n;

    move-result-object v0

    iput-object v0, p1, Lokio/i;->aux:Lokio/n;

    :cond_1
    iget-object v0, p1, Lokio/i;->aux:Lokio/n;

    iget v1, v0, Lokio/n;->limit:I

    iget v4, v0, Lokio/n;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-virtual {v0}, Lokio/n;->pop()Lokio/n;

    move-result-object v1

    iput-object v1, p1, Lokio/i;->aux:Lokio/n;

    iget-object v1, p0, Lokio/i;->aux:Lokio/n;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lokio/i;->aux:Lokio/n;

    iget-object v1, v1, Lokio/n;->auH:Lokio/n;

    invoke-virtual {v1, v0}, Lokio/n;->aJJ(Lokio/n;)Lokio/n;

    move-result-object v0

    invoke-virtual {v0}, Lokio/n;->aJL()V

    :goto_4
    iget-wide v0, p1, Lokio/i;->size:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lokio/i;->size:J

    iget-wide v0, p0, Lokio/i;->size:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lokio/i;->size:J

    sub-long/2addr p2, v4

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v8

    goto :goto_1

    :cond_5
    move v0, v8

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    iget-object v0, v0, Lokio/n;->auH:Lokio/n;

    goto :goto_3

    :cond_7
    iget-boolean v1, v0, Lokio/n;->auF:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lokio/n;->limit:I

    int-to-long v4, v1

    add-long/2addr v4, p2

    iget-boolean v1, v0, Lokio/n;->auE:Z

    if-nez v1, :cond_8

    iget v1, v0, Lokio/n;->pos:I

    :goto_5
    int-to-long v10, v1

    sub-long/2addr v4, v10

    const-wide/16 v10, 0x800

    cmp-long v1, v4, v10

    if-lez v1, :cond_9

    move v1, v7

    :goto_6
    if-nez v1, :cond_0

    iget-object v1, p1, Lokio/i;->aux:Lokio/n;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lokio/n;->aJM(Lokio/n;I)V

    iget-wide v0, p1, Lokio/i;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lokio/i;->size:J

    iget-wide v0, p0, Lokio/i;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/i;->size:J

    return-void

    :cond_8
    move v1, v8

    goto :goto_5

    :cond_9
    move v1, v8

    goto :goto_6

    :cond_a
    iput-object v0, p0, Lokio/i;->aux:Lokio/n;

    iget-object v0, p0, Lokio/i;->aux:Lokio/n;

    iget-object v1, p0, Lokio/i;->aux:Lokio/n;

    iget-object v9, p0, Lokio/i;->aux:Lokio/n;

    iput-object v9, v1, Lokio/n;->auH:Lokio/n;

    iput-object v9, v0, Lokio/n;->auG:Lokio/n;

    goto :goto_4

    :cond_b
    return-void
.end method
