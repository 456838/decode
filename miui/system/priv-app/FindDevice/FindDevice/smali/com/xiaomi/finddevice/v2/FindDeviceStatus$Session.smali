.class public interface abstract Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;
.super Ljava/lang/Object;
.source "FindDeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Session"
.end annotation


# virtual methods
.method public abstract getExpireTime()J
.end method

.method public abstract getKey()Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
.end method

.method public abstract getLocateSMSGateways()Lcom/xiaomi/finddevice/common/SMSGateways;
.end method

.method public abstract getLostId()J
.end method

.method public abstract getLostTime()J
.end method

.method public abstract getPub1()Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
.end method

.method public abstract getPub2()Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
.end method

.method public abstract getSeq()J
.end method

.method public abstract needLocateDevice()Z
.end method

.method public abstract needVerify()Z
.end method
