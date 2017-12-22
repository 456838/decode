.class Lcom/loc/aI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/loc/aI;",
        ">;"
    }
.end annotation


# instance fields
.field private anP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/o;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic anQ:Lcom/loc/bP;

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

.field private d:D

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/loc/bP;)V
    .locals 4

    const-wide/16 v2, 0x0

    iput-object p1, p0, Lcom/loc/aI;->anQ:Lcom/loc/bP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/aI;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/aI;->anP:Ljava/util/ArrayList;

    iput-wide v2, p0, Lcom/loc/aI;->d:D

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/aI;->e:Ljava/lang/String;

    iput-wide v2, p0, Lcom/loc/aI;->d:D

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/aI;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic aAu(Lcom/loc/aI;D)D
    .locals 1

    iput-wide p1, p0, Lcom/loc/aI;->d:D

    return-wide p1
.end method

.method static synthetic aAv(Lcom/loc/aI;)D
    .locals 2

    iget-wide v0, p0, Lcom/loc/aI;->d:D

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 12

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide v8, 0x3fb999999999999aL    # 0.1

    iget-object v0, p0, Lcom/loc/aI;->anP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v4, v0

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/loc/aI;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    mul-double v0, v2, v10

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/loc/aI;->d:D

    iget-wide v0, p0, Lcom/loc/aI;->d:D

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    add-double/2addr v4, v8

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/loc/aI;->d:D

    return-void

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/o;

    iget v0, v0, Lcom/loc/o;->e:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_1
    add-double/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_1
    const-wide v0, 0x3fe3333333333333L    # 0.6

    goto :goto_1
.end method

.method public aAs(Lcom/loc/aI;)I
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p1, Lcom/loc/aI;->d:D

    iget-wide v2, p0, Lcom/loc/aI;->d:D

    sub-double/2addr v0, v2

    cmpl-double v2, v0, v4

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmpl-double v0, v0, v4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public aAt(Lcom/loc/o;)V
    .locals 2

    iget v0, p1, Lcom/loc/o;->e:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/loc/o;->e:I

    if-gtz v0, :cond_1

    :goto_0
    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/loc/aI;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/aI;->anP:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/loc/aI;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/loc/o;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/aI;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method public b()Lcom/loc/o;
    .locals 13

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/loc/aI;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v10, 0x3

    :goto_0
    iget-object v6, p0, Lcom/loc/aI;->anP:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/loc/aI;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/loc/aI;->anP:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide v8, v4

    move-wide v4, v0

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iget-object v1, p0, Lcom/loc/aI;->anP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_4

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_5

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_6

    move v6, v0

    :goto_3
    div-double/2addr v2, v4

    div-double v4, v8, v4

    new-instance v0, Lcom/loc/o;

    iget-object v1, p0, Lcom/loc/aI;->anQ:Lcom/loc/bP;

    iget-object v7, p0, Lcom/loc/aI;->e:Ljava/lang/String;

    iget-wide v8, p0, Lcom/loc/aI;->d:D

    invoke-direct/range {v0 .. v10}, Lcom/loc/o;-><init>(Lcom/loc/bP;DDILjava/lang/String;DI)V

    return-object v0

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/o;

    iget v1, v0, Lcom/loc/o;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v6, v0, Lcom/loc/o;->b:D

    add-double/2addr v6, v8

    iget-wide v0, v0, Lcom/loc/o;->a:D

    add-double/2addr v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    move-wide v4, v0

    move-wide v8, v6

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_4
    const/16 v6, 0x1f4

    goto :goto_3

    :cond_5
    const/16 v6, 0x12c

    goto :goto_3

    :cond_6
    const/16 v6, 0x1e

    goto :goto_3

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/loc/o;

    iget v0, v6, Lcom/loc/o;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    iget v0, v6, Lcom/loc/o;->c:I

    if-gtz v0, :cond_9

    move v0, v7

    :goto_4
    iget-wide v2, v6, Lcom/loc/o;->b:D

    const-wide/16 v4, 0x0

    add-double/2addr v4, v2

    iget-wide v2, v6, Lcom/loc/o;->a:D

    const-wide/16 v6, 0x0

    add-double/2addr v2, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/16 v1, 0x1388

    if-gt v0, v1, :cond_a

    move v6, v0

    :goto_5
    div-double/2addr v2, v8

    div-double/2addr v4, v8

    new-instance v0, Lcom/loc/o;

    iget-object v1, p0, Lcom/loc/aI;->anQ:Lcom/loc/bP;

    iget-object v7, p0, Lcom/loc/aI;->e:Ljava/lang/String;

    iget-wide v8, p0, Lcom/loc/aI;->d:D

    const/4 v10, 0x2

    invoke-direct/range {v0 .. v10}, Lcom/loc/o;-><init>(Lcom/loc/bP;DDILjava/lang/String;DI)V

    return-object v0

    :cond_8
    iget-wide v2, v6, Lcom/loc/o;->a:D

    iget-wide v4, v6, Lcom/loc/o;->b:D

    new-instance v0, Lcom/loc/o;

    iget-object v1, p0, Lcom/loc/aI;->anQ:Lcom/loc/bP;

    iget v6, v6, Lcom/loc/o;->c:I

    iget-object v7, p0, Lcom/loc/aI;->e:Ljava/lang/String;

    iget-wide v8, p0, Lcom/loc/aI;->d:D

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/loc/o;-><init>(Lcom/loc/bP;DDILjava/lang/String;DI)V

    return-object v0

    :cond_9
    iget v0, v6, Lcom/loc/o;->c:I

    goto :goto_4

    :cond_a
    const/16 v6, 0x1388

    goto :goto_5
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/loc/aI;

    invoke-virtual {p0, p1}, Lcom/loc/aI;->aAs(Lcom/loc/aI;)I

    move-result v0

    return v0
.end method
