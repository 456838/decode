.class public Lcom/xiaomi/finddevice/v2/UpdateDeviceCredentialProvider;
.super Ljava/lang/Object;
.source "UpdateDeviceCredentialProvider.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;


# instance fields
.field private mCurrent:Lcom/xiaomi/finddevice/v2/IDeviceCredential;

.field private final mNew:Lcom/xiaomi/finddevice/v2/IDeviceCredential;

.field private final mOld:Lcom/xiaomi/finddevice/v2/IDeviceCredential;


# direct methods
.method public constructor <init>(Lcom/xiaomi/finddevice/v2/IDeviceCredential;Lcom/xiaomi/finddevice/v2/IDeviceCredential;)V
    .locals 1
    .param p1, "oldOne"    # Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .param p2, "newOne"    # Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/UpdateDeviceCredentialProvider;->mOld:Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    .line 15
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/UpdateDeviceCredentialProvider;->mNew:Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/UpdateDeviceCredentialProvider;->mCurrent:Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    .line 13
    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/UpdateDeviceCredentialProvider;->mCurrent:Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    return-object v0
.end method

.method public getNew()Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/UpdateDeviceCredentialProvider;->mNew:Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    return-object v0
.end method

.method public getOld()Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/UpdateDeviceCredentialProvider;->mOld:Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    return-object v0
.end method

.method public switchToNew()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/UpdateDeviceCredentialProvider;->mNew:Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/UpdateDeviceCredentialProvider;->mCurrent:Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    .line 26
    return-void
.end method

.method public switchToOld()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/UpdateDeviceCredentialProvider;->mOld:Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/UpdateDeviceCredentialProvider;->mCurrent:Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    .line 21
    return-void
.end method
