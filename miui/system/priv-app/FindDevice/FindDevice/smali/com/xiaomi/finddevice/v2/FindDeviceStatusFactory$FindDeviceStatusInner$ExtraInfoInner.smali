.class public Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;
.super Ljava/lang/Object;
.source "FindDeviceStatusFactory.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraInfoInner"
.end annotation


# instance fields
.field public displayId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public fid:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public refreshSuggestion:J

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->refreshSuggestion:J

    .line 148
    return-void
.end method


# virtual methods
.method public getDisplayId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->displayId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->fid:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshSuggestion()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->refreshSuggestion:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner$ExtraInfoInner;->userId:Ljava/lang/String;

    return-object v0
.end method
