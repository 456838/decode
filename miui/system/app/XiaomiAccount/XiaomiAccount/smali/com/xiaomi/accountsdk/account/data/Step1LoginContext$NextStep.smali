.class public final enum Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum UV:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

.field public static final enum UW:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

.field public static final enum UX:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

.field private static final synthetic UY:[Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->UV:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    const-string/jumbo v1, "NOTIFICATION"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->UW:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    const-string/jumbo v1, "VERIFICATION"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->UX:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->UV:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->UW:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->UX:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->UY:[Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->UY:[Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    return-object v0
.end method
