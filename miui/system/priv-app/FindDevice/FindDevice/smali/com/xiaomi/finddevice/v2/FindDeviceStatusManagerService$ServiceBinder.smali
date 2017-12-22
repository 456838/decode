.class Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;
.super Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;
.source "FindDeviceStatusManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# static fields
.field private static final COMMON_EXCEPTION_ERROR_CODE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Exception;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 271
    sput-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->COMMON_EXCEPTION_ERROR_CODE_MAP:Ljava/util/Map;

    .line 274
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->COMMON_EXCEPTION_ERROR_CODE_MAP:Ljava/util/Map;

    const-class v1, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;

    .line 275
    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 274
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->COMMON_EXCEPTION_ERROR_CODE_MAP:Ljava/util/Map;

    const-class v1, Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;

    .line 277
    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 276
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->COMMON_EXCEPTION_ERROR_CODE_MAP:Ljava/util/Map;

    const-class v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;

    .line 279
    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 278
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->COMMON_EXCEPTION_ERROR_CODE_MAP:Ljava/util/Map;

    const-class v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;

    .line 281
    const/4 v2, -0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 280
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->COMMON_EXCEPTION_ERROR_CODE_MAP:Ljava/util/Map;

    const-class v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;

    .line 283
    const/4 v2, -0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 282
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->COMMON_EXCEPTION_ERROR_CODE_MAP:Ljava/util/Map;

    const-class v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;

    .line 285
    const/4 v2, -0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 284
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->COMMON_EXCEPTION_ERROR_CODE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/InterruptedException;

    .line 287
    const/16 v2, -0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 286
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->COMMON_EXCEPTION_ERROR_CODE_MAP:Ljava/util/Map;

    const-class v1, Ljava/io/IOException;

    .line 289
    const/4 v2, -0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 288
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;)V
    .locals 0
    .param p1, "appContent"    # Landroid/content/Context;
    .param p2, "findDeviceStatusManagerInternal"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    .prologue
    .line 55
    invoke-direct {p0}, Lmiui/cloud/finddevice/IFindDeviceStatusManager$Stub;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    .line 55
    return-void
.end method

.method private MakeFindDeviceOperationResult(Ljava/lang/Exception;)Lmiui/cloud/finddevice/FindDeviceOperationResult;
    .locals 10
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 238
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/xiaomi/finddevice/common/util/ErrorUtil;->failureExceptionTofailureCauseString(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "errorMsg":Ljava/lang/String;
    instance-of v4, p1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 241
    check-cast v4, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;

    invoke-virtual {v4}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->getCode()I

    move-result v3

    .line 242
    .local v3, "operationFailedCode":I
    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "Operation failed error result made: %s, %s"

    new-array v6, v6, [Ljava/lang/Object;

    .line 243
    aput-object p1, v6, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 242
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 244
    invoke-static {v3, v1}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->buildOperationFailedErrorResult(ILjava/lang/String;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v4

    return-object v4

    .line 248
    .end local v3    # "operationFailedCode":I
    :cond_0
    const/4 v0, 0x0

    .line 249
    .local v0, "errno":Ljava/lang/Integer;
    invoke-virtual {p1}, Ljava/lang/Exception;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 250
    .end local v0    # "errno":Ljava/lang/Integer;
    .local v2, "expClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 251
    sget-object v4, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->COMMON_EXCEPTION_ERROR_CODE_MAP:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 252
    .local v0, "errno":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 255
    .end local v0    # "errno":Ljava/lang/Integer;
    :cond_1
    if-nez v0, :cond_2

    .line 256
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 259
    :cond_2
    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "Common error result made: %s, %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v9

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 260
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, v1}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->buildCommonErrorResult(ILjava/lang/String;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v4

    return-object v4
.end method

.method private static getCallerString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    const-string/jumbo v1, " PID "

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    const-string/jumbo v1, ". "

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()Lmiui/cloud/finddevice/FindDeviceOperationResult;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 154
    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called by: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->getCallerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 155
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    const-string/jumbo v2, "miui.cloud.finddevice.ManageFindDevice"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Access Denied. "

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 158
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v1}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->buildAccessDeniedResult(Ljava/lang/String;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1

    .line 162
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->close(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    invoke-static {}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->buildSuccessResult()Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 165
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 167
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->MakeFindDeviceOperationResult(Ljava/lang/Exception;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1
.end method

.method public ft()Lmiui/cloud/finddevice/FindDeviceOperationResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called by: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->getCallerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 197
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    const-string/jumbo v2, "miui.cloud.finddevice.ManageFindDevice"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Access Denied. "

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 200
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v1}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->buildAccessDeniedResult(Ljava/lang/String;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1

    .line 204
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->ft(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    invoke-static {}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->buildSuccessResult()Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 207
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 209
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->MakeFindDeviceOperationResult(Ljava/lang/Exception;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1
.end method

.method public getFindDeviceInfo()Lmiui/cloud/finddevice/FindDeviceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->getCallerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getFindDeviceInfo(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFindDeviceInfoFromServer(Lmiui/cloud/finddevice/FindDeviceInfo;)Lmiui/cloud/finddevice/FindDeviceOperationResult;
    .locals 4
    .param p1, "info"    # Lmiui/cloud/finddevice/FindDeviceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called by: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->getCallerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getFindDeviceInfoFromServer(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiui/cloud/finddevice/FindDeviceInfo;->copyFrom(Lmiui/cloud/finddevice/FindDeviceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    invoke-static {}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->buildSuccessResult()Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 123
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 125
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->MakeFindDeviceOperationResult(Ljava/lang/Exception;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1
.end method

.method public getFindDeviceInfoWithLockMessageFromServer(Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;)Lmiui/cloud/finddevice/FindDeviceOperationResult;
    .locals 4
    .param p1, "infoWithLockMessage"    # Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called by: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->getCallerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getFindDeviceInfoWithLockMessageFromServer(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;

    move-result-object v1

    .line 103
    invoke-virtual {p1, v1}, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;->copyFrom(Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    invoke-static {}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->buildSuccessResult()Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 109
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->MakeFindDeviceOperationResult(Ljava/lang/Exception;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1
.end method

.method public getLastSessionUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->getCallerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getLastSessionUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLastStatusLocked()Z
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->getCallerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isLastStatusLocked()Z

    move-result v0

    return v0
.end method

.method public isLastStatusOpen()Z
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->getCallerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isLastStatusOpen()Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->getCallerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isLocked(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->getCallerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpen()Z

    move-result v0

    return v0
.end method

.method public open(Z)Lmiui/cloud/finddevice/FindDeviceOperationResult;
    .locals 6
    .param p1, "silently"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Called by: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->getCallerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 134
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    const-string/jumbo v4, "miui.cloud.finddevice.ManageFindDevice"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Access Denied. "

    aput-object v3, v2, v1

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 137
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {v1}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->buildAccessDeniedResult(Ljava/lang/String;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1

    .line 141
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v3, v4, v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->open(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    invoke-static {}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->buildSuccessResult()Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1

    :cond_1
    move v1, v2

    .line 141
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 144
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 146
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->MakeFindDeviceOperationResult(Ljava/lang/Exception;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1
.end method

.method public purge()Lmiui/cloud/finddevice/FindDeviceOperationResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called by: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->getCallerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 176
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    const-string/jumbo v2, "miui.cloud.finddevice.ManageFindDevice"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Access Denied. "

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 179
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v1}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->buildAccessDeniedResult(Ljava/lang/String;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1

    .line 183
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->purge(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    invoke-static {}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->buildSuccessResult()Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 186
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 188
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->MakeFindDeviceOperationResult(Ljava/lang/Exception;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1
.end method

.method public unlock()Lmiui/cloud/finddevice/FindDeviceOperationResult;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called by: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->getCallerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 218
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    const-string/jumbo v2, "miui.cloud.finddevice.ManageFindDevice"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Access Denied. "

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 221
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v1}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->buildAccessDeniedResult(Ljava/lang/String;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1

    .line 225
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mFindDeviceStatusManagerInternal:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->unlock(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    invoke-static {}, Lmiui/cloud/finddevice/FindDeviceOperationResult;->buildSuccessResult()Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 228
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 230
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerService$ServiceBinder;->MakeFindDeviceOperationResult(Ljava/lang/Exception;)Lmiui/cloud/finddevice/FindDeviceOperationResult;

    move-result-object v1

    return-object v1
.end method
