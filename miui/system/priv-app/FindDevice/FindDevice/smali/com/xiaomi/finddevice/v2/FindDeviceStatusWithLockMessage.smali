.class public Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;
.super Ljava/lang/Object;
.source "FindDeviceStatusWithLockMessage.java"


# instance fields
.field public final findDeviceStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

.field public final lockMessage:Lmiui/cloud/finddevice/LockMessage;


# direct methods
.method public constructor <init>(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;Lmiui/cloud/finddevice/LockMessage;)V
    .locals 2
    .param p1, "findDeviceStatus"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    .param p2, "lockMessage"    # Lmiui/cloud/finddevice/LockMessage;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    if-nez p1, :cond_0

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "findDeviceStatus == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    if-nez p2, :cond_1

    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lockMessage == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;->findDeviceStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    .line 20
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;->lockMessage:Lmiui/cloud/finddevice/LockMessage;

    .line 11
    return-void
.end method
