.class public final enum Lcom/xiaomi/passport/RegisterType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/passport/RegisterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic LA:[Lcom/xiaomi/passport/RegisterType;

.field public static final enum Lv:Lcom/xiaomi/passport/RegisterType;

.field public static final enum Lw:Lcom/xiaomi/passport/RegisterType;

.field public static final enum Lx:Lcom/xiaomi/passport/RegisterType;

.field public static final enum Ly:Lcom/xiaomi/passport/RegisterType;

.field public static final enum Lz:Lcom/xiaomi/passport/RegisterType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/passport/RegisterType;

    const-string/jumbo v1, "DOWN_LINK_PHONE"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/RegisterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/RegisterType;->Lv:Lcom/xiaomi/passport/RegisterType;

    new-instance v0, Lcom/xiaomi/passport/RegisterType;

    const-string/jumbo v1, "SET_PASSWORD"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/passport/RegisterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/RegisterType;->Lw:Lcom/xiaomi/passport/RegisterType;

    new-instance v0, Lcom/xiaomi/passport/RegisterType;

    const-string/jumbo v1, "RESET_PASSWORD"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/passport/RegisterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/RegisterType;->Lx:Lcom/xiaomi/passport/RegisterType;

    new-instance v0, Lcom/xiaomi/passport/RegisterType;

    const-string/jumbo v1, "POSSIBLY_RECYCLED_PHONE"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/passport/RegisterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/RegisterType;->Ly:Lcom/xiaomi/passport/RegisterType;

    new-instance v0, Lcom/xiaomi/passport/RegisterType;

    const-string/jumbo v1, "EMAIL_REG"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/passport/RegisterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/RegisterType;->Lz:Lcom/xiaomi/passport/RegisterType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/passport/RegisterType;

    sget-object v1, Lcom/xiaomi/passport/RegisterType;->Lv:Lcom/xiaomi/passport/RegisterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/RegisterType;->Lw:Lcom/xiaomi/passport/RegisterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/passport/RegisterType;->Lx:Lcom/xiaomi/passport/RegisterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/passport/RegisterType;->Ly:Lcom/xiaomi/passport/RegisterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/passport/RegisterType;->Lz:Lcom/xiaomi/passport/RegisterType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/passport/RegisterType;->LA:[Lcom/xiaomi/passport/RegisterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/RegisterType;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/RegisterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/RegisterType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/passport/RegisterType;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/RegisterType;->LA:[Lcom/xiaomi/passport/RegisterType;

    return-object v0
.end method
