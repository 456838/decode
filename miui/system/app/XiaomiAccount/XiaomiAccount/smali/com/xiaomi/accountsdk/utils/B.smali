.class public Lcom/xiaomi/accountsdk/utils/B;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ZL:I

.field private static ZM:I

.field private static ZN:I

.field private static ZO:I

.field private static ZP:I

.field private static ZQ:I

.field private static ZR:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;->ZT:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    sput-object v0, Lcom/xiaomi/accountsdk/utils/B;->ZR:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    sput v1, Lcom/xiaomi/accountsdk/utils/B;->ZO:I

    sput v1, Lcom/xiaomi/accountsdk/utils/B;->ZP:I

    sput v2, Lcom/xiaomi/accountsdk/utils/B;->ZQ:I

    sput v1, Lcom/xiaomi/accountsdk/utils/B;->ZL:I

    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/accountsdk/utils/B;->ZM:I

    sput v2, Lcom/xiaomi/accountsdk/utils/B;->ZN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aiI()Z
    .locals 2

    sget-object v0, Lcom/xiaomi/accountsdk/utils/B;->ZR:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    sget-object v1, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;->ZU:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aiJ()V
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;->ZU:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    sput-object v0, Lcom/xiaomi/accountsdk/utils/B;->ZR:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    return-void
.end method

.method static synthetic aiK()I
    .locals 1

    sget v0, Lcom/xiaomi/accountsdk/utils/B;->ZL:I

    return v0
.end method

.method static synthetic aiL()I
    .locals 1

    sget v0, Lcom/xiaomi/accountsdk/utils/B;->ZM:I

    return v0
.end method

.method static synthetic aiM()I
    .locals 1

    sget v0, Lcom/xiaomi/accountsdk/utils/B;->ZN:I

    return v0
.end method

.method static synthetic aiN()I
    .locals 1

    sget v0, Lcom/xiaomi/accountsdk/utils/B;->ZO:I

    return v0
.end method

.method static synthetic aiO()I
    .locals 1

    sget v0, Lcom/xiaomi/accountsdk/utils/B;->ZP:I

    return v0
.end method

.method static synthetic aiP()I
    .locals 1

    sget v0, Lcom/xiaomi/accountsdk/utils/B;->ZQ:I

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/B;->ZR:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;->aiQ(Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
