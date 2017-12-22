.class public final enum Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic KQ:[Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

.field public static final enum KR:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

.field public static final enum KS:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

.field public static final enum KT:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

.field public static final enum KU:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

.field public static final enum KV:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

.field public static final enum KW:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

.field public static final enum KX:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    const-string/jumbo v1, "ALLOW"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KR:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    const-string/jumbo v1, "DENIED_INVALID_SIGNATURE"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KS:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    const-string/jumbo v1, "DENIED_QUERY_TOO_FREQUENTLY"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KU:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    const-string/jumbo v1, "DENIED_NO_PERMISSION"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KT:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    const-string/jumbo v1, "PENDING_ONLINE_WHITE_LIST_FETCHING"

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KX:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    const-string/jumbo v1, "FETCH_ERROR_IO_EXCEPTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KV:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    const-string/jumbo v1, "FETCH_ERROR_OTHER_EXCEPTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KW:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KR:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KS:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KU:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KT:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KX:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KV:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KW:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KQ:[Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KQ:[Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    return-object v0
.end method
