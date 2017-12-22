.class public Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;
.super Lcom/xiaomi/finddevice/v2/AbsDeviceCrendential;
.source "DeviceCredentialTZ.java"


# static fields
.field private static sInstance:Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;-><init>()V

    sput-object v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->sInstance:Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/AbsDeviceCrendential;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->sInstance:Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;

    return-object v0
.end method


# virtual methods
.method public getFId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Lcom/xiaomi/finddevice/common/MTService;->get()Lcom/xiaomi/finddevice/common/MTService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/common/MTService;->getFid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnUserId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public isProvisioned()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/xiaomi/finddevice/common/MTService;->get()Lcom/xiaomi/finddevice/common/MTService;

    move-result-object v0

    .line 78
    .local v0, "mtService":Lcom/xiaomi/finddevice/common/MTService;
    invoke-virtual {v0}, Lcom/xiaomi/finddevice/common/MTService;->isKeyProvisioned()Z

    move-result v1

    return v1
.end method

.method public provision(Landroid/content/Context;ZLcom/xiaomi/finddevice/common/IMTServiceKeyProvider;)Z
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "forceReprovision"    # Z
    .param p3, "keyProvider"    # Lcom/xiaomi/finddevice/common/IMTServiceKeyProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-static {}, Lcom/xiaomi/finddevice/common/MTService;->get()Lcom/xiaomi/finddevice/common/MTService;

    move-result-object v0

    .line 65
    .local v0, "mtService":Lcom/xiaomi/finddevice/common/MTService;
    invoke-virtual {v0}, Lcom/xiaomi/finddevice/common/MTService;->isKeyProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_2

    .line 66
    :cond_0
    invoke-virtual {v0, p1, p3}, Lcom/xiaomi/finddevice/common/MTService;->reprovisionViaServer(Landroid/content/Context;Lcom/xiaomi/finddevice/common/IMTServiceKeyProvider;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/DeviceCredentialTZ;->clearSignError()V

    .line 68
    return v2

    .line 70
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 72
    :cond_2
    return v2
.end method

.method public sign([B)[B
    .locals 9
    .param p1, "src"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 31
    :try_start_0
    const-string/jumbo v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 32
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/xiaomi/finddevice/common/util/KeyTool;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "hexSrcString":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/finddevice/common/MTService;->get()Lcom/xiaomi/finddevice/common/MTService;

    move-result-object v5

    invoke-virtual {v5, v7, v3}, Lcom/xiaomi/finddevice/common/MTService;->eccSign(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "hexSignString":Ljava/lang/String;
    invoke-static {v2}, Lcom/xiaomi/finddevice/common/util/KeyTool;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 41
    .local v4, "signBytes":[B
    if-nez v4, :cond_0

    .line 42
    new-instance v5, Ljava/lang/RuntimeException;

    .line 43
    const-string/jumbo v6, "MTService returned a bad hexSignString: %s"

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 33
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hexSignString":Ljava/lang/String;
    .end local v3    # "hexSrcString":Ljava/lang/String;
    .end local v4    # "signBytes":[B
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "No SHA-256 support. "

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 45
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    .restart local v2    # "hexSignString":Ljava/lang/String;
    .restart local v3    # "hexSrcString":Ljava/lang/String;
    .restart local v4    # "signBytes":[B
    :cond_0
    invoke-static {v4}, Lcom/xiaomi/finddevice/common/util/KeyTool;->nakedSignatureToStandardSignature([B)[B

    move-result-object v5

    return-object v5
.end method
