.class Lcom/loc/bk;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static aDA(Lcom/loc/bX;Ljava/lang/String;)Lcom/loc/bs;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/loc/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/loc/s;

    invoke-direct {v1}, Lcom/loc/s;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/loc/bX;->aFl(Ljava/lang/String;Lcom/loc/ai;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-object v3

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bs;

    return-object v0
.end method

.method static aDz(Lcom/loc/bX;Lcom/loc/bs;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/loc/s;

    invoke-direct {v0}, Lcom/loc/s;-><init>()V

    invoke-virtual {v0, p1}, Lcom/loc/s;->avh(Lcom/loc/bs;)V

    invoke-virtual {p0, v0, p2}, Lcom/loc/bX;->aFg(Lcom/loc/ai;Ljava/lang/String;)V

    return-void
.end method
