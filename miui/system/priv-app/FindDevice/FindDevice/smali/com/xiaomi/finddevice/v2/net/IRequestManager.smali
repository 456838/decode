.class public interface abstract Lcom/xiaomi/finddevice/v2/net/IRequestManager;
.super Ljava/lang/Object;
.source "IRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;,
        Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
        Lcom/xiaomi/finddevice/v2/net/IRequestManager$HttpMethod;,
        Lcom/xiaomi/finddevice/v2/net/IRequestManager$MaxRelocationCountExceededException;,
        Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
        Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
        Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;,
        Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
        Lcom/xiaomi/finddevice/v2/net/IRequestManager$ServiceUnavailableException;,
        Lcom/xiaomi/finddevice/v2/net/IRequestManager$UnexpectedRelocationException;
    }
.end annotation


# virtual methods
.method public abstract getRequestDeviceId()Ljava/lang/String;
.end method

.method public abstract getRequestInfo()Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;
.end method

.method public abstract getRequestUserId()Ljava/lang/String;
.end method

.method public abstract getResposeDate()Ljava/util/Date;
.end method

.method public abstract release()V
.end method

.method public abstract request(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;Ljava/util/Map;Ljava/util/Map;I)Lorg/json/JSONObject;
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
.end method
