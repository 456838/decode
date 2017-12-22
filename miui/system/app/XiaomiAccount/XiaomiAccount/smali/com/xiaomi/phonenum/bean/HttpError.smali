.class public final enum Lcom/xiaomi/phonenum/bean/HttpError;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/phonenum/bean/HttpError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum acA:Lcom/xiaomi/phonenum/bean/HttpError;

.field public static final enum acB:Lcom/xiaomi/phonenum/bean/HttpError;

.field public static final enum acC:Lcom/xiaomi/phonenum/bean/HttpError;

.field public static final enum acD:Lcom/xiaomi/phonenum/bean/HttpError;

.field private static final synthetic acE:[Lcom/xiaomi/phonenum/bean/HttpError;

.field public static final enum acy:Lcom/xiaomi/phonenum/bean/HttpError;

.field public static final enum acz:Lcom/xiaomi/phonenum/bean/HttpError;


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

    new-instance v0, Lcom/xiaomi/phonenum/bean/HttpError;

    const-string/jumbo v1, "ENCRYPT"

    const/16 v2, 0x1cc

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/phonenum/bean/HttpError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/HttpError;->acy:Lcom/xiaomi/phonenum/bean/HttpError;

    new-instance v0, Lcom/xiaomi/phonenum/bean/HttpError;

    const-string/jumbo v1, "DECRYPT"

    const/16 v2, 0x1cd

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/phonenum/bean/HttpError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/HttpError;->acz:Lcom/xiaomi/phonenum/bean/HttpError;

    new-instance v0, Lcom/xiaomi/phonenum/bean/HttpError;

    const-string/jumbo v1, "DATA_NOT_ENABLED"

    const/16 v2, 0x1ce

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/phonenum/bean/HttpError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/HttpError;->acA:Lcom/xiaomi/phonenum/bean/HttpError;

    new-instance v0, Lcom/xiaomi/phonenum/bean/HttpError;

    const-string/jumbo v1, "NO_CHANGE_NETWORK_STATE_PERMISSION"

    const/16 v2, 0x1cf

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/phonenum/bean/HttpError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/HttpError;->acB:Lcom/xiaomi/phonenum/bean/HttpError;

    new-instance v0, Lcom/xiaomi/phonenum/bean/HttpError;

    const-string/jumbo v1, "CELLULAR_NETWORK_NOT_AVAILABLE"

    const/16 v2, 0x1d0

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/phonenum/bean/HttpError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/HttpError;->acC:Lcom/xiaomi/phonenum/bean/HttpError;

    new-instance v0, Lcom/xiaomi/phonenum/bean/HttpError;

    const-string/jumbo v1, "CELLULAR_NETWORK_IO_EXCEPTION"

    const/4 v2, 0x5

    const/16 v3, 0x258

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/phonenum/bean/HttpError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/phonenum/bean/HttpError;->acD:Lcom/xiaomi/phonenum/bean/HttpError;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xiaomi/phonenum/bean/HttpError;

    sget-object v1, Lcom/xiaomi/phonenum/bean/HttpError;->acy:Lcom/xiaomi/phonenum/bean/HttpError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/phonenum/bean/HttpError;->acz:Lcom/xiaomi/phonenum/bean/HttpError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/phonenum/bean/HttpError;->acA:Lcom/xiaomi/phonenum/bean/HttpError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/phonenum/bean/HttpError;->acB:Lcom/xiaomi/phonenum/bean/HttpError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/phonenum/bean/HttpError;->acC:Lcom/xiaomi/phonenum/bean/HttpError;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/phonenum/bean/HttpError;->acD:Lcom/xiaomi/phonenum/bean/HttpError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/phonenum/bean/HttpError;->acE:[Lcom/xiaomi/phonenum/bean/HttpError;

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

    iput p3, p0, Lcom/xiaomi/phonenum/bean/HttpError;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/HttpError;
    .locals 1

    const-class v0, Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/phonenum/bean/HttpError;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/phonenum/bean/HttpError;
    .locals 1

    sget-object v0, Lcom/xiaomi/phonenum/bean/HttpError;->acE:[Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/phonenum/bean/HttpError;

    return-object v0
.end method


# virtual methods
.method public alH()Lcom/xiaomi/phonenum/c/a;
    .locals 2

    new-instance v0, Lcom/xiaomi/phonenum/c/b;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/c/b;-><init>()V

    iget v1, p0, Lcom/xiaomi/phonenum/bean/HttpError;->code:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/c/b;->code(I)Lcom/xiaomi/phonenum/c/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/phonenum/bean/HttpError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/c/b;->anV(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/c/b;->build()Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    return-object v0
.end method
