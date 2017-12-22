.class final Lcom/xiaomi/passport/v2/utils/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/xiaomi/phonenum/bean/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic GE:Lcom/xiaomi/passport/v2/utils/c;

.field final synthetic GF:I


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/n;->GE:Lcom/xiaomi/passport/v2/utils/c;

    iput p2, p0, Lcom/xiaomi/passport/v2/utils/n;->GF:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/xiaomi/phonenum/bean/a;
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/xiaomi/passport/v2/utils/c;->Lr()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/xiaomi/passport/v2/utils/c;->Lr()Ljava/util/Map;

    move-result-object v0

    iget v2, p0, Lcom/xiaomi/passport/v2/utils/n;->GF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/n;->GE:Lcom/xiaomi/passport/v2/utils/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/c;->Lq(Lcom/xiaomi/passport/v2/utils/c;)Lcom/xiaomi/phonenum/a;

    move-result-object v0

    iget v2, p0, Lcom/xiaomi/passport/v2/utils/n;->GF:I

    invoke-virtual {v0, v2}, Lcom/xiaomi/phonenum/a;->aou(I)Ljava/util/concurrent/Future;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/passport/v2/utils/c;->Lr()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/xiaomi/passport/v2/utils/c;->Lr()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    invoke-static {v1}, Lcom/xiaomi/passport/v2/utils/c;->Ls(Ljava/util/Map;)Ljava/util/Map;

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/phonenum/bean/a;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/n;->GE:Lcom/xiaomi/passport/v2/utils/c;

    invoke-static {v1}, Lcom/xiaomi/passport/v2/utils/c;->Lq(Lcom/xiaomi/passport/v2/utils/c;)Lcom/xiaomi/phonenum/a;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/passport/v2/utils/n;->GF:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/phonenum/a;->aoy(I)Z

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/n;->GE:Lcom/xiaomi/passport/v2/utils/c;

    invoke-static {v1}, Lcom/xiaomi/passport/v2/utils/c;->Lq(Lcom/xiaomi/passport/v2/utils/c;)Lcom/xiaomi/phonenum/a;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/passport/v2/utils/n;->GF:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/phonenum/a;->aox(I)Z

    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/utils/n;->call()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0
.end method
