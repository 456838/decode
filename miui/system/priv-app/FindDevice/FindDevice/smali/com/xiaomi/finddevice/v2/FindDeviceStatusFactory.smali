.class public Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory;
.super Ljava/lang/Object;
.source "FindDeviceStatusFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;,
        Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromServerJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "fid"    # Ljava/lang/String;
    .param p2, "responseDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$BadStatusJSONException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->createFromServerJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;

    move-result-object v0

    return-object v0
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusFactory$FindDeviceStatusInner;

    move-result-object v0

    return-object v0
.end method
