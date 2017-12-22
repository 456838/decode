.class final Lcom/xiaomi/finddevice/v2/FindDeviceStorage$3;
.super Ljava/lang/Object;
.source "FindDeviceStorage.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/PersistentStroage$IDataHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->getSoftwareDeviceCredential(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$deviceCredential:Lmiui/cloud/common/XWrapper;


# direct methods
.method constructor <init>(Lmiui/cloud/common/XWrapper;)V
    .locals 0

    .prologue
    .line 194
    .local p1, "val$deviceCredential":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;>;"
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$3;->val$deviceCredential:Lmiui/cloud/common/XWrapper;

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
    .line 198
    const/4 v1, 0x0

    .line 200
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "json":Lorg/json/JSONObject;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .local v1, "json":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$3;->val$deviceCredential:Lmiui/cloud/common/XWrapper;

    .line 208
    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    move-result-object v3

    .line 207
    invoke-virtual {v2, v3}, Lmiui/cloud/common/XWrapper;->set(Ljava/lang/Object;)V

    .line 209
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$3;->val$deviceCredential:Lmiui/cloud/common/XWrapper;

    invoke-virtual {v2}, Lmiui/cloud/common/XWrapper;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 211
    new-instance v2, Lcom/xiaomi/finddevice/common/PersistentStroage$BadDataException;

    .line 212
    const-string/jumbo v3, "Bad device credential data. "

    .line 211
    invoke-direct {v2, v3}, Lcom/xiaomi/finddevice/common/PersistentStroage$BadDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/xiaomi/finddevice/common/PersistentStroage$BadDataException;

    .line 204
    const-string/jumbo v3, "Bad device credential data. "

    .line 203
    invoke-direct {v2, v3, v0}, Lcom/xiaomi/finddevice/common/PersistentStroage$BadDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 197
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method
