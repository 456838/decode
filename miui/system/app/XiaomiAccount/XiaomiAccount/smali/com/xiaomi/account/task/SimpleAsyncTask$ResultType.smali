.class public abstract enum Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic jl:[Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

.field public static final enum jm:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

.field public static final enum jn:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

.field public static final enum jo:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

.field public static final enum jp:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

.field public static final enum jq:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

.field public static final enum jr:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

.field public static final enum js:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

.field public static final enum jt:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

.field public static final enum ju:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

.field public static final enum jv:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

.field public static final enum jw:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

.field public static final enum jx:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$1;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jx:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    new-instance v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$2;

    const-string/jumbo v1, "ERROR_PASSWORD"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->js:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    new-instance v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$3;

    const-string/jumbo v1, "ERROR_AUTH_FAIL"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jn:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    new-instance v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$4;

    const-string/jumbo v1, "ERROR_NETWORK"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jr:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    new-instance v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$5;

    const-string/jumbo v1, "ERROR_SERVER"

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jt:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    new-instance v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$6;

    const-string/jumbo v1, "ERROR_ACCESS_DENIED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jm:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    new-instance v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$7;

    const-string/jumbo v1, "ERROR_CAPTCHA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jo:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    new-instance v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$8;

    const-string/jumbo v1, "ERROR_DEVICE_ID"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jp:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    new-instance v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$9;

    const-string/jumbo v1, "ERROR_VERIFY_CODE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jw:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    new-instance v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$10;

    const-string/jumbo v1, "ERROR_USER_ACTION_RESTRICTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jv:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    new-instance v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$11;

    const-string/jumbo v1, "ERROR_GET_PHONE_VERIFY_CODE_OVER_LIMIT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jq:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    new-instance v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$12;

    const-string/jumbo v1, "ERROR_UNKNOWN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ju:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jx:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->js:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jn:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jr:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jt:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jm:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jo:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jp:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jw:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jv:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jq:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ju:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jl:[Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/xiaomi/account/task/SimpleAsyncTask$ResultType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;
    .locals 1

    const-class v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jl:[Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    return-object v0
.end method


# virtual methods
.method public ko()Z
    .locals 1

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jx:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract kp()I
.end method
