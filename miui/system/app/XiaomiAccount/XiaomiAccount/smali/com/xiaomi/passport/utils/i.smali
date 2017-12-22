.class public final Lcom/xiaomi/passport/utils/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zO:Lcom/xiaomi/passport/utils/u;

.field private zP:Ljava/lang/Runnable;

.field private zQ:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic Ds(Lcom/xiaomi/passport/utils/i;)Lcom/xiaomi/passport/utils/u;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/i;->zO:Lcom/xiaomi/passport/utils/u;

    return-object v0
.end method

.method static synthetic Dt(Lcom/xiaomi/passport/utils/i;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/i;->zP:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic Du(Lcom/xiaomi/passport/utils/i;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/i;->zQ:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public Dp(Lcom/xiaomi/passport/utils/u;)Lcom/xiaomi/passport/utils/i;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/utils/i;->zO:Lcom/xiaomi/passport/utils/u;

    return-object p0
.end method

.method public Dq(Ljava/lang/Runnable;)Lcom/xiaomi/passport/utils/i;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/utils/i;->zP:Ljava/lang/Runnable;

    return-object p0
.end method

.method public Dr(Ljava/lang/Runnable;)Lcom/xiaomi/passport/utils/i;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/utils/i;->zQ:Ljava/lang/Runnable;

    return-object p0
.end method

.method public build()Lcom/xiaomi/passport/utils/g;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/utils/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/passport/utils/g;-><init>(Lcom/xiaomi/passport/utils/i;Lcom/xiaomi/passport/utils/g;)V

    return-object v0
.end method
