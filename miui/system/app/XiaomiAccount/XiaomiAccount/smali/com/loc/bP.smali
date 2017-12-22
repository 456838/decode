.class public Lcom/loc/bP;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private arA:Lcom/loc/bq;

.field private ary:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/aI;",
            ">;"
        }
    .end annotation
.end field

.field private arz:[[S

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bP;->ary:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bP;->b:Ljava/util/ArrayList;

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/loc/bP;->arz:[[S

    new-instance v0, Lcom/loc/bq;

    invoke-direct {v0, p0}, Lcom/loc/bq;-><init>(Lcom/loc/bP;)V

    iput-object v0, p0, Lcom/loc/bP;->arA:Lcom/loc/bq;

    return-void
.end method

.method static synthetic aEY(Lcom/loc/bP;)[[S
    .locals 1

    iget-object v0, p0, Lcom/loc/bP;->arz:[[S

    return-object v0
.end method

.method static synthetic aEZ(Lcom/loc/bP;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/loc/bP;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public aEW(ILjava/lang/String;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/loc/bP;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, "\\|"

    invoke-direct {v0, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v6

    new-instance v0, Lcom/loc/o;

    move-object v1, p0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/loc/o;-><init>(Lcom/loc/bP;DDII)V

    iget-object v1, p0, Lcom/loc/bP;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/loc/bP;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_2

    move v3, v9

    :goto_1
    if-lt v3, v8, :cond_3

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Atomic Pos Larger Than MAXN 512!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v2, v8

    :goto_2
    iget-object v0, p0, Lcom/loc/bP;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/loc/bP;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/o;

    iget-object v1, p0, Lcom/loc/bP;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/o;

    invoke-static {v0, v1}, Lcom/loc/o;->auq(Lcom/loc/o;Lcom/loc/o;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/loc/bP;->arz:[[S

    aget-object v0, v0, v3

    aput-short v11, v0, v2

    iget-object v0, p0, Lcom/loc/bP;->arz:[[S

    aget-object v0, v0, v2

    aput-short v11, v0, v3

    goto :goto_3
.end method

.method public aEX(DD)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/bP;->arA:Lcom/loc/bq;

    invoke-virtual {v0}, Lcom/loc/bq;->a()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/bP;->arA:Lcom/loc/bq;

    invoke-static {v0}, Lcom/loc/bq;->aDJ(Lcom/loc/bq;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/bP;->ary:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/bP;->ary:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/loc/o;

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/loc/o;-><init>(Lcom/loc/bP;DD)V

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    iget-object v1, p0, Lcom/loc/bP;->ary:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v3, v1, :cond_4

    iget-object v0, p0, Lcom/loc/bP;->ary:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/loc/bP;->ary:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_7

    return-object v6

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Lcom/loc/aI;

    invoke-direct {v2, p0}, Lcom/loc/aI;-><init>(Lcom/loc/bP;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/loc/aI;->a()V

    iget-object v0, p0, Lcom/loc/bP;->ary:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/loc/bP;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/o;

    invoke-virtual {v2, v0}, Lcom/loc/aI;->aAt(Lcom/loc/o;)V

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/loc/bP;->ary:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/aI;

    invoke-virtual {v1}, Lcom/loc/aI;->b()Lcom/loc/o;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/o;->aur(Lcom/loc/o;Lcom/loc/o;)D

    move-result-wide v4

    iget v1, v1, Lcom/loc/o;->e:I

    if-gtz v1, :cond_6

    const-wide v8, 0x40c3880000000000L    # 10000.0

    cmpg-double v1, v4, v8

    if-gez v1, :cond_5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v1, v4, v8

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/loc/bP;->ary:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/aI;

    iget-object v2, p0, Lcom/loc/bP;->ary:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/aI;

    invoke-static {v2}, Lcom/loc/aI;->aAv(Lcom/loc/aI;)D

    move-result-wide v4

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    mul-double/2addr v4, v8

    invoke-static {v1, v4, v5}, Lcom/loc/aI;->aAu(Lcom/loc/aI;D)D

    :cond_5
    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    :cond_6
    const-wide v8, 0x40bb580000000000L    # 7000.0

    cmpg-double v1, v4, v8

    if-gez v1, :cond_5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v1, v4, v8

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/loc/bP;->ary:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/aI;

    iget-object v2, p0, Lcom/loc/bP;->ary:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/aI;

    invoke-static {v2}, Lcom/loc/aI;->aAv(Lcom/loc/aI;)D

    move-result-wide v4

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    mul-double/2addr v4, v8

    invoke-static {v1, v4, v5}, Lcom/loc/aI;->aAu(Lcom/loc/aI;D)D

    goto :goto_4

    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_8

    iget-object v0, p0, Lcom/loc/bP;->ary:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/aI;

    invoke-virtual {v0}, Lcom/loc/aI;->b()Lcom/loc/o;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_8
    return-object v6
.end method
