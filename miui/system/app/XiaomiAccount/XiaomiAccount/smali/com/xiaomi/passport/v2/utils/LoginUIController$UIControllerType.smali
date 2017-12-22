.class final enum Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Gp:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

.field public static final enum Gq:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

.field public static final enum Gr:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

.field public static final enum Gs:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

.field public static final enum Gt:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

.field public static final enum Gu:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

.field private static final synthetic Gv:[Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    const-string/jumbo v1, "PASSWORD_LOGIN"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gq:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    new-instance v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    const-string/jumbo v1, "PHONE_LOGIN"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gr:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    new-instance v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    const-string/jumbo v1, "PHONE_REGISTER"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gs:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    new-instance v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    const-string/jumbo v1, "SEND_PHONE_TICKET"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gu:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    new-instance v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    const-string/jumbo v1, "ADD_OR_UPDATE_ACCOUNT_MANAGER"

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gp:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    new-instance v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    const-string/jumbo v1, "QUERY_PHONE_USER_INFO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gt:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    sget-object v1, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gq:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gr:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gs:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gu:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gp:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gt:Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gv:[Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;->Gv:[Lcom/xiaomi/passport/v2/utils/LoginUIController$UIControllerType;

    return-object v0
.end method
