.class public Lcom/xiaomi/finddevice/common/util/JSONUtil;
.super Ljava/lang/Object;
.source "JSONUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringArray(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "obj"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # [Ljava/lang/String;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "obj == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 25
    :cond_0
    if-nez p1, :cond_1

    .line 26
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "key == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 29
    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 30
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_2

    .line 31
    return-object p2

    .line 34
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 35
    .local v1, "ct":I
    new-array v3, v1, [Ljava/lang/String;

    .line 36
    .local v3, "rst":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 37
    aget-object v4, v3, v2

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_3
    return-object v3
.end method

.method public static makeIterableKeySet(Lorg/json/JSONObject;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Lcom/xiaomi/finddevice/common/util/JSONUtil$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/finddevice/common/util/JSONUtil$1;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static putStringArray(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p0, "obj"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "v"    # [Ljava/lang/String;

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "obj == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    :cond_0
    if-nez p1, :cond_1

    .line 49
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "key == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 52
    :cond_1
    if-nez p2, :cond_2

    .line 53
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    return-void

    .line 57
    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 58
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    array-length v4, p2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, p2, v3

    .line 59
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Should not happen. "

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
