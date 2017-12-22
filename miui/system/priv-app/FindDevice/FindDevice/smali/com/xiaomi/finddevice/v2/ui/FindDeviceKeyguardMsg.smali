.class public Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;
.super Ljava/lang/Object;
.source "FindDeviceKeyguardMsg.java"


# instance fields
.field public final phone:Ljava/lang/String;

.field public final words:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "words"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;->words:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;->phone:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 12
    const-string/jumbo v2, "content"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    .local v1, "words":Ljava/lang/String;
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "phone":Ljava/lang/String;
    new-instance v2, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;

    invoke-direct {v2, v1, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 24
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "content"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;->words:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string/jumbo v2, "phone"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-object v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Should not happen. "

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
