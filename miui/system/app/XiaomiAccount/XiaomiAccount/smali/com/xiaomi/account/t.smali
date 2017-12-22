.class final Lcom/xiaomi/account/t;
.super Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub;
.source ""


# instance fields
.field final synthetic ot:Lcom/xiaomi/account/FindDeviceRemoveAccountService;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/FindDeviceRemoveAccountService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/t;->ot:Lcom/xiaomi/account/FindDeviceRemoveAccountService;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sr()Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/account/t;->ot:Lcom/xiaomi/account/FindDeviceRemoveAccountService;

    invoke-static {v1, v0}, Lcom/xiaomi/account/FindDeviceRemoveAccountService;->qZ(Lcom/xiaomi/account/FindDeviceRemoveAccountService;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/account/t;->ot:Lcom/xiaomi/account/FindDeviceRemoveAccountService;

    invoke-virtual {v1}, Lcom/xiaomi/account/FindDeviceRemoveAccountService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FindDeviceRemoveAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "calling app : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not the app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "com.xiaomi.finddevice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "calling app : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is no permission"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/t;->ot:Lcom/xiaomi/account/FindDeviceRemoveAccountService;

    invoke-static {v0}, Lcom/xiaomi/account/FindDeviceRemoveAccountService;->ra(Lcom/xiaomi/account/FindDeviceRemoveAccountService;)Z

    move-result v0

    const-string/jumbo v1, "FindDeviceRemoveAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delete the binded device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string/jumbo v0, "succeed"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/account/t;->ot:Lcom/xiaomi/account/FindDeviceRemoveAccountService;

    invoke-static {v0}, Lcom/xiaomi/account/FindDeviceRemoveAccountService;->rb(Lcom/xiaomi/account/FindDeviceRemoveAccountService;)Z

    move-result v0

    return v0

    :cond_1
    const-string/jumbo v0, "failed"

    goto :goto_0
.end method
