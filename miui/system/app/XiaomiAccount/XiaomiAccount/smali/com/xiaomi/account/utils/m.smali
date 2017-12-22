.class Lcom/xiaomi/account/utils/m;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static og(Landroid/content/Context;)Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v0

    const-string/jumbo v1, "MiuiNetworkPolicyContro"

    const-string/jumbo v2, "networkpolicy=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v6, :cond_0

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

    const-string/jumbo v2, "BgNetworkRestrictUtils"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;->lV:Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    return-object v0
.end method
