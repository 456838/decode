.class public Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;
.super Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;
.source "RequestManagerUnion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion$RelocationException;
    }
.end annotation


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mHttpClient:Lmiui/cloud/net/XHttpClient;

.field private mSecurityManager:Lcom/xiaomi/finddevice/v2/net/SecurityManager;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private tlRequestInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lmiui/cloud/net/XHttpClient;Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "httpClient"    # Lmiui/cloud/net/XHttpClient;
    .param p3, "deviceCredentialProvider"    # Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->mCtx:Landroid/content/Context;

    .line 42
    invoke-static {p1, p3}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->obtain(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;)Lcom/xiaomi/finddevice/v2/net/SecurityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->mSecurityManager:Lcom/xiaomi/finddevice/v2/net/SecurityManager;

    .line 43
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->mHttpClient:Lmiui/cloud/net/XHttpClient;

    .line 44
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->tlRequestInfo:Ljava/lang/ThreadLocal;

    .line 46
    const-string/jumbo v0, "com.xiaomi.findevice.RequestManagerUnion"

    .line 47
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 40
    return-void
.end method

.method private encodeGetParamsToUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
        }
    .end annotation

    .prologue
    .line 380
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v3, "kvPairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 383
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "utf-8"

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 384
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "utf-8"

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 383
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;

    invoke-direct {v4, v0}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 389
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getLastSuccessHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "last_success_host"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNonce(Landroid/content/Context;)Ljava/lang/String;
    .locals 18
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v12

    .line 413
    .local v12, "deviceInfo":Lmiui/cloud/common/XDeviceInfo;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 414
    .local v7, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 416
    .local v8, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v1, "cloudsp_devId"

    iget-object v2, v12, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const/16 v17, 0x0

    .line 422
    .local v17, "rst":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "https://"

    .line 423
    const-string/jumbo v5, "/mic/find/v4/anonymous/challenge"

    sget-object v6, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->SIGN_NONCE_REQUEST_METHOD:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    .line 422
    const/4 v4, 0x0

    .line 425
    const/16 v9, 0xa

    .line 426
    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 420
    invoke-direct/range {v1 .. v11}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->requestWithInplaceRetry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;Ljava/util/Map;Ljava/util/Map;IZZ)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion$RelocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 434
    .local v17, "rst":Lorg/json/JSONObject;
    const/16 v16, 0x0

    .line 436
    .local v16, "nonce":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v1, "data"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "nonce"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v16

    .line 441
    .local v16, "nonce":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v16, v1, v2

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 443
    return-object v16

    .line 429
    .end local v16    # "nonce":Ljava/lang/String;
    .local v17, "rst":Lorg/json/JSONObject;
    :catch_0
    move-exception v13

    .line 430
    .local v13, "e":Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion$RelocationException;
    new-instance v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;

    new-instance v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$UnexpectedRelocationException;

    .line 431
    const-string/jumbo v3, "API nonce relocation not expected. "

    .line 430
    invoke-direct {v2, v3}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$UnexpectedRelocationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 427
    .end local v13    # "e":Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion$RelocationException;
    :catch_1
    move-exception v14

    .line 428
    .local v14, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Should never happen"

    invoke-direct {v1, v2, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 437
    .end local v14    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    .local v16, "nonce":Ljava/lang/String;
    .local v17, "rst":Lorg/json/JSONObject;
    :catch_2
    move-exception v15

    .line 438
    .local v15, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;

    const-string/jumbo v2, "Bad nonce data. "

    move-object/from16 v0, v17

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v1
.end method

.method private static logRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lmiui/cloud/net/XHttpClient$HttpResponse;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p4, "response"    # Lmiui/cloud/net/XHttpClient$HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/cloud/net/XHttpClient$HttpResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 453
    const-string/jumbo v1, "URL: %s, method: %s, headers: %s, args: %s, response: %s. "

    .line 452
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 454
    aput-object p0, v2, v4

    aput-object p1, v2, v5

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    .line 452
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "log":Ljava/lang/String;
    const-string/jumbo v1, "\n"

    const-string/jumbo v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 458
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 451
    return-void
.end method

.method public static obtain(Landroid/content/Context;Lmiui/cloud/net/XHttpClient;Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;)Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "httpClient"    # Lmiui/cloud/net/XHttpClient;
    .param p2, "deviceCredentialProvider"    # Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;

    .prologue
    .line 56
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;-><init>(Landroid/content/Context;Lmiui/cloud/net/XHttpClient;Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;)V

    return-object v0
.end method

.method private requestUserRelocatedHost()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v2, 0x0

    .line 120
    .local v2, "relocatedHost":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "find.api.micloud.xiaomi.net"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/xiaomi/micloudsdk/utils/CloudUtils;->getRelocatedHost(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 132
    .local v2, "relocatedHost":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 135
    new-instance v3, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;

    const-string/jumbo v4, "Host find.api.micloud.xiaomi.net not found in the relocated host list. "

    invoke-direct {v3, v4}, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    .local v2, "relocatedHost":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 123
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/io/IOException;

    if-eqz v3, :cond_0

    .line 124
    check-cast v0, Ljava/io/IOException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 129
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    new-instance v3, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;

    const-string/jumbo v4, "Get relocated host list failed. "

    invoke-direct {v3, v4, v1}, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 138
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "e":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    .local v2, "relocatedHost":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private requestWithInplaceRetry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;IZZ)Lorg/json/JSONObject;
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "api"    # Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;
    .param p7, "requestFlag"    # I
    .param p8, "saveHostOnSuccess"    # Z
    .param p9, "needTimeCorrection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;IZZ)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion$RelocationException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
        }
    .end annotation

    .prologue
    .line 199
    .local p5, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0, p4}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->getAPIPath(Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {p0, p4}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->getAPIMethod(Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;)Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    move-result-object v5

    .local v5, "method":Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 202
    invoke-direct/range {v0 .. v10}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->requestWithInplaceRetry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;Ljava/util/Map;Ljava/util/Map;IZZ)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private requestWithInplaceRetry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;Ljava/util/Map;Ljava/util/Map;IZZ)Lorg/json/JSONObject;
    .locals 27
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "method"    # Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;
    .param p8, "requestFlag"    # I
    .param p9, "saveHostOnSuccess"    # Z
    .param p10, "needTimeCorrection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;IZZ)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion$RelocationException;
        }
    .end annotation

    .prologue
    .line 219
    .local p6, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p6, :cond_0

    .line 220
    new-instance v24, Ljava/lang/NullPointerException;

    const-string/jumbo v25, "args == null"

    invoke-direct/range {v24 .. v25}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 223
    :cond_0
    if-nez p7, :cond_1

    .line 224
    new-instance v24, Ljava/lang/NullPointerException;

    const-string/jumbo v25, "headers == null"

    invoke-direct/range {v24 .. v25}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 227
    :cond_1
    const/16 v18, 0x0

    .line 228
    .local v18, "response":Lmiui/cloud/net/XHttpClient$HttpResponse;
    const/4 v13, 0x0

    .end local v18    # "response":Lmiui/cloud/net/XHttpClient$HttpResponse;
    .local v13, "i":I
    :goto_0
    const/16 v24, 0x3

    move/from16 v0, v24

    if-ge v13, v0, :cond_1f

    .line 230
    new-instance v4, Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 231
    .local v4, "argsCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v12, "headersCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 233
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 234
    .local v14, "k":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    .line 235
    .local v23, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v14, :cond_2

    new-instance v24, Ljava/lang/NullPointerException;

    const-string/jumbo v25, "a null header key. "

    invoke-direct/range {v24 .. v25}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 236
    :cond_2
    if-nez v23, :cond_3

    new-instance v24, Ljava/lang/NullPointerException;

    const-string/jumbo v25, "a null header value. "

    invoke-direct/range {v24 .. v25}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 237
    :cond_3
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v24

    invoke-virtual {v12, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 240
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v14    # "k":Ljava/lang/String;
    .end local v23    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/16 v17, 0x0

    .line 241
    .local v17, "requestUserId":Ljava/lang/String;
    const/16 v16, 0x0

    .line 243
    .local v16, "requestDeviceCredentail":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    and-int/lit8 v24, p8, 0x2

    if-eqz v24, :cond_5

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->mSecurityManager:Lcom/xiaomi/finddevice/v2/net/SecurityManager;

    move-object/from16 v24, v0

    invoke-virtual/range {p5 .. p5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->name()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v4, v12}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->passportMarkIfPossible(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v17

    .line 247
    .end local v17    # "requestUserId":Ljava/lang/String;
    :cond_5
    and-int/lit8 v24, p8, 0x4

    if-eqz v24, :cond_6

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->mSecurityManager:Lcom/xiaomi/finddevice/v2/net/SecurityManager;

    move-object/from16 v24, v0

    invoke-virtual/range {p5 .. p5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->name()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v4, v12}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->passportSign(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v17

    .line 251
    :cond_6
    and-int/lit8 v24, p8, 0x8

    if-eqz v24, :cond_7

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->mSecurityManager:Lcom/xiaomi/finddevice/v2/net/SecurityManager;

    move-object/from16 v24, v0

    invoke-virtual/range {p5 .. p5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->name()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v4, v12}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->deviceMark(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    move-result-object v16

    .line 255
    .end local v16    # "requestDeviceCredentail":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    :cond_7
    and-int/lit8 v24, p8, 0x10

    if-eqz v24, :cond_8

    .line 256
    const-string/jumbo v24, "cloudsp_nonce"

    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->getNonce(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->mSecurityManager:Lcom/xiaomi/finddevice/v2/net/SecurityManager;

    move-object/from16 v24, v0

    invoke-virtual/range {p5 .. p5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->name()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v4, v12}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->deviceSign(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    move-result-object v16

    .line 261
    :cond_8
    if-nez p3, :cond_9

    if-eqz v16, :cond_9

    .line 262
    invoke-interface/range {v16 .. v16}, Lcom/xiaomi/finddevice/v2/IDeviceCredential;->getHost()Ljava/lang/String;

    move-result-object p3

    .line 264
    :cond_9
    if-nez p3, :cond_a

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->getLastSuccessHost()Ljava/lang/String;

    move-result-object p3

    .line 267
    :cond_a
    if-nez p3, :cond_b

    .line 268
    const-string/jumbo p3, "find.api.micloud.xiaomi.net"

    .line 271
    :cond_b
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 273
    .local v22, "url":Ljava/lang/String;
    sget-object v24, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->GET:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->encodeGetParamsToUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v22

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->mHttpClient:Lmiui/cloud/net/XHttpClient;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Lmiui/cloud/net/XHttpClient;->syncGet(Ljava/lang/String;Ljava/util/Map;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object v18

    .line 276
    .local v18, "response":Lmiui/cloud/net/XHttpClient$HttpResponse;
    const-string/jumbo v24, "GET"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v18

    invoke-static {v0, v1, v12, v2, v3}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->logRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lmiui/cloud/net/XHttpClient$HttpResponse;)V

    .line 285
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->tlRequestInfo:Ljava/lang/ThreadLocal;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->headers:Ljava/util/Map;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;->responseHeaders:Ljava/util/Map;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->tlRequestInfo:Ljava/lang/ThreadLocal;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->date:Ljava/util/Date;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;->responseDate:Ljava/util/Date;

    .line 288
    move-object/from16 v0, v18

    iget v0, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    move/from16 v24, v0

    const/16 v25, 0x191

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->mSecurityManager:Lcom/xiaomi/finddevice/v2/net/SecurityManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->invalidateLastUsedAccountAuthToken()V

    .line 228
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 277
    .end local v18    # "response":Lmiui/cloud/net/XHttpClient$HttpResponse;
    :cond_c
    sget-object v24, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->POST:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->mHttpClient:Lmiui/cloud/net/XHttpClient;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v12, v4}, Lmiui/cloud/net/XHttpClient;->syncPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object v18

    .line 279
    .restart local v18    # "response":Lmiui/cloud/net/XHttpClient$HttpResponse;
    const-string/jumbo v24, "POST"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-static {v0, v1, v12, v4, v2}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->logRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lmiui/cloud/net/XHttpClient$HttpResponse;)V

    goto :goto_2

    .line 281
    .end local v18    # "response":Lmiui/cloud/net/XHttpClient$HttpResponse;
    :cond_d
    new-instance v24, Ljava/lang/UnsupportedOperationException;

    .line 282
    const-string/jumbo v25, "method not supported. "

    .line 281
    invoke-direct/range {v24 .. v25}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 294
    .restart local v18    # "response":Lmiui/cloud/net/XHttpClient$HttpResponse;
    :cond_e
    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/io/IOException;

    move/from16 v24, v0

    if-eqz v24, :cond_10

    .line 295
    move-object/from16 v0, v18

    iget-object v6, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    check-cast v6, Ljava/io/IOException;

    .line 296
    .local v6, "e":Ljava/io/IOException;
    if-eqz p10, :cond_f

    .line 297
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/xiaomi/finddevice/common/util/TimeUtil;->correctTimeIfNecessaryOnNetworkError(Landroid/content/Context;Ljava/io/IOException;)V

    .line 299
    :cond_f
    throw v6

    .line 302
    .end local v6    # "e":Ljava/io/IOException;
    :cond_10
    move-object/from16 v0, v18

    iget v0, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    move/from16 v24, v0

    const/16 v25, 0x1f7

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    .line 303
    new-instance v24, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;

    new-instance v25, Lcom/xiaomi/finddevice/v2/net/IRequestManager$ServiceUnavailableException;

    invoke-direct/range {v25 .. v25}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$ServiceUnavailableException;-><init>()V

    invoke-direct/range {v24 .. v25}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;-><init>(Ljava/lang/Exception;)V

    throw v24

    .line 306
    :cond_11
    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    move-object/from16 v24, v0

    if-nez v24, :cond_12

    move-object/from16 v0, v18

    iget v0, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    move/from16 v24, v0

    const/16 v25, 0xc8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_13

    .line 307
    :cond_12
    new-instance v24, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;-><init>(Lmiui/cloud/net/XHttpClient$HttpResponse;)V

    throw v24

    .line 310
    :cond_13
    move-object/from16 v0, v18

    iget-object v5, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    .line 311
    .local v5, "content":Lorg/json/JSONObject;
    const/16 v20, -0x1

    .line 313
    .local v20, "rstCode":I
    :try_start_0
    const-string/jumbo v24, "code"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    .line 318
    if-eqz v20, :cond_1b

    .line 320
    const v24, 0x14ffe

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 321
    const/4 v15, 0x0

    .line 323
    .local v15, "relocationHost":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v24, "info"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .line 328
    .local v15, "relocationHost":Ljava/lang/String;
    new-instance v24, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion$RelocationException;

    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion$RelocationException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 314
    .end local v15    # "relocationHost":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 315
    .local v8, "e":Lorg/json/JSONException;
    new-instance v24, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;

    const-string/jumbo v25, "Bad code in the result JSON"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v24

    .line 324
    .end local v8    # "e":Lorg/json/JSONException;
    .local v15, "relocationHost":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 325
    .restart local v8    # "e":Lorg/json/JSONException;
    new-instance v24, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;

    .line 326
    const-string/jumbo v25, "SERVER requires relocating, but no host provided. "

    .line 325
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v24

    .line 332
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v15    # "relocationHost":Ljava/lang/String;
    :cond_14
    const v24, 0x14ff6

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_18

    .line 333
    const v24, 0x14ffc

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    const/16 v21, 0x1

    .line 335
    .local v21, "rstCodeSignatureError":Z
    :goto_4
    if-eqz v21, :cond_15

    if-eqz v16, :cond_15

    .line 336
    invoke-interface/range {v16 .. v16}, Lcom/xiaomi/finddevice/v2/IDeviceCredential;->onSignError()V

    .line 339
    :cond_15
    const-string/jumbo v24, "retriable"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_1a

    .line 340
    const/16 v19, -0x1

    .line 341
    .local v19, "retryAfter":I
    const-string/jumbo v24, "data"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 342
    .local v11, "errorData":Lorg/json/JSONObject;
    if-eqz v11, :cond_16

    .line 343
    const-string/jumbo v24, "retryAfter"

    const/16 v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    .line 345
    :cond_16
    const/16 v24, -0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    const/16 v24, 0x1f7

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    .line 346
    const/16 v19, 0x12c

    .line 348
    :cond_17
    new-instance v24, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;-><init>(Lmiui/cloud/net/XHttpClient$HttpResponse;I)V

    throw v24

    .line 332
    .end local v11    # "errorData":Lorg/json/JSONObject;
    .end local v19    # "retryAfter":I
    .end local v21    # "rstCodeSignatureError":Z
    :cond_18
    const/16 v21, 0x1

    .restart local v21    # "rstCodeSignatureError":Z
    goto :goto_4

    .line 333
    .end local v21    # "rstCodeSignatureError":Z
    :cond_19
    const/16 v21, 0x0

    .restart local v21    # "rstCodeSignatureError":Z
    goto :goto_4

    .line 353
    :cond_1a
    const/16 v24, 0x1

    :try_start_2
    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const-string/jumbo v25, "Wait to retry..."

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v24 .. v24}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 354
    const-wide/16 v24, 0x3e8

    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 355
    :catch_2
    move-exception v7

    .line 356
    .local v7, "e":Ljava/lang/InterruptedException;
    new-instance v24, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;

    .line 357
    const-string/jumbo v25, "Interuptted while waiting for retry. "

    .line 356
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;-><init>(Ljava/lang/String;Lmiui/cloud/net/XHttpClient$HttpResponse;)V

    throw v24

    .line 362
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .end local v21    # "rstCodeSignatureError":Z
    :cond_1b
    if-eqz v17, :cond_1c

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->tlRequestInfo:Ljava/lang/ThreadLocal;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;->requestUserId:Ljava/lang/String;

    .line 365
    :cond_1c
    if-eqz v16, :cond_1d

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->tlRequestInfo:Ljava/lang/ThreadLocal;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;

    invoke-interface/range {v16 .. v16}, Lcom/xiaomi/finddevice/v2/IDeviceCredential;->getFId()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;->requestDeviceId:Ljava/lang/String;

    .line 369
    :cond_1d
    if-eqz p9, :cond_1e

    .line 370
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->saveLastSuccessHost(Ljava/lang/String;)V

    .line 372
    :cond_1e
    return-object v5

    .line 375
    .end local v4    # "argsCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "content":Lorg/json/JSONObject;
    .end local v10    # "entry$iterator":Ljava/util/Iterator;
    .end local v12    # "headersCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v18    # "response":Lmiui/cloud/net/XHttpClient$HttpResponse;
    .end local v20    # "rstCode":I
    .end local v22    # "url":Ljava/lang/String;
    :cond_1f
    new-instance v24, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;

    const-string/jumbo v25, "Inplace retry limit exceeded. "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;-><init>(Ljava/lang/String;Lmiui/cloud/net/XHttpClient$HttpResponse;)V

    throw v24
.end method

.method private requestWithRelocationSupport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;IZZ)Lorg/json/JSONObject;
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "api"    # Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;
    .param p7, "requestFlag"    # I
    .param p8, "saveHostOnSuccess"    # Z
    .param p9, "needTimeCorrection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;IZZ)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    .local p5, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0, p4}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->getAPIPath(Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {p0, p4}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->getAPIMethod(Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;)Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    move-result-object v5

    .local v5, "method":Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 155
    invoke-direct/range {v0 .. v10}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->requestWithRelocationSupport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;Ljava/util/Map;Ljava/util/Map;IZZ)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private requestWithRelocationSupport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;Ljava/util/Map;Ljava/util/Map;IZZ)Lorg/json/JSONObject;
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "method"    # Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;
    .param p8, "requestFlag"    # I
    .param p9, "saveHostOnSuccess"    # Z
    .param p10, "needTimeCorrection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;IZZ)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    .local p6, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v3, p3

    .line 173
    .local v3, "relocationHost":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/4 v0, 0x3

    if-ge v12, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 175
    :try_start_0
    invoke-direct/range {v0 .. v10}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->requestWithInplaceRetry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;Ljava/util/Map;Ljava/util/Map;IZZ)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion$RelocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 179
    :catch_0
    move-exception v11

    .line 180
    .local v11, "e":Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion$RelocationException;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Need relocation"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object v11, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 181
    iget-object v3, v11, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion$RelocationException;->host:Ljava/lang/String;

    .line 173
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 185
    .end local v11    # "e":Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion$RelocationException;
    :cond_0
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;

    new-instance v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$MaxRelocationCountExceededException;

    invoke-direct {v1}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$MaxRelocationCountExceededException;-><init>()V

    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method private saveLastSuccessHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_success_host"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 392
    return-void
.end method


# virtual methods
.method public getRequestInfo()Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->tlRequestInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->mSecurityManager:Lcom/xiaomi/finddevice/v2/net/SecurityManager;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/net/SecurityManager;->release()V

    .line 60
    return-void
.end method

.method public request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;
    .locals 22
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "api"    # Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;
    .param p5, "requestFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;I)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 73
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->tlRequestInfo:Ljava/lang/ThreadLocal;

    new-instance v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;

    invoke-direct {v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 75
    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->REGISTER:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->KEY:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_2

    .line 77
    :cond_0
    const/4 v4, 0x0

    .line 78
    .local v4, "host":Ljava/lang/String;
    const/4 v3, 0x0

    .line 79
    .local v3, "protocol":Ljava/lang/String;
    const/4 v10, 0x0

    .line 80
    .local v10, "needTimeCorrection":Z
    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->REGISTER:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_3

    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->requestUserRelocatedHost()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "host":Ljava/lang/String;
    const-string/jumbo v3, "https://"

    .line 83
    .local v3, "protocol":Ljava/lang/String;
    const/4 v10, 0x1

    .line 98
    .end local v3    # "protocol":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 95
    :try_start_0
    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->requestWithInplaceRetry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;IZZ)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion$RelocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 75
    .end local v10    # "needTimeCorrection":Z
    :cond_2
    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->TIME:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_0

    .line 107
    const-string/jumbo v13, "https://"

    const/4 v14, 0x0

    .line 108
    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move/from16 v18, p5

    .line 105
    invoke-direct/range {v11 .. v20}, Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion;->requestWithRelocationSupport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;IZZ)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1

    .line 84
    .local v3, "protocol":Ljava/lang/String;
    .local v4, "host":Ljava/lang/String;
    .restart local v10    # "needTimeCorrection":Z
    :cond_3
    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->KEY:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_4

    .line 85
    const-string/jumbo v4, "find.api.micloud.xiaomi.net"

    .line 86
    .local v4, "host":Ljava/lang/String;
    const-string/jumbo v3, "https://"

    .line 87
    .local v3, "protocol":Ljava/lang/String;
    const/4 v10, 0x1

    goto :goto_0

    .line 88
    .local v3, "protocol":Ljava/lang/String;
    .local v4, "host":Ljava/lang/String;
    :cond_4
    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->TIME:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 89
    const-string/jumbo v4, "findapi.micloud.xiaomi.net"

    .line 90
    .local v4, "host":Ljava/lang/String;
    const-string/jumbo v3, "http://"

    .line 91
    .local v3, "protocol":Ljava/lang/String;
    const/4 v10, 0x0

    goto :goto_0

    .line 99
    .end local v3    # "protocol":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 100
    .local v21, "e":Lcom/xiaomi/finddevice/v2/net/RequestManagerUnion$RelocationException;
    new-instance v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;

    new-instance v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$UnexpectedRelocationException;

    .line 101
    const-string/jumbo v5, "API REGISTER relocation not expected. "

    .line 100
    invoke-direct {v2, v5}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$UnexpectedRelocationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
