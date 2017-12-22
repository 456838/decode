.class public final Lcom/xiaomi/accountsdk/request/D;
.super Lcom/xiaomi/accountsdk/request/V;
.source ""


# instance fields
.field private final YJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/accountsdk/request/V;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/xiaomi/accountsdk/request/V;)V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/V;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public afH(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/V;->afH(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public afI(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accountsdk/request/V;->afI(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public afJ(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/V;->afJ(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public afK()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/V;->afK()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public afL(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/V;->afL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public afM()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/V;->afM()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public afN()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/V;->afN()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public afO()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/V;->afO()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public afP(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/V;->afP(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public afQ()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/V;->afQ()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public afR(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/V;->afR(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public afS(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/V;->afS(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public afT()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/V;->afT()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public afU()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/V;->afU()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public age()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/V;->age()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public agf()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/V;->agf()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public agg()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/V;->agg()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public agh()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/V;->agh()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/D;->YJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/V;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/V;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method
