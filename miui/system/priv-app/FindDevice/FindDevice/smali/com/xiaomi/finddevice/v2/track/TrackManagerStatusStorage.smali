.class public Lcom/xiaomi/finddevice/v2/track/TrackManagerStatusStorage;
.super Ljava/lang/Object;
.source "TrackManagerStatusStorage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 33
    const-string/jumbo v4, "tmss"

    invoke-virtual {p0, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "tmss_entry"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "jsonStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 36
    .local v1, "json":Lorg/json/JSONObject;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 38
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "json":Lorg/json/JSONObject;
    move-object v1, v2

    .line 44
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 45
    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    move-result-object v4

    return-object v4

    .line 39
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lorg/json/JSONException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "Bad stroage. "

    aput-object v5, v4, v7

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_1
    return-object v6
.end method

.method public static save(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "status"    # Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    .prologue
    .line 19
    const-string/jumbo v1, "tmss"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-nez p1, :cond_0

    .line 22
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "tmss_entry"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 23
    return-void

    .line 26
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 27
    const-string/jumbo v2, "tmss_entry"

    invoke-virtual {p1}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 17
    return-void
.end method
