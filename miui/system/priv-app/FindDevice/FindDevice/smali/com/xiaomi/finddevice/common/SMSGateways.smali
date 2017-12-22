.class public Lcom/xiaomi/finddevice/common/SMSGateways;
.super Ljava/lang/Object;
.source "SMSGateways.java"


# instance fields
.field private final mGateways:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "defGateway"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty defGateway. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/SMSGateways;->mGateways:Ljava/util/Map;

    .line 30
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/SMSGateways;->mGateways:Ljava/util/Map;

    const-string/jumbo v1, "default"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "operatorPattern"    # Ljava/lang/String;
    .param p2, "gateway"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty operatorPattern. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty gateway. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/SMSGateways;->mGateways:Ljava/util/Map;

    .line 45
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/SMSGateways;->mGateways:Ljava/util/Map;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/finddevice/common/SMSGateways;->mGateways:Ljava/util/Map;

    .line 53
    invoke-static {p1}, Lcom/xiaomi/finddevice/common/util/JSONUtil;->makeIterableKeySet(Lorg/json/JSONObject;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "k$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    .local v0, "k":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 55
    new-instance v4, Lorg/json/JSONException;

    const-string/jumbo v5, "null key here. "

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 58
    :cond_0
    invoke-static {p1, v0, v8}, Lcom/xiaomi/finddevice/common/util/JSONUtil;->getStringArray(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "v":[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 60
    new-instance v4, Lorg/json/JSONException;

    const-string/jumbo v6, "Bad string array @ key %s. "

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    :cond_1
    array-length v6, v3

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v2, v3, v4

    .line 63
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 64
    new-instance v4, Lorg/json/JSONException;

    const-string/jumbo v6, "Empty string in array @ key %s. "

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 68
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/xiaomi/finddevice/common/SMSGateways;->mGateways:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    .end local v0    # "k":Ljava/lang/String;
    .end local v3    # "v":[Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method public declared-synchronized getAvailableGateway(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v7, p0, Lcom/xiaomi/finddevice/common/SMSGateways;->mGateways:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    .local v3, "k":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 88
    .local v6, "v":[Ljava/lang/String;
    const-string/jumbo v7, "default"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 94
    :try_start_1
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 95
    .local v5, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 96
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 97
    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v7

    .line 99
    .end local v4    # "m":Ljava/util/regex/Matcher;
    .end local v5    # "p":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    const/4 v7, 0x1

    :try_start_2
    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "Bad operator pattern: %s. "

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "k":Ljava/lang/String;
    .end local v6    # "v":[Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 104
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    iget-object v7, p0, Lcom/xiaomi/finddevice/common/SMSGateways;->mGateways:Ljava/util/Map;

    const-string/jumbo v8, "default"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v7
.end method

.method public declared-synchronized toJSON()Lorg/json/JSONObject;
    .locals 5

    .prologue
    monitor-enter p0

    .line 74
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 75
    .local v2, "rst":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/xiaomi/finddevice/common/SMSGateways;->mGateways:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/xiaomi/finddevice/common/util/JSONUtil;->putStringArray(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "rst":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    .restart local v2    # "rst":Lorg/json/JSONObject;
    :cond_0
    monitor-exit p0

    .line 78
    return-object v2
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/SMSGateways;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
