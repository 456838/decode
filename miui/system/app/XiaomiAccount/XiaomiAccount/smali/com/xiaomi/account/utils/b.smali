.class public Lcom/xiaomi/account/utils/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/accountsdk/utils/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mZ()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->isThisDeviceSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public na([B)[B
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->signWithDeviceCredential([B)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
