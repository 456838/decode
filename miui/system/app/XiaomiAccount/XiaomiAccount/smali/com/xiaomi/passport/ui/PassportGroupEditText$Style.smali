.class public final enum Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum sA:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

.field public static final enum sB:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

.field public static final enum sC:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

.field public static final enum sD:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

.field public static final enum sE:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

.field private static final synthetic sF:[Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sE:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    new-instance v0, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    const-string/jumbo v1, "FirstItem"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sA:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    new-instance v0, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    const-string/jumbo v1, "MiddleItem"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sD:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    new-instance v0, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    const-string/jumbo v1, "LastItem"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sB:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    new-instance v0, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    const-string/jumbo v1, "SingleItem"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sC:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sE:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sA:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sD:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sB:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sC:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sF:[Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sF:[Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    return-object v0
.end method
