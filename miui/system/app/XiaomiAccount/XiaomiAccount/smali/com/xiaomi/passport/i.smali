.class public Lcom/xiaomi/passport/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final LG:Lcom/xiaomi/passport/h;

.field private static LH:Lcom/xiaomi/passport/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/h;

    invoke-direct {v0}, Lcom/xiaomi/passport/h;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/i;->LG:Lcom/xiaomi/passport/h;

    sget-object v0, Lcom/xiaomi/passport/i;->LG:Lcom/xiaomi/passport/h;

    sput-object v0, Lcom/xiaomi/passport/i;->LH:Lcom/xiaomi/passport/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PX()Lcom/xiaomi/passport/h;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/i;->LH:Lcom/xiaomi/passport/h;

    return-object v0
.end method

.method public static PY(Lcom/xiaomi/passport/h;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "PassportUserEnvironment instance cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sput-object p0, Lcom/xiaomi/passport/i;->LH:Lcom/xiaomi/passport/h;

    return-void
.end method
