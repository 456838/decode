.class final Lcom/xiaomi/finddevice/v2/FindDeviceStorage$2;
.super Ljava/lang/Object;
.source "FindDeviceStorage.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/PersistentStroage$IDataHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->getDeviceCredentialTypeMark(Landroid/content/Context;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lmiui/cloud/common/XWrapper;


# direct methods
.method constructor <init>(Lmiui/cloud/common/XWrapper;)V
    .locals 0

    .prologue
    .line 154
    .local p1, "val$type":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<[B>;"
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$2;->val$type:Lmiui/cloud/common/XWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleData([B)V
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PersistentStroage$BadDataException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$2;->val$type:Lmiui/cloud/common/XWrapper;

    invoke-virtual {v0, p1}, Lmiui/cloud/common/XWrapper;->set(Ljava/lang/Object;)V

    .line 157
    return-void
.end method
