.class public Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
.super Ljava/lang/Object;
.source "ServerProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;,
        Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;
    }
.end annotation


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "deviceCredentialProvider"    # Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;

    .prologue
    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    invoke-static {p1, p2}, Lcom/xiaomi/finddevice/v2/DeviceTypeBasedFactory;->obtainRequestManager(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;)Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    .line 839
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    .line 837
    return-void
.end method

.method private static checkNotRunInMainThread()V
    .locals 1

    .prologue
    .line 880
    const-string/jumbo v0, "Methods can not be called in the main thread. "

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/util/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 879
    return-void
.end method

.method private static ensureDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
        }
    .end annotation

    .prologue
    .line 865
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;

    const-string/jumbo v1, "Empty device id"

    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_0
    return-object p0
.end method

.method private static ensureResponseDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p0, "responseDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
        }
    .end annotation

    .prologue
    .line 872
    if-nez p0, :cond_0

    .line 873
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;

    const-string/jumbo v1, "Can\'t get response date. "

    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 875
    :cond_0
    return-object p0
.end method

.method private getDefaultArgs()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 857
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method private getDefaultHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 861
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 843
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "deviceCredentialProvider"    # Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;

    .prologue
    .line 848
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;-><init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;)V

    return-object v0
.end method


# virtual methods
.method public bind()Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->checkNotRunInMainThread()V

    .line 228
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v6

    .line 230
    .local v6, "deviceInfo":Lmiui/cloud/common/XDeviceInfo;
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultArgs()Ljava/util/HashMap;

    move-result-object v3

    .line 231
    .local v3, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultHeaders()Ljava/util/HashMap;

    move-result-object v4

    .line 233
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v0, "cloudsp_devId"

    iget-object v1, v6, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v0, "cloudsp_devType"

    iget-object v1, v6, Lmiui/cloud/common/XDeviceInfo;->type:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    invoke-virtual {v1}, Lmiui/cloud/common/XDeviceInfo$PhoneType;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v0, "cloudsp_model"

    iget-object v1, v6, Lmiui/cloud/common/XDeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v0, "cloudsp_keystoreType"

    iget-object v1, v6, Lmiui/cloud/common/XDeviceInfo;->keyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    invoke-virtual {v1}, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string/jumbo v0, "cloudsp_sn"

    iget-object v1, v6, Lmiui/cloud/common/XDeviceInfo;->SN:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string/jumbo v0, "cloudsp_mac"

    iget-object v1, v6, Lmiui/cloud/common/XDeviceInfo;->MAC:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string/jumbo v0, "cloudsp_imei"

    iget-object v1, v6, Lmiui/cloud/common/XDeviceInfo;->IMEI:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    .line 242
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    .line 243
    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->BIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 245
    const/16 v5, 0x14

    .line 241
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 248
    .local v9, "rst":Lorg/json/JSONObject;
    const/4 v10, 0x0

    .line 251
    .local v10, "status":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :try_start_0
    const-string/jumbo v0, "data"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->getRequestDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->ensureDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    invoke-interface {v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->getResposeDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->ensureResponseDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 250
    invoke-static {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory;->createFromServerJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 266
    .local v10, "status":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    return-object v10

    .line 261
    .local v10, "status":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :catch_0
    move-exception v8

    .line 262
    .local v8, "e":Lorg/json/JSONException;
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;

    const-string/jumbo v1, "Bad status data. "

    invoke-direct {v0, v1, v9}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v0

    .line 258
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v7

    .line 259
    .local v7, "e":Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad status data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    invoke-virtual {v7}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v0
.end method

.method public ft()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-static {}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->checkNotRunInMainThread()V

    .line 487
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v6

    .line 489
    .local v6, "deviceInfo":Lmiui/cloud/common/XDeviceInfo;
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultArgs()Ljava/util/HashMap;

    move-result-object v3

    .line 490
    .local v3, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultHeaders()Ljava/util/HashMap;

    move-result-object v4

    .line 492
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v0, "cloudsp_devId"

    iget-object v1, v6, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    .line 495
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    .line 496
    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->FT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 497
    const/16 v5, 0x14

    .line 494
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;

    .line 483
    return-void
.end method

.method public key(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;
    .locals 21
    .param p1, "fid"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const v9, 0x14ffc

    .line 152
    .local v9, "DEVICE_DOES_NOT_EXIST_CODE":I
    invoke-static {}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->checkNotRunInMainThread()V

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    invoke-static {v3}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v11

    .line 156
    .local v11, "deviceInfo":Lmiui/cloud/common/XDeviceInfo;
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultArgs()Ljava/util/HashMap;

    move-result-object v6

    .line 157
    .local v6, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultHeaders()Ljava/util/HashMap;

    move-result-object v7

    .line 159
    .local v7, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v3, "cloudsp_devId"

    iget-object v4, v11, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string/jumbo v3, "cloudsp_fid"

    move-object/from16 v0, p1

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 162
    const-string/jumbo v3, "cloudsp_service"

    move-object/from16 v0, p2

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_0
    const/16 v18, 0x0

    .line 167
    .local v18, "rst":Lorg/json/JSONObject;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    .line 169
    sget-object v5, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->KEY:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 171
    const/4 v8, 0x2

    .line 167
    invoke-interface/range {v3 .. v8}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 189
    .local v18, "rst":Lorg/json/JSONObject;
    const/16 v20, 0x0

    .line 191
    .local v20, "tzKey":Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;
    :try_start_1
    const-string/jumbo v3, "data"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 192
    .local v10, "data":Lorg/json/JSONObject;
    const-string/jumbo v3, "k"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 193
    .local v17, "es":Ljava/lang/String;
    const-string/jumbo v3, "s"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 194
    .local v19, "sign":Ljava/lang/String;
    new-instance v20, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;

    .end local v20    # "tzKey":Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 200
    .local v20, "tzKey":Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;
    return-object v20

    .line 178
    .end local v10    # "data":Lorg/json/JSONObject;
    .end local v17    # "es":Ljava/lang/String;
    .end local v19    # "sign":Ljava/lang/String;
    .end local v20    # "tzKey":Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;
    .local v18, "rst":Lorg/json/JSONObject;
    :catch_0
    move-exception v13

    .line 179
    .local v13, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    iget-object v3, v13, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->response:Lmiui/cloud/net/XHttpClient$HttpResponse;

    if-eqz v3, :cond_1

    iget-object v3, v13, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->response:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v3, v3, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 180
    iget-object v3, v13, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->response:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v3, v3, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    instance-of v3, v3, Lorg/json/JSONObject;

    .line 179
    if-eqz v3, :cond_1

    .line 181
    iget-object v3, v13, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->response:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v3, v3, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    const-string/jumbo v4, "code"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 182
    const v4, 0x14ffc

    .line 181
    if-ne v3, v4, :cond_1

    .line 183
    const/4 v3, 0x0

    return-object v3

    .line 186
    :cond_1
    throw v13

    .line 176
    .end local v13    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_1
    move-exception v12

    .line 177
    .local v12, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Should never happen"

    invoke-direct {v3, v4, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 174
    .end local v12    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catch_2
    move-exception v15

    .line 175
    .local v15, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Should never happen"

    invoke-direct {v3, v4, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 172
    .end local v15    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    :catch_3
    move-exception v14

    .line 173
    .local v14, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Should never happen"

    invoke-direct {v3, v4, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 195
    .end local v14    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    .local v18, "rst":Lorg/json/JSONObject;
    :catch_4
    move-exception v16

    .line 196
    .local v16, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;

    .line 197
    const-string/jumbo v4, "Bad key data. "

    .line 196
    move-object/from16 v0, v18

    invoke-direct {v3, v4, v0}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v3
.end method

.method public lockMessage()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-static {}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->checkNotRunInMainThread()V

    .line 366
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v6

    .line 368
    .local v6, "deviceInfo":Lmiui/cloud/common/XDeviceInfo;
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultArgs()Ljava/util/HashMap;

    move-result-object v3

    .line 369
    .local v3, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultHeaders()Ljava/util/HashMap;

    move-result-object v4

    .line 371
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v0, "cloudsp_devId"

    iget-object v1, v6, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const/4 v11, 0x0

    .line 375
    .local v11, "rst":Lorg/json/JSONObject;
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    .line 376
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    .line 377
    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->MESSAGE:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 379
    const/16 v5, 0x12

    .line 375
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 385
    .local v11, "rst":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 387
    .local v9, "message":Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;
    :try_start_1
    const-string/jumbo v0, "data"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 388
    .local v10, "messageJSON":Lorg/json/JSONObject;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "messageJSON: "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object v10, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 389
    invoke-static {v10}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 394
    .local v9, "message":Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;
    return-object v9

    .line 381
    .end local v9    # "message":Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;
    .end local v10    # "messageJSON":Lorg/json/JSONObject;
    .local v11, "rst":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 382
    .local v7, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should never happen"

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 390
    .end local v7    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    .local v9, "message":Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;
    .local v11, "rst":Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    .line 391
    .local v8, "e":Lorg/json/JSONException;
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;

    const-string/jumbo v1, "Bad message data. "

    invoke-direct {v0, v1, v11}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v0
.end method

.method public register()Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->checkNotRunInMainThread()V

    .line 73
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v9

    .line 75
    .local v9, "deviceInfo":Lmiui/cloud/common/XDeviceInfo;
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultArgs()Ljava/util/HashMap;

    move-result-object v4

    .line 76
    .local v4, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultHeaders()Ljava/util/HashMap;

    move-result-object v5

    .line 78
    .local v5, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v1, "cloudsp_devId"

    iget-object v2, v9, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v1, "cloudsp_devType"

    iget-object v2, v9, Lmiui/cloud/common/XDeviceInfo;->type:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    invoke-virtual {v2}, Lmiui/cloud/common/XDeviceInfo$PhoneType;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v1, "cloudsp_model"

    iget-object v2, v9, Lmiui/cloud/common/XDeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v1, "cloudsp_keystoreType"

    iget-object v2, v9, Lmiui/cloud/common/XDeviceInfo;->keyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    invoke-virtual {v2}, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v1, "cloudsp_sn"

    iget-object v2, v9, Lmiui/cloud/common/XDeviceInfo;->SN:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v1, "cloudsp_mac"

    iget-object v2, v9, Lmiui/cloud/common/XDeviceInfo;->MAC:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v1, "cloudsp_imei"

    iget-object v2, v9, Lmiui/cloud/common/XDeviceInfo;->IMEI:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/16 v18, 0x0

    .line 88
    .local v18, "result":Lorg/json/JSONObject;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    .line 90
    sget-object v3, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->REGISTER:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 91
    const/4 v6, 0x4

    .line 88
    invoke-interface/range {v1 .. v6}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 98
    .local v18, "result":Lorg/json/JSONObject;
    const/4 v13, 0x0

    .line 99
    .local v13, "fid":Ljava/lang/String;
    const/4 v14, 0x0

    .line 100
    .local v14, "findHost":Ljava/lang/String;
    const/16 v16, 0x0

    .line 101
    .local v16, "fprivString":Ljava/lang/String;
    const/16 v17, 0x0

    .line 103
    .local v17, "ownUserId":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v1, "data"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 104
    .local v8, "data":Lorg/json/JSONObject;
    const-string/jumbo v1, "fid"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 105
    .local v13, "fid":Ljava/lang/String;
    const-string/jumbo v1, "findHost"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 106
    .local v14, "findHost":Ljava/lang/String;
    const-string/jumbo v1, "fpriv"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 107
    .local v16, "fprivString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->getRequestUserId()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v17

    .line 113
    .local v17, "ownUserId":Ljava/lang/String;
    const-string/jumbo v1, "EC"

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/common/util/KeyTool;->hexToPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v15

    .line 114
    .local v15, "fpriv":Ljava/security/PrivateKey;
    if-nez v15, :cond_0

    .line 115
    new-instance v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;

    .line 116
    const-string/jumbo v2, "Bad private key supplied. "

    .line 115
    move-object/from16 v0, v18

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v1

    .line 94
    .end local v8    # "data":Lorg/json/JSONObject;
    .end local v13    # "fid":Ljava/lang/String;
    .end local v14    # "findHost":Ljava/lang/String;
    .end local v15    # "fpriv":Ljava/security/PrivateKey;
    .end local v16    # "fprivString":Ljava/lang/String;
    .end local v17    # "ownUserId":Ljava/lang/String;
    .local v18, "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    .line 95
    .local v10, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Should never happen"

    invoke-direct {v1, v2, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 92
    .end local v10    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catch_1
    move-exception v11

    .line 93
    .local v11, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Should never happen"

    invoke-direct {v1, v2, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 108
    .end local v11    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    .local v17, "ownUserId":Ljava/lang/String;
    .local v18, "result":Lorg/json/JSONObject;
    :catch_2
    move-exception v12

    .line 109
    .local v12, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;

    .line 110
    const-string/jumbo v2, "Bad credential data. "

    .line 109
    move-object/from16 v0, v18

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v1

    .line 119
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v8    # "data":Lorg/json/JSONObject;
    .restart local v13    # "fid":Ljava/lang/String;
    .restart local v14    # "findHost":Ljava/lang/String;
    .restart local v15    # "fpriv":Ljava/security/PrivateKey;
    .restart local v16    # "fprivString":Ljava/lang/String;
    .local v17, "ownUserId":Ljava/lang/String;
    :cond_0
    new-instance v7, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;

    invoke-direct {v7}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;-><init>()V

    .line 120
    .local v7, "ci":Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;
    iput-object v15, v7, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;->fpriv:Ljava/security/PrivateKey;

    .line 121
    iput-object v13, v7, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;->fid:Ljava/lang/String;

    .line 122
    iput-object v14, v7, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;->host:Ljava/lang/String;

    .line 123
    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;->ownUserId:Ljava/lang/String;

    .line 125
    return-object v7
.end method

.method public release()V
    .locals 1

    .prologue
    .line 852
    invoke-static {}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->checkNotRunInMainThread()V

    .line 853
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    invoke-interface {v0}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->release()V

    .line 851
    return-void
.end method

.method public reportLogin()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
        }
    .end annotation

    .prologue
    .line 784
    invoke-static {}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->checkNotRunInMainThread()V

    .line 786
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v6

    .line 788
    .local v6, "deviceInfo":Lmiui/cloud/common/XDeviceInfo;
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultArgs()Ljava/util/HashMap;

    move-result-object v3

    .line 789
    .local v3, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultHeaders()Ljava/util/HashMap;

    move-result-object v4

    .line 791
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v0, "cloudsp_devId"

    iget-object v1, v6, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    .line 794
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    .line 795
    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->LOGIN:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 796
    const/16 v5, 0x14

    .line 793
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;

    .line 782
    return-void
.end method

.method public reportLogout()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 818
    invoke-static {}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->checkNotRunInMainThread()V

    .line 820
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v6

    .line 822
    .local v6, "deviceInfo":Lmiui/cloud/common/XDeviceInfo;
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultArgs()Ljava/util/HashMap;

    move-result-object v3

    .line 823
    .local v3, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultHeaders()Ljava/util/HashMap;

    move-result-object v4

    .line 825
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v0, "cloudsp_devId"

    iget-object v1, v6, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    .line 829
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    .line 830
    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->LOGOUT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 831
    const/16 v5, 0x10

    .line 828
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    return-void

    .line 832
    :catch_0
    move-exception v7

    .line 833
    .local v7, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should never happen"

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public reportPhoneInfo(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 563
    .local p1, "phoneInfo":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->checkNotRunInMainThread()V

    .line 565
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v6

    .line 567
    .local v6, "deviceInfo":Lmiui/cloud/common/XDeviceInfo;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v12, "phoneInfoMapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 569
    .local v8, "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 570
    .local v10, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "phoneticket"

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string/jumbo v1, "imsi"

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 575
    .end local v8    # "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {v12}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONArray;

    .line 576
    .local v11, "phoneInfoJSON":Lorg/json/JSONArray;
    if-nez v11, :cond_1

    .line 577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 578
    const-string/jumbo v1, "Failed to convert the supplied phoneInfo to JSON. "

    .line 577
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultArgs()Ljava/util/HashMap;

    move-result-object v3

    .line 581
    .local v3, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultHeaders()Ljava/util/HashMap;

    move-result-object v4

    .line 583
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v0, "cloudsp_devId"

    iget-object v1, v6, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string/jumbo v0, "cloudsp_phoneInfo"

    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    .line 588
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    .line 589
    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UPLOAD_PHONE:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 590
    const/16 v5, 0x12

    .line 587
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    return-void

    .line 592
    :catch_0
    move-exception v7

    .line 593
    .local v7, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should never happen"

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public reportRegId(Ljava/lang/String;)V
    .locals 8
    .param p1, "regId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-static {}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->checkNotRunInMainThread()V

    .line 522
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v6

    .line 524
    .local v6, "deviceInfo":Lmiui/cloud/common/XDeviceInfo;
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultArgs()Ljava/util/HashMap;

    move-result-object v3

    .line 525
    .local v3, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultHeaders()Ljava/util/HashMap;

    move-result-object v4

    .line 527
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v0, "cloudsp_devId"

    iget-object v1, v6, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string/jumbo v0, "cloudsp_regId"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    .line 532
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    .line 533
    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UPLOAD_REGID:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 534
    const/16 v5, 0x12

    .line 531
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    return-void

    .line 536
    :catch_0
    move-exception v7

    .line 537
    .local v7, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should never happen"

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public sendCommandExecInfo(Ljava/lang/String;)V
    .locals 8
    .param p1, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-static {}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->checkNotRunInMainThread()V

    .line 617
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v6

    .line 619
    .local v6, "deviceInfo":Lmiui/cloud/common/XDeviceInfo;
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultArgs()Ljava/util/HashMap;

    move-result-object v3

    .line 620
    .local v3, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultHeaders()Ljava/util/HashMap;

    move-result-object v4

    .line 622
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v0, "cloudsp_devId"

    iget-object v1, v6, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string/jumbo v0, "cloudsp_receiptInfo"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    .line 627
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    .line 628
    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->RECEIPT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 629
    const/16 v5, 0x12

    .line 626
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    return-void

    .line 631
    :catch_0
    move-exception v7

    .line 632
    .local v7, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should never happen"

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public sendCommandExecInfoBatch([Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "info"    # [Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 654
    invoke-static {}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->checkNotRunInMainThread()V

    .line 656
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v7

    .line 658
    .local v7, "deviceInfo":Lmiui/cloud/common/XDeviceInfo;
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultArgs()Ljava/util/HashMap;

    move-result-object v3

    .line 659
    .local v3, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultHeaders()Ljava/util/HashMap;

    move-result-object v4

    .line 661
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v0, "cloudsp_devId"

    iget-object v1, v7, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 664
    .local v6, "arr":Lorg/json/JSONArray;
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v9, p1, v0

    .line 665
    .local v9, "s":Lorg/json/JSONObject;
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    .end local v9    # "s":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v0, "cloudsp_receipts"

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    .line 671
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    .line 672
    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->RECEIPT_BATCH:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 673
    const/16 v5, 0x12

    .line 670
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    return-void

    .line 675
    :catch_0
    move-exception v8

    .line 676
    .local v8, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should never happen"

    invoke-direct {v0, v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public status()Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->statusWithLockMessage()Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;->findDeviceStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    return-object v0
.end method

.method public statusWithLockMessage()Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-static {}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->checkNotRunInMainThread()V

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v8

    .line 293
    .local v8, "deviceInfo":Lmiui/cloud/common/XDeviceInfo;
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultArgs()Ljava/util/HashMap;

    move-result-object v4

    .line 294
    .local v4, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultHeaders()Ljava/util/HashMap;

    move-result-object v5

    .line 296
    .local v5, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v1, "cloudsp_devId"

    iget-object v2, v8, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const/4 v15, 0x0

    .line 300
    .local v15, "rst":Lorg/json/JSONObject;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    .line 302
    sget-object v3, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->STATUS:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 304
    const/16 v6, 0x12

    .line 300
    invoke-interface/range {v1 .. v6}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 310
    .local v15, "rst":Lorg/json/JSONObject;
    const/4 v12, 0x0

    .line 312
    .local v12, "findDeviceStatusWithLockMessage":Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;
    :try_start_1
    const-string/jumbo v1, "data"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 316
    .local v7, "dataObj":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->getRequestDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->ensureDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    invoke-interface {v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->getResposeDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->ensureResponseDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 314
    invoke-static {v7, v1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory;->createFromServerJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    move-result-object v16

    .line 319
    .local v16, "status":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    const-string/jumbo v1, "message"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 321
    .local v14, "msgObj":Lorg/json/JSONObject;
    if-eqz v14, :cond_0

    .line 322
    new-instance v13, Lmiui/cloud/finddevice/LockMessage;

    const-string/jumbo v1, "content"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v1, v2}, Lmiui/cloud/finddevice/LockMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .local v13, "lockMessage":Lmiui/cloud/finddevice/LockMessage;
    :goto_0
    new-instance v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;

    move-object/from16 v0, v16

    invoke-direct {v1, v0, v13}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;-><init>(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;Lmiui/cloud/finddevice/LockMessage;)V
    :try_end_1
    .catch Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 306
    .end local v7    # "dataObj":Lorg/json/JSONObject;
    .end local v12    # "findDeviceStatusWithLockMessage":Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;
    .end local v13    # "lockMessage":Lmiui/cloud/finddevice/LockMessage;
    .end local v14    # "msgObj":Lorg/json/JSONObject;
    .end local v16    # "status":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    .local v15, "rst":Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    .line 307
    .local v10, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Should never happen"

    invoke-direct {v1, v2, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 324
    .end local v10    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    .restart local v7    # "dataObj":Lorg/json/JSONObject;
    .restart local v12    # "findDeviceStatusWithLockMessage":Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;
    .restart local v14    # "msgObj":Lorg/json/JSONObject;
    .local v15, "rst":Lorg/json/JSONObject;
    .restart local v16    # "status":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :cond_0
    :try_start_2
    new-instance v13, Lmiui/cloud/finddevice/LockMessage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v13, v1, v2}, Lmiui/cloud/finddevice/LockMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v13    # "lockMessage":Lmiui/cloud/finddevice/LockMessage;
    goto :goto_0

    .line 331
    .end local v7    # "dataObj":Lorg/json/JSONObject;
    .end local v13    # "lockMessage":Lmiui/cloud/finddevice/LockMessage;
    .end local v14    # "msgObj":Lorg/json/JSONObject;
    .end local v16    # "status":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :catch_1
    move-exception v11

    .line 332
    .local v11, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;

    const-string/jumbo v2, "Bad status data. "

    invoke-direct {v1, v2, v15}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v1

    .line 328
    .end local v11    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v9

    .line 329
    .local v9, "e":Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;
    new-instance v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad status data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 330
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v15}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v1
.end method

.method public time()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 731
    invoke-static {}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->checkNotRunInMainThread()V

    .line 733
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultArgs()Ljava/util/HashMap;

    move-result-object v3

    .line 734
    .local v3, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultHeaders()Ljava/util/HashMap;

    move-result-object v4

    .line 736
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v0, "ckey"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const/4 v11, 0x0

    .line 740
    .local v11, "rst":Lorg/json/JSONObject;
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    .line 741
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    .line 742
    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->TIME:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 745
    const/4 v5, 0x0

    .line 740
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 755
    .local v11, "rst":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v0, "data"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 756
    .local v12, "timeString":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v0

    return-wide v0

    .line 750
    .end local v12    # "timeString":Ljava/lang/String;
    .local v11, "rst":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 751
    .local v6, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should never happen"

    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 748
    .end local v6    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catch_1
    move-exception v8

    .line 749
    .local v8, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should never happen"

    invoke-direct {v0, v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 746
    .end local v8    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    :catch_2
    move-exception v7

    .line 747
    .local v7, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should never happen"

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 759
    .end local v7    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    .local v11, "rst":Lorg/json/JSONObject;
    :catch_3
    move-exception v9

    .line 760
    .local v9, "e":Ljava/lang/NumberFormatException;
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;

    const-string/jumbo v1, "Bad time string. "

    invoke-direct {v0, v1, v11}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v0

    .line 757
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v10

    .line 758
    .local v10, "e":Lorg/json/JSONException;
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;

    const-string/jumbo v1, "Bad time data. "

    invoke-direct {v0, v1, v11}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v0
.end method

.method public unbind()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-static {}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->checkNotRunInMainThread()V

    .line 453
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v6

    .line 455
    .local v6, "deviceInfo":Lmiui/cloud/common/XDeviceInfo;
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultArgs()Ljava/util/HashMap;

    move-result-object v3

    .line 456
    .local v3, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultHeaders()Ljava/util/HashMap;

    move-result-object v4

    .line 458
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v0, "cloudsp_devId"

    iget-object v1, v6, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    .line 461
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    .line 462
    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UNBIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 463
    const/16 v5, 0x14

    .line 460
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;

    .line 449
    return-void
.end method

.method public unlock()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-static {}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->checkNotRunInMainThread()V

    .line 419
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v6

    .line 421
    .local v6, "deviceInfo":Lmiui/cloud/common/XDeviceInfo;
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultArgs()Ljava/util/HashMap;

    move-result-object v3

    .line 422
    .local v3, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->getDefaultHeaders()Ljava/util/HashMap;

    move-result-object v4

    .line 424
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v0, "cloudsp_devId"

    iget-object v1, v6, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mRequestManager:Lcom/xiaomi/finddevice/v2/net/IRequestManager;

    .line 427
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->mCtx:Landroid/content/Context;

    .line 428
    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UNLOCK:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 429
    const/16 v5, 0x14

    .line 426
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager;->request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;

    .line 415
    return-void
.end method
