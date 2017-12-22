.class final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source ""


# instance fields
.field final transient auN:[[B

.field final transient auO:[I


# direct methods
.method constructor <init>(Lokio/i;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    iget-wide v0, p1, Lokio/i;->size:J

    const-wide/16 v2, 0x0

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lokio/p;->checkOffsetAndCount(JJJ)V

    iget-object v0, p1, Lokio/i;->aux:Lokio/n;

    move v1, v6

    move v2, v6

    :goto_0
    if-lt v2, p2, :cond_0

    new-array v0, v1, [[B

    iput-object v0, p0, Lokio/SegmentedByteString;->auN:[[B

    mul-int/lit8 v0, v1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lokio/SegmentedByteString;->auO:[I

    iget-object v0, p1, Lokio/i;->aux:Lokio/n;

    move v1, v6

    :goto_1
    if-lt v6, p2, :cond_2

    return-void

    :cond_0
    iget v3, v0, Lokio/n;->limit:I

    iget v4, v0, Lokio/n;->pos:I

    if-eq v3, v4, :cond_1

    iget v3, v0, Lokio/n;->limit:I

    iget v4, v0, Lokio/n;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lokio/n;->auG:Lokio/n;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "s.limit == s.pos"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    iget-object v2, p0, Lokio/SegmentedByteString;->auN:[[B

    iget-object v3, v0, Lokio/n;->data:[B

    aput-object v3, v2, v1

    iget v2, v0, Lokio/n;->limit:I

    iget v3, v0, Lokio/n;->pos:I

    sub-int/2addr v2, v3

    add-int/2addr v6, v2

    iget-object v2, p0, Lokio/SegmentedByteString;->auO:[I

    aput v6, v2, v1

    iget-object v2, p0, Lokio/SegmentedByteString;->auO:[I

    iget-object v3, p0, Lokio/SegmentedByteString;->auN:[[B

    array-length v3, v3

    add-int/2addr v3, v1

    iget v4, v0, Lokio/n;->pos:I

    aput v4, v2, v3

    const/4 v2, 0x1

    iput-boolean v2, v0, Lokio/n;->auE:Z

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lokio/n;->auG:Lokio/n;

    goto :goto_1
.end method

.method private aJV(I)I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lokio/SegmentedByteString;->auO:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->auN:[[B

    array-length v1, v1

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    if-gez v0, :cond_0

    xor-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method private aJX()Lokio/ByteString;
    .locals 2

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->aIG()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->aJX()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public aIA()Lokio/ByteString;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->aJX()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->aIA()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public aID()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->aJX()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->aID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aIF()Lokio/ByteString;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->aJX()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->aIF()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public aIG()[B
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lokio/SegmentedByteString;->auO:[I

    iget-object v2, p0, Lokio/SegmentedByteString;->auN:[[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    new-array v3, v1, [B

    iget-object v1, p0, Lokio/SegmentedByteString;->auN:[[B

    array-length v4, v1

    move v1, v0

    :goto_0
    if-lt v0, v4, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Lokio/SegmentedByteString;->auO:[I

    add-int v5, v4, v0

    aget v5, v2, v5

    iget-object v2, p0, Lokio/SegmentedByteString;->auO:[I

    aget v2, v2, v0

    iget-object v6, p0, Lokio/SegmentedByteString;->auN:[[B

    aget-object v6, v6, v0

    sub-int v7, v2, v1

    invoke-static {v6, v5, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0
.end method

.method aIH(Lokio/i;)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lokio/SegmentedByteString;->auN:[[B

    array-length v3, v1

    move v1, v0

    :goto_0
    if-lt v0, v3, :cond_0

    iget-wide v2, p1, Lokio/i;->size:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lokio/i;->size:J

    return-void

    :cond_0
    iget-object v2, p0, Lokio/SegmentedByteString;->auO:[I

    add-int v4, v3, v0

    aget v4, v2, v4

    iget-object v2, p0, Lokio/SegmentedByteString;->auO:[I

    aget v2, v2, v0

    new-instance v5, Lokio/n;

    iget-object v6, p0, Lokio/SegmentedByteString;->auN:[[B

    aget-object v6, v6, v0

    add-int v7, v4, v2

    sub-int v1, v7, v1

    invoke-direct {v5, v6, v4, v1}, Lokio/n;-><init>([BII)V

    iget-object v1, p1, Lokio/i;->aux:Lokio/n;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lokio/i;->aux:Lokio/n;

    iget-object v1, v1, Lokio/n;->auH:Lokio/n;

    invoke-virtual {v1, v5}, Lokio/n;->aJJ(Lokio/n;)Lokio/n;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    iput-object v5, v5, Lokio/n;->auH:Lokio/n;

    iput-object v5, v5, Lokio/n;->auG:Lokio/n;

    iput-object v5, p1, Lokio/i;->aux:Lokio/n;

    goto :goto_1
.end method

.method public aII(I[BII)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-le p1, v0, :cond_1

    :cond_0
    return v1

    :cond_1
    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->aJV(I)I

    move-result v0

    move v2, v0

    :goto_0
    if-gtz p4, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lokio/SegmentedByteString;->auO:[I

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    :goto_1
    iget-object v3, p0, Lokio/SegmentedByteString;->auO:[I

    aget v3, v3, v2

    sub-int/2addr v3, v0

    add-int/2addr v3, v0

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lokio/SegmentedByteString;->auO:[I

    iget-object v5, p0, Lokio/SegmentedByteString;->auN:[[B

    array-length v5, v5

    add-int/2addr v5, v2

    aget v4, v4, v5

    sub-int v0, p1, v0

    add-int/2addr v0, v4

    iget-object v4, p0, Lokio/SegmentedByteString;->auN:[[B

    aget-object v4, v4, v2

    invoke-static {v4, v0, p2, p3, v3}, Lokio/p;->aJT([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    return v1
.end method

.method public aIy()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->aJX()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->aIy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aIz()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->aJX()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->aIz()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aJW(ILokio/ByteString;II)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->aJV(I)I

    move-result v0

    move v2, v0

    :goto_0
    if-gtz p4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :cond_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lokio/SegmentedByteString;->auO:[I

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    :goto_1
    iget-object v3, p0, Lokio/SegmentedByteString;->auO:[I

    aget v3, v3, v2

    sub-int/2addr v3, v0

    add-int/2addr v3, v0

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lokio/SegmentedByteString;->auO:[I

    iget-object v5, p0, Lokio/SegmentedByteString;->auN:[[B

    array-length v5, v5

    add-int/2addr v5, v2

    aget v4, v4, v5

    sub-int v0, p1, v0

    add-int/2addr v0, v4

    iget-object v4, p0, Lokio/SegmentedByteString;->auN:[[B

    aget-object v4, v4, v2

    invoke-virtual {p2, p3, v4, v0, v3}, Lokio/ByteString;->aII(I[BII)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lokio/ByteString;

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v0

    invoke-virtual {p0, v2, p1, v2, v0}, Lokio/SegmentedByteString;->aJW(ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getByte(I)B
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lokio/SegmentedByteString;->auO:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->auN:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v0, v0

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    invoke-static/range {v0 .. v5}, Lokio/p;->checkOffsetAndCount(JJJ)V

    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->aJV(I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lokio/SegmentedByteString;->auO:[I

    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    :goto_0
    iget-object v2, p0, Lokio/SegmentedByteString;->auO:[I

    iget-object v3, p0, Lokio/SegmentedByteString;->auN:[[B

    array-length v3, v3

    add-int/2addr v3, v1

    aget v2, v2, v3

    iget-object v3, p0, Lokio/SegmentedByteString;->auN:[[B

    aget-object v1, v3, v1

    sub-int v0, p1, v0

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lokio/SegmentedByteString;->aut:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lokio/SegmentedByteString;->auN:[[B

    array-length v5, v2

    move v2, v0

    move v3, v0

    :goto_0
    if-lt v2, v5, :cond_1

    iput v1, p0, Lokio/SegmentedByteString;->aut:I

    return v1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lokio/SegmentedByteString;->auN:[[B

    aget-object v6, v0, v2

    iget-object v0, p0, Lokio/SegmentedByteString;->auO:[I

    add-int v4, v5, v2

    aget v0, v0, v4

    iget-object v4, p0, Lokio/SegmentedByteString;->auO:[I

    aget v4, v4, v2

    sub-int v3, v4, v3

    add-int/2addr v3, v0

    :goto_1
    if-lt v0, v3, :cond_2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v4

    goto :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x1f

    aget-byte v7, v6, v0

    add-int/2addr v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lokio/SegmentedByteString;->auO:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->auN:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->aJX()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
