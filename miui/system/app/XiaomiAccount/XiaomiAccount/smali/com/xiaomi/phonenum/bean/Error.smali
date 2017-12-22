.class public final enum Lcom/xiaomi/phonenum/bean/Error;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/phonenum/bean/Error;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aca:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum acb:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum acc:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum acd:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum ace:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum acf:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum acg:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum ach:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum aci:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum acj:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum ack:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum acl:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum acm:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum acn:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum aco:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum acp:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum acq:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum acr:Lcom/xiaomi/phonenum/bean/Error;

.field public static final enum acs:Lcom/xiaomi/phonenum/bean/Error;

.field private static final synthetic act:[Lcom/xiaomi/phonenum/bean/Error;


# instance fields
.field public final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->aca:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "UNKNOW"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->acb:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "SEND_SMS_FAILED"

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->acc:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "JSON"

    const/16 v2, 0x3ea

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->acd:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "SIM_NOT_READY"

    const/16 v2, 0x3eb

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->ace:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "DATA_NOT_ENABLED"

    const/4 v2, 0x5

    const/16 v3, 0x3ec

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->acf:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "CELLULAR_NETWORK_NOT_AVAILABLE"

    const/4 v2, 0x6

    const/16 v3, 0x3ed

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->acg:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "FAILED_ALL"

    const/4 v2, 0x7

    const/16 v3, 0x3ee

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->ach:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "RECIVE_UNIKEY_FAILED"

    const/16 v2, 0x8

    const/16 v3, 0x3ef

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->aci:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "NO_CHANGE_NETWORK_STATE_PERMISSION"

    const/16 v2, 0x9

    const/16 v3, 0x3f1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->acj:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "NO_READ_PHONE_STATE_PERMISSION"

    const/16 v2, 0xa

    const/16 v3, 0x3f2

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->ack:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "INTERRUPTED"

    const/16 v2, 0xb

    const/16 v3, 0x3f3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->acl:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "SMS_OBTAIN_FAILED"

    const/16 v2, 0xc

    const/16 v3, 0x3f4

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->acm:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "NETWORK_ROAMING"

    const/16 v2, 0xd

    const/16 v3, 0x3f5

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->acn:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "IO_EXCEPTION"

    const/16 v2, 0xe

    const/16 v3, 0x3f6

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->aco:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "NOT_IN_SERVICE"

    const/16 v2, 0xf

    const/16 v3, 0x3f7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->acp:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "NO_SEND_SMS_PERMISSION"

    const/16 v2, 0x10

    const/16 v3, 0x3f8

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->acq:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "NO_RECEIVE_SMS_PERMISSION"

    const/16 v2, 0x11

    const/16 v3, 0x3f9

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->acr:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v0, Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "NOT_SUPPORT"

    const/16 v2, 0x12

    const/16 v3, 0x3fa

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/bean/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->acs:Lcom/xiaomi/phonenum/bean/Error;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/xiaomi/phonenum/bean/Error;

    sget-object v1, Lcom/xiaomi/phonenum/bean/Error;->aca:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/phonenum/bean/Error;->acb:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/phonenum/bean/Error;->acc:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/phonenum/bean/Error;->acd:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/phonenum/bean/Error;->ace:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/phonenum/bean/Error;->acf:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/phonenum/bean/Error;->acg:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/phonenum/bean/Error;->ach:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/phonenum/bean/Error;->aci:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/phonenum/bean/Error;->acj:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/xiaomi/phonenum/bean/Error;->ack:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/xiaomi/phonenum/bean/Error;->acl:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/xiaomi/phonenum/bean/Error;->acm:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/xiaomi/phonenum/bean/Error;->acn:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/xiaomi/phonenum/bean/Error;->aco:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/xiaomi/phonenum/bean/Error;->acp:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/xiaomi/phonenum/bean/Error;->acq:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/xiaomi/phonenum/bean/Error;->acr:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/xiaomi/phonenum/bean/Error;->acs:Lcom/xiaomi/phonenum/bean/Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/phonenum/bean/Error;->act:[Lcom/xiaomi/phonenum/bean/Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/phonenum/bean/Error;->code:I

    return-void
.end method

.method public static alD(I)Lcom/xiaomi/phonenum/bean/Error;
    .locals 5

    invoke-static {}, Lcom/xiaomi/phonenum/bean/Error;->values()[Lcom/xiaomi/phonenum/bean/Error;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->acb:Lcom/xiaomi/phonenum/bean/Error;

    return-object v0

    :cond_0
    aget-object v3, v1, v0

    iget v4, v3, Lcom/xiaomi/phonenum/bean/Error;->code:I

    if-eq v4, p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/Error;
    .locals 1

    const-class v0, Lcom/xiaomi/phonenum/bean/Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/phonenum/bean/Error;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/phonenum/bean/Error;
    .locals 1

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->act:[Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/phonenum/bean/Error;

    return-object v0
.end method


# virtual methods
.method public alE()Lcom/xiaomi/phonenum/bean/a;
    .locals 2

    new-instance v0, Lcom/xiaomi/phonenum/bean/b;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/bean/b;-><init>()V

    iget v1, p0, Lcom/xiaomi/phonenum/bean/Error;->code:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/bean/b;->alo(I)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/b;->build()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0
.end method

.method public alF(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/a;
    .locals 2

    new-instance v0, Lcom/xiaomi/phonenum/bean/b;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/bean/b;-><init>()V

    iget v1, p0, Lcom/xiaomi/phonenum/bean/Error;->code:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/bean/b;->alo(I)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/phonenum/bean/b;->all(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/b;->build()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0
.end method
