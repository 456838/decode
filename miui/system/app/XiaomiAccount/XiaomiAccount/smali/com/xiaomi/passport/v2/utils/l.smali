.class final Lcom/xiaomi/passport/v2/utils/l;
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
        "Ljava/util/List",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic GA:Z

.field final synthetic Gz:Lcom/xiaomi/passport/v2/utils/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/c;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/l;->Gz:Lcom/xiaomi/passport/v2/utils/c;

    iput-boolean p2, p0, Lcom/xiaomi/passport/v2/utils/l;->GA:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/utils/l;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/l;->Gz:Lcom/xiaomi/passport/v2/utils/c;

    invoke-static {v1}, Lcom/xiaomi/passport/v2/utils/c;->Lq(Lcom/xiaomi/passport/v2/utils/c;)Lcom/xiaomi/phonenum/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/phonenum/a;->aos()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/utils/l;->GA:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/l;->Gz:Lcom/xiaomi/passport/v2/utils/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/c;->Lq(Lcom/xiaomi/passport/v2/utils/c;)Lcom/xiaomi/phonenum/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/a;->aox(I)Z

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/l;->Gz:Lcom/xiaomi/passport/v2/utils/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/c;->Lq(Lcom/xiaomi/passport/v2/utils/c;)Lcom/xiaomi/phonenum/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/a;->aot(I)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/phonenum/bean/a;

    iget v4, v0, Lcom/xiaomi/phonenum/bean/a;->errorCode:I

    if-nez v4, :cond_1

    new-instance v4, Lcom/xiaomi/accountsdk/account/data/j;

    invoke-direct {v4}, Lcom/xiaomi/accountsdk/account/data/j;-><init>()V

    iget-object v5, v0, Lcom/xiaomi/phonenum/bean/a;->abK:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/accountsdk/account/data/j;->WN(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/j;

    move-result-object v4

    iget-object v5, v0, Lcom/xiaomi/phonenum/bean/a;->abL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/accountsdk/account/data/j;->WO(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/j;

    move-result-object v4

    iget-object v5, v0, Lcom/xiaomi/phonenum/bean/a;->abN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/accountsdk/account/data/j;->WK(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/j;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/xiaomi/accountsdk/account/data/j;->WP(I)Lcom/xiaomi/accountsdk/account/data/j;

    move-result-object v4

    iget-object v5, v0, Lcom/xiaomi/phonenum/bean/a;->abQ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/accountsdk/account/data/j;->WL(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/j;

    move-result-object v4

    iget-object v0, v0, Lcom/xiaomi/phonenum/bean/a;->abR:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/xiaomi/accountsdk/account/data/j;->WM(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/j;->build()Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "ActivatorPhoneController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getLocalActivatorPhone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-object v3
.end method
