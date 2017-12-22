.class public final enum Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ZS:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

.field public static final enum ZT:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

.field public static final enum ZU:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

.field private static final synthetic ZV:[Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    const-string/jumbo v1, "Alpha"

    const-string/jumbo v2, "Android-%d.%d.%d-Alpha"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/B;->aiK()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/B;->aiL()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/B;->aiM()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;->ZS:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    new-instance v0, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    const-string/jumbo v1, "Dev"

    const-string/jumbo v2, "Android-%d.%d.%d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/B;->aiN()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/B;->aiO()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/B;->aiP()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;->ZT:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    new-instance v0, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    const-string/jumbo v1, "MiuiStable"

    const-string/jumbo v2, "Android-%d.%d.%d-Stable"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/B;->aiN()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/B;->aiO()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/B;->aiP()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;->ZU:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    new-array v0, v8, [Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    sget-object v1, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;->ZS:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;->ZT:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;->ZU:Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    aput-object v1, v0, v7

    sput-object v0, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;->ZV:[Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic aiQ(Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;->value:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;->ZV:[Lcom/xiaomi/accountsdk/utils/VersionUtils$CodeBranch;

    return-object v0
.end method
