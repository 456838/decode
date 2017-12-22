.class final Lcom/xiaomi/finddevice/v2/update/FIDDebugOutputUpdateTask$1;
.super Ljava/lang/Object;
.source "FIDDebugOutputUpdateTask.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/update/FIDDebugOutputUpdateTask;->getDeviceCredentialChangeListener()Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$OnChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceCredentialChanged(Lcom/xiaomi/finddevice/v2/IDeviceCredential;)V
    .locals 3
    .param p1, "deviceCredentail"    # Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Device credential changed. Do all. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 87
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/FIDDebugOutputUpdateTask;->doAll()V

    .line 85
    return-void
.end method
