.class final Lcom/xiaomi/finddevice/v2/FindDeviceStorage$4;
.super Ljava/lang/Object;
.source "FindDeviceStorage.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/PersistentStroage$IDataHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->getStatus(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$status:Lmiui/cloud/common/XWrapper;


# direct methods
.method constructor <init>(Lmiui/cloud/common/XWrapper;)V
    .locals 0

    .prologue
    .line 298
    .local p1, "val$status":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<Lcom/xiaomi/finddevice/v2/FindDeviceStatus;>;"
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$4;->val$status:Lmiui/cloud/common/XWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleData([B)V
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PersistentStroage$BadDataException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v1, 0x0

    .line 303
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "json":Lorg/json/JSONObject;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .local v1, "json":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$4;->val$status:Lmiui/cloud/common/XWrapper;

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/cloud/common/XWrapper;->set(Ljava/lang/Object;)V

    .line 300
    return-void

    .line 304
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/xiaomi/finddevice/common/PersistentStroage$BadDataException;

    const-string/jumbo v3, "Bad status data. "

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/finddevice/common/PersistentStroage$BadDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
