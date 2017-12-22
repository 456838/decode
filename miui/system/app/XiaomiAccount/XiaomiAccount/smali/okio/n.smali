.class final Lokio/n;
.super Ljava/lang/Object;
.source ""


# instance fields
.field auE:Z

.field auF:Z

.field auG:Lokio/n;

.field auH:Lokio/n;

.field final data:[B

.field limit:I

.field pos:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lokio/n;->data:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/n;->auF:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/n;->auE:Z

    return-void
.end method

.method constructor <init>(Lokio/n;)V
    .locals 3

    iget-object v0, p1, Lokio/n;->data:[B

    iget v1, p1, Lokio/n;->pos:I

    iget v2, p1, Lokio/n;->limit:I

    invoke-direct {p0, v0, v1, v2}, Lokio/n;-><init>([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lokio/n;->auE:Z

    return-void
.end method

.method constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/n;->data:[B

    iput p2, p0, Lokio/n;->pos:I

    iput p3, p0, Lokio/n;->limit:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/n;->auF:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/n;->auE:Z

    return-void
.end method


# virtual methods
.method public aJJ(Lokio/n;)Lokio/n;
    .locals 1

    iput-object p0, p1, Lokio/n;->auH:Lokio/n;

    iget-object v0, p0, Lokio/n;->auG:Lokio/n;

    iput-object v0, p1, Lokio/n;->auG:Lokio/n;

    iget-object v0, p0, Lokio/n;->auG:Lokio/n;

    iput-object p1, v0, Lokio/n;->auH:Lokio/n;

    iput-object p1, p0, Lokio/n;->auG:Lokio/n;

    return-object p1
.end method

.method public aJK(I)Lokio/n;
    .locals 2

    if-gtz p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lokio/n;->limit:I

    iget v1, p0, Lokio/n;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    new-instance v0, Lokio/n;

    invoke-direct {v0, p0}, Lokio/n;-><init>(Lokio/n;)V

    iget v1, v0, Lokio/n;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lokio/n;->limit:I

    iget v1, p0, Lokio/n;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lokio/n;->pos:I

    iget-object v1, p0, Lokio/n;->auH:Lokio/n;

    invoke-virtual {v1, v0}, Lokio/n;->aJJ(Lokio/n;)Lokio/n;

    return-object v0
.end method

.method public aJL()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lokio/n;->auH:Lokio/n;

    if-eq v1, p0, :cond_1

    iget-object v1, p0, Lokio/n;->auH:Lokio/n;

    iget-boolean v1, v1, Lokio/n;->auF:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lokio/n;->limit:I

    iget v2, p0, Lokio/n;->pos:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lokio/n;->auH:Lokio/n;

    iget v2, v2, Lokio/n;->limit:I

    rsub-int v2, v2, 0x800

    iget-object v3, p0, Lokio/n;->auH:Lokio/n;

    iget-boolean v3, v3, Lokio/n;->auE:Z

    if-nez v3, :cond_0

    iget-object v0, p0, Lokio/n;->auH:Lokio/n;

    iget v0, v0, Lokio/n;->pos:I

    :cond_0
    add-int/2addr v0, v2

    if-gt v1, v0, :cond_3

    iget-object v0, p0, Lokio/n;->auH:Lokio/n;

    invoke-virtual {p0, v0, v1}, Lokio/n;->aJM(Lokio/n;I)V

    invoke-virtual {p0}, Lokio/n;->pop()Lokio/n;

    invoke-static {p0}, Lokio/c;->aIv(Lokio/n;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2
    return-void

    :cond_3
    return-void
.end method

.method public aJM(Lokio/n;I)V
    .locals 6

    const/16 v2, 0x800

    const/4 v5, 0x0

    iget-boolean v0, p1, Lokio/n;->auF:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lokio/n;->limit:I

    add-int/2addr v0, p2

    if-gt v0, v2, :cond_1

    :goto_0
    iget-object v0, p0, Lokio/n;->data:[B

    iget v1, p0, Lokio/n;->pos:I

    iget-object v2, p1, Lokio/n;->data:[B

    iget v3, p1, Lokio/n;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lokio/n;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lokio/n;->limit:I

    iget v0, p0, Lokio/n;->pos:I

    add-int/2addr v0, p2

    iput v0, p0, Lokio/n;->pos:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-boolean v0, p1, Lokio/n;->auE:Z

    if-nez v0, :cond_2

    iget v0, p1, Lokio/n;->limit:I

    add-int/2addr v0, p2

    iget v1, p1, Lokio/n;->pos:I

    sub-int/2addr v0, v1

    if-gt v0, v2, :cond_3

    iget-object v0, p1, Lokio/n;->data:[B

    iget v1, p1, Lokio/n;->pos:I

    iget-object v2, p1, Lokio/n;->data:[B

    iget v3, p1, Lokio/n;->limit:I

    iget v4, p1, Lokio/n;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lokio/n;->limit:I

    iget v1, p1, Lokio/n;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lokio/n;->limit:I

    iput v5, p1, Lokio/n;->pos:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public pop()Lokio/n;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lokio/n;->auG:Lokio/n;

    if-ne v0, p0, :cond_0

    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lokio/n;->auH:Lokio/n;

    iget-object v3, p0, Lokio/n;->auG:Lokio/n;

    iput-object v3, v2, Lokio/n;->auG:Lokio/n;

    iget-object v2, p0, Lokio/n;->auG:Lokio/n;

    iget-object v3, p0, Lokio/n;->auH:Lokio/n;

    iput-object v3, v2, Lokio/n;->auH:Lokio/n;

    iput-object v1, p0, Lokio/n;->auG:Lokio/n;

    iput-object v1, p0, Lokio/n;->auH:Lokio/n;

    return-object v0

    :cond_0
    iget-object v0, p0, Lokio/n;->auG:Lokio/n;

    goto :goto_0
.end method
