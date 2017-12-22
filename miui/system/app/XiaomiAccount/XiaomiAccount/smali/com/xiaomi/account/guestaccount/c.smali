.class public Lcom/xiaomi/account/guestaccount/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/accountsdk/guestaccount/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/e;
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, v0, v1, v2}, Lcom/xiaomi/accountsdk/request/m;->aek(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/f;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/f;->adS()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/request/f;->adT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/e;

    const/16 v1, 0x193

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/xiaomi/accountsdk/guestaccount/e;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/e;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/f;->adV()I

    move-result v3

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/f;->adZ()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "extension-pragma"

    invoke-virtual {v1, v5}, Lcom/xiaomi/accountsdk/request/f;->adT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/xiaomi/accountsdk/guestaccount/e;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/e;

    const/16 v1, 0x191

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/xiaomi/accountsdk/guestaccount/e;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public jt(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/guestaccount/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/accountsdk/guestaccount/e;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, p2, p3, v0}, Lcom/xiaomi/accountsdk/request/m;->aeo(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/e;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/f;->adV()I

    move-result v2

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/f;->adZ()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "extension-pragma"

    invoke-virtual {v0, v4}, Lcom/xiaomi/accountsdk/request/f;->adT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/xiaomi/accountsdk/guestaccount/e;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/e;

    const/16 v1, 0x191

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/xiaomi/accountsdk/guestaccount/e;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/e;

    const/16 v1, 0x193

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/xiaomi/accountsdk/guestaccount/e;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method
