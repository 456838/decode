.class final enum Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum hW:Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

.field public static final enum hX:Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

.field private static final synthetic hY:[Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

    const-string/jumbo v1, "GET_GUEST_ACCOUNT"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;->hW:Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

    new-instance v0, Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

    const-string/jumbo v1, "REMOVE_SERVICE_TOKEN_AND_RE_GET"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;->hX:Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

    sget-object v1, Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;->hW:Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;->hX:Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;->hY:[Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;
    .locals 1

    const-class v0, Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;->hY:[Lcom/xiaomi/account/guestaccount/GuestAccountService$MethodType;

    return-object v0
.end method
