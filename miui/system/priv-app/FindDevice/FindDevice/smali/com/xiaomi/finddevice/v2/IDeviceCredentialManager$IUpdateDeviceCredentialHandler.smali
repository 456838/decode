.class public interface abstract Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;
.super Ljava/lang/Object;
.source "IDeviceCredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IUpdateDeviceCredentialHandler"
.end annotation


# virtual methods
.method public abstract doStatusUpdate(Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation
.end method
