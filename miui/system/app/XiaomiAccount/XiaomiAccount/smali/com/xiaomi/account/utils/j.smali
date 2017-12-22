.class Lcom/xiaomi/account/utils/j;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static nX(Landroid/content/Context;Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;)Z
    .locals 4

    invoke-static {p1}, Lcom/xiaomi/account/utils/j;->nY(Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/xiaomi/account/utils/a;->mV(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static nY(Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "network_policy_notification_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static nZ(Landroid/content/Context;Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/account/utils/j;->oa(Landroid/content/Context;Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;J)V

    return-void
.end method

.method static oa(Landroid/content/Context;Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;J)V
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/account/utils/j;->nY(Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/xiaomi/account/utils/a;->mX(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
