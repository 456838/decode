.class final enum Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum afU:Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

.field public static final enum afV:Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

.field public static final enum afW:Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

.field private static final synthetic afX:[Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

    const-string/jumbo v1, "UPDATING"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;->afW:Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

    new-instance v0, Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;->afV:Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

    new-instance v0, Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;->afU:Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;->afW:Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;->afV:Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;->afU:Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;->afX:[Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;
    .locals 1

    const-class v0, Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;
    .locals 1

    sget-object v0, Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;->afX:[Lcom/xiaomi/micloudsdk/utils/CloudUtils$UpdateStatus;

    return-object v0
.end method
