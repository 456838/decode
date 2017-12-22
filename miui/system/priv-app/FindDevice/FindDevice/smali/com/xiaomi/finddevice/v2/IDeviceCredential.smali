.class public interface abstract Lcom/xiaomi/finddevice/v2/IDeviceCredential;
.super Ljava/lang/Object;
.source "IDeviceCredential.java"


# virtual methods
.method public abstract getFId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation
.end method

.method public abstract getHost()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation
.end method

.method public abstract getOwnUserId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation
.end method

.method public abstract onSignError()V
.end method

.method public abstract sign([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation
.end method
