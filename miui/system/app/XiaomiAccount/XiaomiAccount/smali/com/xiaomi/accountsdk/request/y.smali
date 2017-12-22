.class Lcom/xiaomi/accountsdk/request/y;
.super Lcom/xiaomi/accountsdk/request/V;
.source ""


# instance fields
.field final YA:Lcom/xiaomi/accountsdk/request/I;

.field final YB:Lcom/xiaomi/accountsdk/request/I;

.field final YC:Lcom/xiaomi/accountsdk/request/I;

.field final Yx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/accountsdk/request/I;",
            ">;"
        }
    .end annotation
.end field

.field final Yy:Lcom/xiaomi/accountsdk/request/I;

.field final Yz:Lcom/xiaomi/accountsdk/request/I;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/V;-><init>()V

    new-instance v0, Lcom/xiaomi/accountsdk/request/I;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/I;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->Yy:Lcom/xiaomi/accountsdk/request/I;

    new-instance v0, Lcom/xiaomi/accountsdk/request/I;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/I;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->Yz:Lcom/xiaomi/accountsdk/request/I;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->Yx:Ljava/util/Map;

    new-instance v0, Lcom/xiaomi/accountsdk/request/I;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/I;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->YB:Lcom/xiaomi/accountsdk/request/I;

    new-instance v0, Lcom/xiaomi/accountsdk/request/I;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/I;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->YA:Lcom/xiaomi/accountsdk/request/I;

    new-instance v0, Lcom/xiaomi/accountsdk/request/I;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/I;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->YC:Lcom/xiaomi/accountsdk/request/I;

    return-void
.end method

.method private final afE(I)Lcom/xiaomi/accountsdk/request/I;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->Yx:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/I;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/accountsdk/request/I;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/I;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/y;->Yx:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method final afF()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x3d

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string/jumbo v0, "c_ip"

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/y;->Yy:Lcom/xiaomi/accountsdk/request/I;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/I;->YO:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "c_t"

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/y;->Yy:Lcom/xiaomi/accountsdk/request/I;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/y;->YC:Lcom/xiaomi/accountsdk/request/I;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/I;->YQ:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Lcom/xiaomi/accountsdk/request/I;->agt(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "c_r"

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/y;->Yy:Lcom/xiaomi/accountsdk/request/I;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/I;->agr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "r_t"

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/y;->YA:Lcom/xiaomi/accountsdk/request/I;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/y;->YC:Lcom/xiaomi/accountsdk/request/I;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/I;->YQ:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Lcom/xiaomi/accountsdk/request/I;->agt(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "d_ip"

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/y;->Yz:Lcom/xiaomi/accountsdk/request/I;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/I;->YO:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "d_t"

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/y;->Yz:Lcom/xiaomi/accountsdk/request/I;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/y;->YC:Lcom/xiaomi/accountsdk/request/I;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/I;->YQ:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Lcom/xiaomi/accountsdk/request/I;->agt(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "d_r"

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/y;->Yz:Lcom/xiaomi/accountsdk/request/I;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/I;->agr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->Yx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/y;->Yx:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/I;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "should no be null here"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaomi/accountsdk/request/I;->YO:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/accountsdk/request/y;->YC:Lcom/xiaomi/accountsdk/request/I;

    iget-object v5, v5, Lcom/xiaomi/accountsdk/request/I;->YQ:Ljava/lang/Long;

    invoke-virtual {v1, v5}, Lcom/xiaomi/accountsdk/request/I;->agt(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/I;->agr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "h_t"

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/y;->YB:Lcom/xiaomi/accountsdk/request/I;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/y;->YC:Lcom/xiaomi/accountsdk/request/I;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/I;->YQ:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Lcom/xiaomi/accountsdk/request/I;->agt(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "h_r"

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/y;->YB:Lcom/xiaomi/accountsdk/request/I;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/I;->agr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "all_t"

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/y;->YC:Lcom/xiaomi/accountsdk/request/I;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/y;->YC:Lcom/xiaomi/accountsdk/request/I;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/I;->YQ:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Lcom/xiaomi/accountsdk/request/I;->agt(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "all_r"

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/y;->YC:Lcom/xiaomi/accountsdk/request/I;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/I;->agr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "hdid"

    new-instance v1, Lcom/xiaomi/passport/utils/y;

    invoke-direct {v1}, Lcom/xiaomi/passport/utils/y;-><init>()V

    invoke-virtual {v1}, Lcom/xiaomi/passport/utils/y;->FZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "http://dummyurl/caLoginDiagnosis?"

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "_ver"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/accountsdk/account/j;->XC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string/jumbo v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final afG()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->Yy:Lcom/xiaomi/accountsdk/request/I;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/request/I;->YP:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->Yy:Lcom/xiaomi/accountsdk/request/I;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/request/I;->YP:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/y;->Yz:Lcom/xiaomi/accountsdk/request/I;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/request/I;->YP:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/y;->Yz:Lcom/xiaomi/accountsdk/request/I;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/request/I;->YP:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_1
    or-int/2addr v2, v0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->YB:Lcom/xiaomi/accountsdk/request/I;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/request/I;->YP:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->YB:Lcom/xiaomi/accountsdk/request/I;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/request/I;->YP:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2
    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/y;->Yx:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/I;

    iget-object v4, v0, Lcom/xiaomi/accountsdk/request/I;->YP:Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    iget-object v0, v0, Lcom/xiaomi/accountsdk/request/I;->YP:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_4
    or-int/2addr v0, v2

    move v2, v0

    goto :goto_3

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_4

    :cond_4
    return v2
.end method

.method public afH(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/y;->afE(I)Lcom/xiaomi/accountsdk/request/I;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/I;->agq(Z)V

    return-void
.end method

.method public afI(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/y;->afE(I)Lcom/xiaomi/accountsdk/request/I;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/request/I;->ags(Ljava/lang/String;)V

    return-void
.end method

.method public afJ(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/y;->afE(I)Lcom/xiaomi/accountsdk/request/I;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/I;->agq(Z)V

    return-void
.end method

.method public afK()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->Yy:Lcom/xiaomi/accountsdk/request/I;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/I;->agq(Z)V

    return-void
.end method

.method public afL(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->Yy:Lcom/xiaomi/accountsdk/request/I;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/I;->ags(Ljava/lang/String;)V

    return-void
.end method

.method public afM()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->Yy:Lcom/xiaomi/accountsdk/request/I;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/I;->agq(Z)V

    return-void
.end method

.method public afN()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->Yz:Lcom/xiaomi/accountsdk/request/I;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/I;->agq(Z)V

    return-void
.end method

.method public afO()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->Yz:Lcom/xiaomi/accountsdk/request/I;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/I;->agq(Z)V

    return-void
.end method

.method public afP(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/y;->YA:Lcom/xiaomi/accountsdk/request/I;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/request/I;->agq(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public afQ()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->YA:Lcom/xiaomi/accountsdk/request/I;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/I;->ags(Ljava/lang/String;)V

    return-void
.end method

.method public afR(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->Yz:Lcom/xiaomi/accountsdk/request/I;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/I;->ags(Ljava/lang/String;)V

    return-void
.end method

.method public afS(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->YB:Lcom/xiaomi/accountsdk/request/I;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/I;->agq(Z)V

    return-void
.end method

.method public afT()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->YB:Lcom/xiaomi/accountsdk/request/I;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/I;->ags(Ljava/lang/String;)V

    return-void
.end method

.method public afU()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->YC:Lcom/xiaomi/accountsdk/request/I;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/I;->ags(Ljava/lang/String;)V

    return-void
.end method

.method public finish()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/y;->YC:Lcom/xiaomi/accountsdk/request/I;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/y;->afG()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/I;->agq(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/y;->afF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/y;->aff(Ljava/lang/String;)V

    return-void
.end method
