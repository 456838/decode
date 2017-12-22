.class final enum Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum me:Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

.field public static final enum mf:Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

.field public static final enum mg:Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

.field private static final synthetic mh:[Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

    const-string/jumbo v1, "en_US"

    const-string/jumbo v2, "MM-dd-yyyy"

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;->mf:Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

    new-instance v0, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

    const-string/jumbo v1, "en_not_US"

    const-string/jumbo v2, "dd-MM-yyyy"

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;->mg:Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

    new-instance v0, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

    const-string/jumbo v1, "default_not_en"

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;->me:Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

    sget-object v1, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;->mf:Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;->mg:Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;->me:Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;->mh:[Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;
    .locals 1

    const-class v0, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;->mh:[Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/utils/SysHelper$SimpleDateFormat;->value:Ljava/lang/String;

    return-object v0
.end method
