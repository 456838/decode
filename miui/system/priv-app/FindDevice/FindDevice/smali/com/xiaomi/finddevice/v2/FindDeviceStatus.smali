.class public interface abstract Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
.super Ljava/lang/Object;
.source "FindDeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;,
        Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;,
        Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    }
.end annotation


# virtual methods
.method public abstract changeSessionStatusToLOCKED()V
.end method

.method public abstract changeSessionStatusToLOST(JJZLcom/xiaomi/finddevice/common/SMSGateways;)V
.end method

.method public abstract changeSessionStatusToOPENED()V
.end method

.method public abstract clearNeedVerify()V
.end method

.method public abstract getCreatedServerTime()J
.end method

.method public abstract getExtraInfo()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;
.end method

.method public abstract getSession()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;
.end method

.method public abstract getStatus()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
.end method

.method public abstract increaseSeq(J)V
.end method

.method public abstract isLocked()Z
.end method

.method public abstract isLost()Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract isVersionMatch()Z
.end method

.method public abstract toJSON()Lorg/json/JSONObject;
.end method
