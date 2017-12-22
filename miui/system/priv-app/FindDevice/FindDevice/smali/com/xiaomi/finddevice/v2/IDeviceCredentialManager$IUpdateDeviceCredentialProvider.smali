.class public interface abstract Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;
.super Ljava/lang/Object;
.source "IDeviceCredentialManager.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IUpdateDeviceCredentialProvider"
.end annotation


# virtual methods
.method public abstract getNew()Lcom/xiaomi/finddevice/v2/IDeviceCredential;
.end method

.method public abstract getOld()Lcom/xiaomi/finddevice/v2/IDeviceCredential;
.end method

.method public abstract switchToNew()V
.end method

.method public abstract switchToOld()V
.end method
