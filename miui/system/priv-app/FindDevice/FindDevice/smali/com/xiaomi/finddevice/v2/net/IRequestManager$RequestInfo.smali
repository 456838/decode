.class public Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestInfo;
.super Ljava/lang/Object;
.source "IRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/net/IRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestInfo"
.end annotation


# instance fields
.field public requestDeviceId:Ljava/lang/String;

.field public requestUserId:Ljava/lang/String;

.field public responseDate:Ljava/util/Date;

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
