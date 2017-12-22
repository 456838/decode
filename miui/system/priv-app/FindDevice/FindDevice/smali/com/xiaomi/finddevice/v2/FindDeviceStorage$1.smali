.class final Lcom/xiaomi/finddevice/v2/FindDeviceStorage$1;
.super Ljava/lang/Object;
.source "FindDeviceStorage.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/PersistentStroage$IDataHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->upgradeData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$needUpgrade:Lmiui/cloud/common/XWrapper;

.field final synthetic val$oldDataDigest:[B


# direct methods
.method constructor <init>([BLmiui/cloud/common/XWrapper;)V
    .locals 0
    .param p1, "val$oldDataDigest"    # [B

    .prologue
    .line 59
    .local p2, "val$needUpgrade":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$1;->val$oldDataDigest:[B

    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$1;->val$needUpgrade:Lmiui/cloud/common/XWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleData([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PersistentStroage$BadDataException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$1;->val$oldDataDigest:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$1;->val$needUpgrade:Lmiui/cloud/common/XWrapper;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/cloud/common/XWrapper;->set(Ljava/lang/Object;)V

    .line 62
    :cond_0
    return-void
.end method
