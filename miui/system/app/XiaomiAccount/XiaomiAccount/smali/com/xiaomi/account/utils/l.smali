.class Lcom/xiaomi/account/utils/l;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static of(Landroid/content/Context;)Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/provider/ExtraNetwork;->isMobileRestrict(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "MiuiNetworkPolicyContro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mobileResitriced="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;->lW:Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;->lV:Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiNetworkPolicyContro"

    const-string/jumbo v2, "MobileNetworkRestrictUtils"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;->lV:Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    return-object v0
.end method
