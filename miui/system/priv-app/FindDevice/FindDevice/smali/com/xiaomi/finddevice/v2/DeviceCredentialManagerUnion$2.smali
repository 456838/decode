.class Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$2;
.super Ljava/lang/Object;
.source "DeviceCredentialManagerUnion.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->doTZ2NoTZUpdateLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;

.field final synthetic val$updateDeviceCredentialHandler:Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;

.field final synthetic val$updateResult:Lmiui/cloud/common/XWrapper;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;Lmiui/cloud/common/XWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;
    .param p2, "val$updateDeviceCredentialHandler"    # Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;

    .prologue
    .line 160
    .local p3, "val$updateResult":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<Lcom/xiaomi/finddevice/v2/IDeviceCredential;>;"
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$2;->this$0:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;

    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$2;->val$updateDeviceCredentialHandler:Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;

    iput-object p3, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$2;->val$updateResult:Lmiui/cloud/common/XWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doStatusUpdate(Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;)V
    .locals 4
    .param p1, "controller"    # Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->get()Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    move-result-object v1

    .line 169
    .local v1, "oldDeviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    invoke-interface {p1}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;->getNew()Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    move-result-object v0

    .line 171
    .local v0, "newDeviceCredential":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$2;->val$updateDeviceCredentialHandler:Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;

    .line 172
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$2;->this$0:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;

    invoke-static {v3, v1, v0}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;->-wrap0(Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;Lcom/xiaomi/finddevice/v2/IDeviceCredential;Lcom/xiaomi/finddevice/v2/IDeviceCredential;)Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;

    move-result-object v3

    .line 171
    invoke-interface {v2, v3}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;->doStatusUpdate(Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;)V

    .line 174
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$2;->val$updateResult:Lmiui/cloud/common/XWrapper;

    invoke-virtual {v2, v0}, Lmiui/cloud/common/XWrapper;->set(Ljava/lang/Object;)V

    .line 166
    return-void
.end method
