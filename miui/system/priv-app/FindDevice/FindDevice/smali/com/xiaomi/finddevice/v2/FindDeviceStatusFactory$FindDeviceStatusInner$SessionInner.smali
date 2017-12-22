.class public Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;
.super Ljava/lang/Object;
.source "FindDeviceStatusFactory.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionInner"
.end annotation


# instance fields
.field public expireTime:J

.field public key:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

.field public locateDevice:Z

.field public locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;

.field public lostId:J

.field public lostTime:J

.field public needVerify:Z

.field public pub1:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

.field public pub2:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

.field public seq:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-wide v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->seq:J

    .line 135
    iput-wide v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->expireTime:J

    .line 137
    iput-wide v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->lostId:J

    .line 139
    iput-wide v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->lostTime:J

    .line 141
    iput-boolean v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->locateDevice:Z

    .line 145
    iput-boolean v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->needVerify:Z

    .line 79
    return-void
.end method


# virtual methods
.method public getExpireTime()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->expireTime:J

    return-wide v0
.end method

.method public getKey()Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->key:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    return-object v0
.end method

.method public getLocateSMSGateways()Lcom/xiaomi/finddevice/common/SMSGateways;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;

    return-object v0
.end method

.method public getLostId()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->lostId:J

    return-wide v0
.end method

.method public getLostTime()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->lostTime:J

    return-wide v0
.end method

.method public getPub1()Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->pub1:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    return-object v0
.end method

.method public getPub2()Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->pub2:Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    return-object v0
.end method

.method public getSeq()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->seq:J

    return-wide v0
.end method

.method public needLocateDevice()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->locateDevice:Z

    return v0
.end method

.method public needVerify()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$SessionInner;->needVerify:Z

    return v0
.end method
