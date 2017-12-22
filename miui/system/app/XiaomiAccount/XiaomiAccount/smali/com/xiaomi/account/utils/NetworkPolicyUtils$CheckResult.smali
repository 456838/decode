.class final enum Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum lV:Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

.field public static final enum lW:Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

.field private static final synthetic lX:[Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    const-string/jumbo v1, "FINE"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;->lV:Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    new-instance v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    const-string/jumbo v1, "RESTRICTED"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;->lW:Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    sget-object v1, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;->lV:Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;->lW:Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;->lX:[Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;
    .locals 1

    const-class v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;->lX:[Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    return-object v0
.end method
