.class Lcom/loc/bq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final synthetic aqD:Lcom/loc/bP;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/loc/bP;)V
    .locals 1

    iput-object p1, p0, Lcom/loc/bq;->aqD:Lcom/loc/bP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bq;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bq;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private aDI(II)V
    .locals 9

    const/4 v8, -0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/loc/bq;->aqD:Lcom/loc/bP;

    invoke-static {v0}, Lcom/loc/bP;->aEY(Lcom/loc/bP;)[[S

    move-result-object v0

    aget-object v0, v0, p1

    aput-short v8, v0, p2

    iget-object v0, p0, Lcom/loc/bq;->aqD:Lcom/loc/bP;

    invoke-static {v0}, Lcom/loc/bP;->aEY(Lcom/loc/bP;)[[S

    move-result-object v0

    aget-object v0, v0, p2

    aput-short v8, v0, p1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/loc/bq;->aqD:Lcom/loc/bP;

    invoke-static {v2}, Lcom/loc/bP;->aEZ(Lcom/loc/bP;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/bq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/loc/bq;->aqD:Lcom/loc/bP;

    invoke-static {v2}, Lcom/loc/bP;->aEY(Lcom/loc/bP;)[[S

    move-result-object v2

    aget-object v2, v2, p1

    aget-short v2, v2, v0

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/loc/bq;->aqD:Lcom/loc/bP;

    invoke-static {v2}, Lcom/loc/bP;->aEY(Lcom/loc/bP;)[[S

    move-result-object v2

    aget-object v2, v2, p2

    aget-short v2, v2, v0

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v6, p0, Lcom/loc/bq;->aqD:Lcom/loc/bP;

    invoke-static {v6}, Lcom/loc/bP;->aEY(Lcom/loc/bP;)[[S

    move-result-object v6

    aget-object v6, v6, v5

    aget-short v0, v6, v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, v2, 0x1

    :goto_4
    move v2, v0

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/loc/bq;->aqD:Lcom/loc/bP;

    invoke-static {v6}, Lcom/loc/bP;->aEY(Lcom/loc/bP;)[[S

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput-short v8, v6, v7

    iget-object v6, p0, Lcom/loc/bq;->aqD:Lcom/loc/bP;

    invoke-static {v6}, Lcom/loc/bP;->aEY(Lcom/loc/bP;)[[S

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v6, v0

    aput-short v8, v0, v5

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v2

    goto :goto_4
.end method

.method static synthetic aDJ(Lcom/loc/bq;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/loc/bq;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/bq;->aqD:Lcom/loc/bP;

    invoke-static {v0}, Lcom/loc/bP;->aEZ(Lcom/loc/bP;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    move v3, v1

    :goto_1
    if-lt v3, v4, :cond_3

    return-void

    :cond_0
    move v0, v1

    :goto_2
    if-lt v0, v4, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/loc/bq;->aqD:Lcom/loc/bP;

    invoke-static {v3}, Lcom/loc/bP;->aEY(Lcom/loc/bP;)[[S

    move-result-object v3

    aget-object v3, v3, v2

    aget-short v3, v3, v0

    if-gtz v3, :cond_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/loc/bq;->aDI(II)V

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    move v2, v1

    :goto_4
    if-lt v2, v4, :cond_4

    :goto_5
    if-nez v0, :cond_7

    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/loc/bq;->aqD:Lcom/loc/bP;

    invoke-static {v5}, Lcom/loc/bP;->aEY(Lcom/loc/bP;)[[S

    move-result-object v5

    aget-object v5, v5, v3

    aget-short v5, v5, v2

    if-gtz v5, :cond_5

    iget-object v5, p0, Lcom/loc/bq;->aqD:Lcom/loc/bP;

    invoke-static {v5}, Lcom/loc/bP;->aEY(Lcom/loc/bP;)[[S

    move-result-object v5

    aget-object v5, v5, v3

    aget-short v5, v5, v2

    if-ltz v5, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "non visited edge"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/loc/bq;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method
