.class public Lcom/xiaomi/a/a/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aoL(Lmiui/cloud/a/a;Lorg/json/JSONObject;)Lmiui/cloud/a/c;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "Name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "LocalizedName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "Used"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v0, Lmiui/cloud/a/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmiui/cloud/a/c;-><init>(Lmiui/cloud/a/a;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static aoM(Lmiui/cloud/a/a;Lorg/json/JSONObject;)Lmiui/cloud/a/b;
    .locals 14

    const-string/jumbo v0, "Total"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v0, "Used"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v0, "Warn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "YearlyPackageType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "YearlyPackageSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string/jumbo v0, "YearlyPackageCreateTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string/jumbo v0, "YearlyPackageExpireTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    new-instance v0, Lmiui/cloud/a/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    invoke-direct/range {v0 .. v13}, Lmiui/cloud/a/b;-><init>(Lmiui/cloud/a/a;JJLjava/lang/String;Ljava/lang/String;JJJ)V

    const-string/jumbo v1, "ItemInfoList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/xiaomi/a/a/c;->aoL(Lmiui/cloud/a/a;Lorg/json/JSONObject;)Lmiui/cloud/a/c;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Lmiui/cloud/a/b;->aHf(Lmiui/cloud/a/c;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static aoN(Lorg/json/JSONObject;)Lmiui/cloud/a/d;
    .locals 3

    new-instance v0, Lmiui/cloud/a/d;

    const-string/jumbo v1, "vipName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "level"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/cloud/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
