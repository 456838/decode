.class public Lcom/xiaomi/micloudsdk/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apS(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/a/d;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/xiaomi/a/a/b;->aoK()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->ahw(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    const-string/jumbo v2, "_locale"

    invoke-virtual {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->ahw(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/a/a/d;->afD:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;->afQ:Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;

    invoke-static {v2, v3, v0, v1}, Lcom/xiaomi/micloudsdk/a/a;->aoO(Ljava/lang/String;Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string/jumbo v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CommonSdk"

    const-string/jumbo v3, "JSONException in getMiCloudMemberStatusInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/a/a/c;->aoN(Lorg/json/JSONObject;)Lmiui/cloud/a/d;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
