.class final enum Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Xh:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

.field public static final enum Xi:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

.field private static final synthetic Xj:[Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    const-string/jumbo v1, "EMAIL"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->Xh:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    new-instance v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    const-string/jumbo v1, "PHONE"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->Xi:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->Xh:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->Xi:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->Xj:[Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->Xj:[Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    return-object v0
.end method
