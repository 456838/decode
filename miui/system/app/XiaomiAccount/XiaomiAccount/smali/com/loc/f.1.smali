.class public Lcom/loc/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public ajw:Ljava/lang/String;

.field public ajx:Ljava/lang/String;

.field public ajy:[B

.field public b:S

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/loc/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/loc/f;->b:S

    iput-object v1, p0, Lcom/loc/f;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->ajw:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->y:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->z:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->A:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->B:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->ajx:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->E:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->F:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/f;->ajy:[B

    return-void
.end method

.method private aug(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/f;->B:Ljava/lang/String;

    const-string/jumbo v1, "\\*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lac"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "cellid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "signal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_0
    aget-object v0, v0, v2

    return-object v0

    :cond_1
    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_2
    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static auh([BI)V
    .locals 0

    return-void
.end method

.method private b(Ljava/lang/String;)[B
    .locals 7

    const/4 v6, 0x2

    const/4 v4, 0x6

    const/4 v1, 0x0

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-array v2, v4, [Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_2

    move-object v0, v2

    :goto_1
    new-array v3, v4, [B

    move v2, v1

    :goto_2
    array-length v4, v0

    if-lt v2, v4, :cond_3

    return-object v3

    :cond_1
    array-length v2, v0

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "0"

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_4

    :goto_3
    aget-object v4, v0, v2

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    aget-object v4, v0, v2

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_3
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/loc/f;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/f;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/loc/f;->A:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/loc/f;->A:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    return-object v0
.end method

.method public a()[B
    .locals 12

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/16 v10, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/loc/f;->b()V

    const/16 v0, 0xc00

    iget-object v1, p0, Lcom/loc/f;->ajy:[B

    if-nez v1, :cond_5

    :goto_0
    new-array v5, v0, [B

    iget-object v0, p0, Lcom/loc/f;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    iget-short v0, p0, Lcom/loc/f;->b:S

    invoke-static {v0}, Lcom/loc/bd;->b(I)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v2, v5, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/loc/f;->c:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/f;->d:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v1, v0

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/loc/f;->o:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    add-int/2addr v1, v0

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/loc/f;->e:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    add-int/2addr v1, v0

    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/loc/f;->f:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    add-int/2addr v1, v0

    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/loc/f;->g:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    add-int/2addr v1, v0

    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/loc/f;->u:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    add-int/2addr v1, v0

    :goto_7
    :try_start_7
    iget-object v0, p0, Lcom/loc/f;->h:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    add-int/2addr v1, v0

    :goto_8
    :try_start_8
    iget-object v0, p0, Lcom/loc/f;->p:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    add-int/2addr v1, v0

    :goto_9
    :try_start_9
    iget-object v0, p0, Lcom/loc/f;->q:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    add-int/2addr v0, v1

    :goto_a
    iget-object v1, p0, Lcom/loc/f;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/loc/f;->t:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/loc/f;->b(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v1, v0

    :goto_b
    :try_start_a
    iget-object v0, p0, Lcom/loc/f;->v:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    add-int/2addr v1, v0

    :goto_c
    :try_start_b
    iget-object v0, p0, Lcom/loc/f;->w:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    add-int/2addr v1, v0

    :goto_d
    :try_start_c
    iget-object v0, p0, Lcom/loc/f;->x:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    add-int/2addr v0, v1

    :goto_e
    iget-object v1, p0, Lcom/loc/f;->y:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/loc/f;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/loc/f;->j:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_f
    iget-object v1, p0, Lcom/loc/f;->j:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    iget-object v1, p0, Lcom/loc/f;->ajw:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/loc/bd;->c(I)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    :goto_10
    iget-object v1, p0, Lcom/loc/f;->j:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_1
    iget-object v1, p0, Lcom/loc/f;->m:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/loc/bd;->c(I)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    :goto_11
    iget-object v1, p0, Lcom/loc/f;->j:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_2
    iget-object v1, p0, Lcom/loc/f;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/loc/bd;->e(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    :goto_12
    iget-object v1, p0, Lcom/loc/f;->z:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/loc/f;->z:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/loc/f;->z:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_3
    :goto_13
    iget-object v1, p0, Lcom/loc/f;->ajx:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    aput-byte v11, v5, v0

    add-int/lit8 v1, v0, 0x1

    :try_start_d
    iget-object v0, p0, Lcom/loc/f;->ajx:Ljava/lang/String;

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-direct {p0, v0}, Lcom/loc/f;->b(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_e

    add-int/2addr v1, v0

    const/4 v0, 0x2

    :try_start_e
    aget-object v0, v3, v0

    const-string/jumbo v6, "GBK"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v6, v0

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_d

    add-int/2addr v1, v0

    :goto_14
    const/4 v0, 0x1

    :try_start_f
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v10, :cond_12

    :goto_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v5, v1
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_e

    add-int/lit8 v0, v1, 0x1

    :goto_16
    iget-object v1, p0, Lcom/loc/f;->D:Ljava/lang/String;

    const-string/jumbo v3, "\\*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/loc/f;->D:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_4
    aput-byte v2, v5, v0

    add-int/lit8 v1, v0, 0x1

    :goto_17
    :try_start_10
    iget-object v0, p0, Lcom/loc/f;->F:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    if-gt v3, v10, :cond_16

    :goto_18
    if-eqz v0, :cond_17

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    add-int/2addr v0, v1

    :goto_19
    iget-object v1, p0, Lcom/loc/f;->ajy:[B

    if-nez v1, :cond_18

    move v1, v2

    :goto_1a
    invoke-static {v1}, Lcom/loc/bd;->b(I)[B

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v2, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v0, v3

    if-gtz v1, :cond_19

    :goto_1b
    new-array v1, v0, [B

    invoke-static {v5, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/loc/bd;->a(J)[B

    move-result-object v3

    array-length v4, v3

    add-int/2addr v4, v0

    new-array v4, v4, [B

    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v3

    invoke-static {v3, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v3

    invoke-static {v4, v2}, Lcom/loc/f;->auh([BI)V

    return-object v4

    :cond_5
    iget-object v0, p0, Lcom/loc/f;->ajy:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit16 v0, v0, 0xc00

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot2"

    invoke-static {v0, v3, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot21"

    invoke-static {v0, v3, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot22"

    invoke-static {v0, v3, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :catch_3
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot23"

    invoke-static {v0, v3, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :catch_4
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot24"

    invoke-static {v0, v3, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :catch_5
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot25"

    invoke-static {v0, v3, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :catch_6
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot26"

    invoke-static {v0, v3, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :catch_7
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot27"

    invoke-static {v0, v3, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    :catch_8
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot28"

    invoke-static {v0, v3, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    :catch_9
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot29"

    invoke-static {v0, v3, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_a

    :cond_6
    aput-byte v2, v5, v0

    add-int/lit8 v1, v0, 0x1

    goto/16 :goto_b

    :catch_a
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot211"

    invoke-static {v0, v3, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    :catch_b
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot212"

    invoke-static {v0, v3, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    :catch_c
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot213"

    invoke-static {v0, v3, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_e

    :cond_7
    iget-object v1, p0, Lcom/loc/f;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    :cond_8
    iget-object v1, p0, Lcom/loc/f;->j:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_10

    :cond_9
    iget-object v1, p0, Lcom/loc/f;->j:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_11

    :cond_a
    iget-object v1, p0, Lcom/loc/f;->j:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_12

    :cond_b
    const-string/jumbo v1, "mcc"

    invoke-virtual {p0, v1}, Lcom/loc/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/bd;->e(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "mnc"

    invoke-virtual {p0, v1}, Lcom/loc/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/bd;->e(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "lac"

    invoke-virtual {p0, v1}, Lcom/loc/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/bd;->e(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "cellid"

    invoke-virtual {p0, v1}, Lcom/loc/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/bd;->f(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v1, v0

    const-string/jumbo v0, "signal"

    invoke-virtual {p0, v0}, Lcom/loc/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v10, :cond_c

    :goto_1c
    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/loc/f;->B:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/loc/f;->B:Ljava/lang/String;

    const-string/jumbo v3, "\\*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    int-to-byte v1, v6

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    :goto_1d
    if-ge v1, v6, :cond_3

    const-string/jumbo v3, "lac"

    invoke-direct {p0, v3, v1}, Lcom/loc/f;->aug(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/bd;->e(Ljava/lang/String;)[B

    move-result-object v3

    array-length v7, v3

    invoke-static {v3, v2, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v0, v3

    const-string/jumbo v3, "cellid"

    invoke-direct {p0, v3, v1}, Lcom/loc/f;->aug(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/bd;->f(Ljava/lang/String;)[B

    move-result-object v3

    array-length v7, v3

    invoke-static {v3, v2, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v3, v0

    const-string/jumbo v0, "signal"

    invoke-direct {p0, v0, v1}, Lcom/loc/f;->aug(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v10, :cond_e

    :goto_1e
    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_1d

    :cond_c
    move v0, v2

    goto :goto_1c

    :cond_d
    aput-byte v2, v5, v0

    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13

    :cond_e
    move v0, v2

    goto :goto_1e

    :cond_f
    const-string/jumbo v1, "mcc"

    invoke-virtual {p0, v1}, Lcom/loc/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/bd;->e(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "sid"

    invoke-virtual {p0, v1}, Lcom/loc/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/bd;->e(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "nid"

    invoke-virtual {p0, v1}, Lcom/loc/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/bd;->e(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "bid"

    invoke-virtual {p0, v1}, Lcom/loc/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/bd;->e(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "lon"

    invoke-virtual {p0, v1}, Lcom/loc/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/bd;->f(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "lat"

    invoke-virtual {p0, v1}, Lcom/loc/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/bd;->f(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v1, v0

    const-string/jumbo v0, "signal"

    invoke-virtual {p0, v0}, Lcom/loc/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v10, :cond_10

    :goto_20
    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    aput-byte v2, v5, v0

    goto/16 :goto_1f

    :cond_10
    move v0, v2

    goto :goto_20

    :cond_11
    aput-byte v2, v5, v0

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16

    :catch_d
    move-exception v0

    :try_start_11
    const-string/jumbo v6, "Req"

    const-string/jumbo v7, "buildV4Dot214"

    invoke-static {v0, v6, v7}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-byte v0, v5, v1
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_e

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_14

    :cond_12
    move v0, v2

    goto/16 :goto_15

    :catch_e
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot216"

    invoke-static {v0, v3, v6}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "00:00:00:00:00:00"

    invoke-direct {p0, v0}, Lcom/loc/f;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v2, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v1

    aput-byte v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "0"

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    goto :goto_21

    :cond_13
    array-length v1, v6

    if-eqz v1, :cond_4

    array-length v1, v6

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    move v0, v2

    :goto_22
    array-length v3, v6

    if-lt v0, v3, :cond_14

    iget-object v0, p0, Lcom/loc/f;->E:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/loc/bd;->b(I)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v2, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v1, v0

    goto/16 :goto_17

    :cond_14
    aget-object v3, v6, v0

    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v3, v7, v2

    invoke-direct {p0, v3}, Lcom/loc/f;->b(Ljava/lang/String;)[B

    move-result-object v3

    array-length v8, v3

    invoke-static {v3, v2, v5, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v3, v1

    const/4 v1, 0x2

    :try_start_12
    aget-object v1, v7, v1

    const-string/jumbo v8, "GBK"

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v8, v1

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v5, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v1, v8, v5, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_f

    add-int/2addr v1, v3

    :goto_23
    aget-object v3, v7, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v10, :cond_15

    :goto_24
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :catch_f
    move-exception v1

    const-string/jumbo v8, "Req"

    const-string/jumbo v9, "buildV4Dot217"

    invoke-static {v1, v8, v9}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v3

    add-int/lit8 v1, v3, 0x1

    goto :goto_23

    :cond_15
    move v3, v2

    goto :goto_24

    :cond_16
    move-object v0, v4

    goto/16 :goto_18

    :cond_17
    const/4 v0, 0x0

    :try_start_13
    aput-byte v0, v5, v1
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_10

    :goto_25
    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_19

    :catch_10
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v4, "buildV4Dot218"

    invoke-static {v0, v3, v4}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    goto :goto_25

    :cond_18
    iget-object v1, p0, Lcom/loc/f;->ajy:[B

    array-length v1, v1

    goto/16 :goto_1a

    :cond_19
    iget-object v1, p0, Lcom/loc/f;->ajy:[B

    iget-object v3, p0, Lcom/loc/f;->ajy:[B

    array-length v3, v3

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/loc/f;->ajy:[B

    array-length v1, v1

    add-int/2addr v0, v1

    goto/16 :goto_1b
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    iget-object v0, p0, Lcom/loc/f;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_1
    iget-object v0, p0, Lcom/loc/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_2
    iget-object v0, p0, Lcom/loc/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_3
    iget-object v0, p0, Lcom/loc/f;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_4
    iget-object v0, p0, Lcom/loc/f;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_5
    iget-object v0, p0, Lcom/loc/f;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_6
    iget-object v0, p0, Lcom/loc/f;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_7
    iget-object v0, p0, Lcom/loc/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/loc/f;->j:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_0
    :goto_8
    iget-object v0, p0, Lcom/loc/f;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/loc/f;->k:Ljava/lang/String;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_1
    :goto_9
    iget-object v0, p0, Lcom/loc/f;->ajw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    :goto_a
    iget-object v0, p0, Lcom/loc/f;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    :goto_b
    iget-object v0, p0, Lcom/loc/f;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    :goto_c
    iget-object v0, p0, Lcom/loc/f;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    :goto_d
    iget-object v0, p0, Lcom/loc/f;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    :goto_e
    iget-object v0, p0, Lcom/loc/f;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    :goto_f
    iget-object v0, p0, Lcom/loc/f;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    :goto_10
    iget-object v0, p0, Lcom/loc/f;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    :goto_11
    iget-object v0, p0, Lcom/loc/f;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    :goto_12
    iget-object v0, p0, Lcom/loc/f;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    :goto_13
    iget-object v0, p0, Lcom/loc/f;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    :goto_14
    iget-object v0, p0, Lcom/loc/f;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    :goto_15
    iget-object v0, p0, Lcom/loc/f;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    :goto_16
    iget-object v0, p0, Lcom/loc/f;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/loc/f;->y:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_2
    :goto_17
    iget-object v0, p0, Lcom/loc/f;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/loc/f;->z:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_3
    :goto_18
    iget-object v0, p0, Lcom/loc/f;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    :goto_19
    iget-object v0, p0, Lcom/loc/f;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    :goto_1a
    iget-object v0, p0, Lcom/loc/f;->ajx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    :goto_1b
    iget-object v0, p0, Lcom/loc/f;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    :goto_1c
    iget-object v0, p0, Lcom/loc/f;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    :goto_1d
    iget-object v0, p0, Lcom/loc/f;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    :goto_1e
    iget-object v0, p0, Lcom/loc/f;->ajy:[B

    if-eqz v0, :cond_27

    :goto_1f
    return-void

    :cond_4
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->d:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->e:Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->f:Ljava/lang/String;

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->g:Ljava/lang/String;

    goto/16 :goto_5

    :cond_a
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->h:Ljava/lang/String;

    goto/16 :goto_6

    :cond_b
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->i:Ljava/lang/String;

    goto/16 :goto_7

    :cond_c
    const-string/jumbo v0, "0"

    :goto_20
    iput-object v0, p0, Lcom/loc/f;->j:Ljava/lang/String;

    goto/16 :goto_8

    :cond_d
    iget-object v0, p0, Lcom/loc/f;->j:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    goto :goto_20

    :cond_e
    const-string/jumbo v0, "0"

    :goto_21
    iput-object v0, p0, Lcom/loc/f;->k:Ljava/lang/String;

    goto/16 :goto_9

    :cond_f
    iget-object v0, p0, Lcom/loc/f;->k:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "0"

    goto :goto_21

    :cond_10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->ajw:Ljava/lang/String;

    goto/16 :goto_a

    :cond_11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->m:Ljava/lang/String;

    goto/16 :goto_b

    :cond_12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->n:Ljava/lang/String;

    goto/16 :goto_c

    :cond_13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->o:Ljava/lang/String;

    goto/16 :goto_d

    :cond_14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->p:Ljava/lang/String;

    goto/16 :goto_e

    :cond_15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->q:Ljava/lang/String;

    goto/16 :goto_f

    :cond_16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->r:Ljava/lang/String;

    goto/16 :goto_10

    :cond_17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->s:Ljava/lang/String;

    goto/16 :goto_11

    :cond_18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->t:Ljava/lang/String;

    goto/16 :goto_12

    :cond_19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->u:Ljava/lang/String;

    goto/16 :goto_13

    :cond_1a
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->v:Ljava/lang/String;

    goto/16 :goto_14

    :cond_1b
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->w:Ljava/lang/String;

    goto/16 :goto_15

    :cond_1c
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->x:Ljava/lang/String;

    goto/16 :goto_16

    :cond_1d
    const-string/jumbo v0, "0"

    :goto_22
    iput-object v0, p0, Lcom/loc/f;->y:Ljava/lang/String;

    goto/16 :goto_17

    :cond_1e
    iget-object v0, p0, Lcom/loc/f;->y:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "0"

    goto :goto_22

    :cond_1f
    const-string/jumbo v0, "0"

    :goto_23
    iput-object v0, p0, Lcom/loc/f;->z:Ljava/lang/String;

    goto/16 :goto_18

    :cond_20
    iget-object v0, p0, Lcom/loc/f;->z:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "0"

    goto :goto_23

    :cond_21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->A:Ljava/lang/String;

    goto/16 :goto_19

    :cond_22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->B:Ljava/lang/String;

    goto/16 :goto_1a

    :cond_23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->ajx:Ljava/lang/String;

    goto/16 :goto_1b

    :cond_24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->D:Ljava/lang/String;

    goto/16 :goto_1c

    :cond_25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->E:Ljava/lang/String;

    goto/16 :goto_1d

    :cond_26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/f;->F:Ljava/lang/String;

    goto/16 :goto_1e

    :cond_27
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/loc/f;->ajy:[B

    goto/16 :goto_1f
.end method
