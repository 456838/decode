.class public interface abstract Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;
.super Ljava/lang/Object;
.source "IDeviceCredentialManager.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;,
        Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;,
        Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;
    }
.end annotation


# virtual methods
.method public abstract addOnChangeListener(Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;Landroid/os/Handler;)V
.end method

.method public abstract updateDeviceCredential(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;)V
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
