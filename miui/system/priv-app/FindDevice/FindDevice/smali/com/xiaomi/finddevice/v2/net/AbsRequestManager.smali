.class public abstract Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;
.super Ljava/lang/Object;
.source "AbsRequestManager.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/net/IRequestManager;


# static fields
.field protected static final API_METHOD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;",
            "Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected static final API_PATH_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final SIGN_NONCE_REQUEST_METHOD:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->GET:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->SIGN_NONCE_REQUEST_METHOD:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    sput-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    sput-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    .line 44
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->REGISTER:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 45
    const-string/jumbo v2, "/mic/find/v4/identified/device/register"

    .line 44
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->KEY:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 47
    const-string/jumbo v2, "/mic/find/v4/anonymous/device/key"

    .line 46
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->BIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v2, "/mic/find/v4.6/identified/device/bind"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->STATUS:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v2, "/mic/find/v4.6/anonymous/device/status"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->MESSAGE:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v2, "/mic/find/v4/anonymous/device/message/lock"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UNBIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v2, "/mic/find/v4.6/identified/device/unbind"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UNLOCK:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v2, "/mic/find/v4/identified/device/unlock"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->FT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v2, "/mic/find/v4.6/identified/device/fc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UPLOAD_PHONE:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 57
    const-string/jumbo v2, "/mic/find/v4/anonymous/device/phone"

    .line 56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UPLOAD_REGID:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 59
    const-string/jumbo v2, "/mic/find/v4/anonymous/device/regId"

    .line 58
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->RECEIPT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v2, "/mic/find/v4/anonymous/device/receipt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->RECEIPT_BATCH:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v2, "/mic/find/v4/anonymous/device/receipt/batch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->HDU_BIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v2, "/mic/binding/v1/identified/device/account"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->TIME:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v2, "/mic/find/v3/anonymous/time"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->LOGIN:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v2, "/mic/find/v4/identified/device/login"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->LOGOUT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v2, "/mic/find/v4/anonymous/device/logout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->REGISTER:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->POST:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->KEY:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->GET:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->BIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->POST:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->STATUS:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->GET:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->MESSAGE:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->GET:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UNBIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->POST:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UNLOCK:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->POST:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->FT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->POST:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UPLOAD_PHONE:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->POST:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UPLOAD_REGID:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->POST:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->RECEIPT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->POST:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->RECEIPT_BATCH:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->POST:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->HDU_BIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->POST:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->TIME:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->GET:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->LOGIN:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->POST:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->LOGOUT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v2, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;->POST:Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAPIMethod(Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;)Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;
    .locals 1
    .param p1, "api"    # Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .prologue
    .line 100
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_METHOD_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;

    return-object v0
.end method

.method protected getAPIPath(Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;)Ljava/lang/String;
    .locals 1
    .param p1, "api"    # Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .prologue
    .line 96
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->API_PATH_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRequestDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->getRequestInfo()Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;->requestDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->getRequestInfo()Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;->requestUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getResposeDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/net/AbsRequestManager;->getRequestInfo()Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;->responseDate:Ljava/util/Date;

    return-object v0
.end method
