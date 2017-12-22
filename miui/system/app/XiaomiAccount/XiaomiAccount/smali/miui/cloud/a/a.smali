.class public Lmiui/cloud/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private atc:Lmiui/cloud/a/b;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/cloud/a/a;->mUserId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public aHd()Lmiui/cloud/a/b;
    .locals 1

    iget-object v0, p0, Lmiui/cloud/a/a;->atc:Lmiui/cloud/a/b;

    return-object v0
.end method

.method public aHe(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MiCloudStatusInfo"

    const-string/jumbo v1, "parseQuotaString() quota is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lmiui/cloud/a/a;->atc:Lmiui/cloud/a/b;

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/xiaomi/a/a/c;->aoM(Lmiui/cloud/a/a;Lorg/json/JSONObject;)Lmiui/cloud/a/b;

    move-result-object v0

    iput-object v0, p0, Lmiui/cloud/a/a;->atc:Lmiui/cloud/a/b;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "MiCloudStatusInfo"

    const-string/jumbo v1, "catch JSONException in parseQuotaString()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lmiui/cloud/a/a;->atc:Lmiui/cloud/a/b;

    goto :goto_0
.end method
