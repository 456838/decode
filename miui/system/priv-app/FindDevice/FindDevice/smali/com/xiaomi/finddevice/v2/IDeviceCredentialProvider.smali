.class public interface abstract Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;
.super Ljava/lang/Object;
.source "IDeviceCredentialProvider.java"


# virtual methods
.method public abstract get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation
.end method
