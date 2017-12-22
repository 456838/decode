.class final enum Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic lY:[Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

.field public static final enum lZ:Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

.field public static final enum ma:Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

.field public static final enum mb:Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    const-string/jumbo v1, "HIDDEN_MODE"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->ma:Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    new-instance v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    const-string/jumbo v1, "BG_NETWORK_RESTRICT"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->lZ:Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    new-instance v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    const-string/jumbo v1, "MOBILE_NETWORK_RESTRICT"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->mb:Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    sget-object v1, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->ma:Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->lZ:Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->mb:Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->lY:[Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;
    .locals 1

    const-class v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->lY:[Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    return-object v0
.end method
