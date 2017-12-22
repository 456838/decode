.class final Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker$2;
.super Ljava/lang/Object;
.source "PushUserAccountTracker.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->initTrack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceCredentialChanged(Lcom/xiaomi/finddevice/v2/IDeviceCredential;)V
    .locals 3
    .param p1, "deviceCredentail"    # Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lcom/xiaomi/finddevice/v2/push/PushUserAccountTracker;->-wrap1()V

    .line 60
    return-void
.end method
