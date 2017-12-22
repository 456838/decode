.class final enum Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic Bs:[Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

.field public static final enum Bt:Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

.field public static final enum Bu:Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

.field public static final enum Bv:Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    const-string/jumbo v1, "ALPHANUMERIC"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->Bu:Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    new-instance v0, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    const-string/jumbo v1, "NUMERIC"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->Bv:Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    new-instance v0, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    const-string/jumbo v1, "ALPHA"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->Bt:Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    sget-object v1, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->Bu:Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->Bv:Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->Bt:Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->Bs:[Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static Gs(Ljava/lang/String;)Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->Bu:Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->Bs:[Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    return-object v0
.end method
