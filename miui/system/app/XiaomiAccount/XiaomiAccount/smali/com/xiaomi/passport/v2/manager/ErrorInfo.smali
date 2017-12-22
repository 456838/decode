.class public final enum Lcom/xiaomi/passport/v2/manager/ErrorInfo;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/passport/v2/manager/ErrorInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Hi:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field public static final enum Hj:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field public static final enum Hk:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field public static final enum Hl:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field public static final enum Hm:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field public static final enum Hn:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field public static final enum Ho:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field public static final enum Hp:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field public static final enum Hq:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field public static final enum Hr:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field public static final enum Hs:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field public static final enum Ht:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field public static final enum Hu:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field public static final enum Hv:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field public static final enum Hw:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field public static final enum Hx:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field public static final enum Hy:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

.field private static final synthetic Hz:[Lcom/xiaomi/passport/v2/manager/ErrorInfo;


# instance fields
.field public errorMessageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hy:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "ERROR_UNKNOWN"

    const v2, 0x7f0c0096

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Ho:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "ERROR_PASSWORD"

    const v2, 0x7f0c008a

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hv:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "ERROR_AUTH_FAIL"

    const v2, 0x7f0c0097

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hk:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "ERROR_NETWORK"

    const v2, 0x7f0c0093

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hs:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "ERROR_SERVER"

    const/4 v2, 0x5

    const v3, 0x7f0c0095

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hi:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "ERROR_ACCESS_DENIED"

    const/4 v2, 0x6

    const v3, 0x7f0c008c

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hp:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "ERROR_CAPTCHA"

    const/4 v2, 0x7

    const v3, 0x7f0c008d

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hq:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "ERROR_DEVICE_ID"

    const/16 v2, 0x8

    const v3, 0x7f0c008f

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hr:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "ERROR_VERIFY_CODE"

    const/16 v2, 0x9

    const v3, 0x7f0c008e

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hx:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "ERROR_PHONE_REG_RESTRICTED"

    const/16 v2, 0xa

    const v3, 0x7f0c0032

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hn:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "ERROR_SEND_PHONE_VCODE_REACH_LIMIT"

    const/16 v2, 0xb

    const v3, 0x7f0c001e

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hl:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "ERROR_INVALID_PHONE_NUM"

    const/16 v2, 0xc

    const v3, 0x7f0c005d

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hm:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "ERROR_NO_EXIST_USER_NAME"

    const/16 v2, 0xd

    const v3, 0x7f0c008b

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Ht:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "ERROR_TOKEN_EXPIRED"

    const/16 v2, 0xe

    const v3, 0x7f0c0089

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hw:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "ERROR_PHONE_TICKET"

    const/16 v2, 0xf

    const v3, 0x7f0c008e

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hj:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    new-instance v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const-string/jumbo v1, "ERROR_NO_PHONE"

    const/16 v2, 0x10

    const v3, 0x7f0c00b5

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hu:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hy:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Ho:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hv:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hk:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hs:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hi:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hp:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hq:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hr:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hx:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hn:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hl:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hm:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Ht:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hw:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hj:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hu:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hz:[Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    return-void
.end method

.method public static LH(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;)I
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Jb:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hp:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v0, v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Jc:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hk:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v0, v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Je:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hs:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v0, v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Ji:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hi:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v0, v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Jd:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    if-ne p0, v0, :cond_4

    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hm:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v0, v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Jg:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    if-ne p0, v0, :cond_5

    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hu:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v0, v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Ho:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v0, v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    goto :goto_0
.end method

.method public static LI(Ljava/lang/Throwable;)I
    .locals 1

    instance-of v0, p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hi:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    :goto_0
    iget v0, v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    return v0

    :cond_0
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hs:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hk:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hp:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/exception/UserRestrictedException;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hn:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidVerifyCodeException;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hx:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidPhoneNumException;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hm:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/exception/ReachLimitException;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hl:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    goto :goto_0

    :cond_7
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/exception/TokenExpiredException;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hw:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Ho:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/v2/manager/ErrorInfo;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/passport/v2/manager/ErrorInfo;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hz:[Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    return-object v0
.end method
