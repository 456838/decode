.class Lcom/xiaomi/account/guestaccount/a;
.super Lcom/xiaomi/accountsdk/guestaccount/a;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public iY()Z
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lcom/xiaomi/account/utils/b;

    invoke-direct {v0}, Lcom/xiaomi/account/utils/b;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/account/utils/b;->mZ()Z
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/RemoteException;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HardwareInfoFetchImpl"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "HardwareInfoFetchImpl"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "HardwareInfoFetchImpl"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_2
    const-string/jumbo v1, "HardwareInfoFetchImpl"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public iZ()Lcom/xiaomi/accountsdk/guestaccount/data/a;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/account/guestaccount/a;->iY()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "HardwareInfoFetchImpl"

    const-string/jumbo v1, "device not support FID"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/utils/FidNonce$Type;->Zq:Lcom/xiaomi/accountsdk/utils/FidNonce$Type;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/utils/k;->ahJ(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;)Lcom/xiaomi/accountsdk/utils/j;

    move-result-object v0

    return-object v0
.end method
