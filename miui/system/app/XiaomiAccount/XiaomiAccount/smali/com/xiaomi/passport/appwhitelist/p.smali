.class Lcom/xiaomi/passport/appwhitelist/p;
.super Lcom/xiaomi/passport/appwhitelist/o;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/appwhitelist/o;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/appwhitelist/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/appwhitelist/p;-><init>()V

    return-void
.end method

.method private OF(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "query_frequency_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private OG(Ljava/lang/String;)Lcom/xiaomi/passport/appwhitelist/m;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/appwhitelist/p;->OF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/appwhitelist/p;->OC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/appwhitelist/m;->Ov(Ljava/lang/String;)Lcom/xiaomi/passport/appwhitelist/m;

    move-result-object v0

    return-object v0
.end method

.method private OH(Ljava/lang/String;Lcom/xiaomi/passport/appwhitelist/m;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/appwhitelist/p;->OF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/passport/appwhitelist/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/appwhitelist/p;->OB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic OI(Lcom/xiaomi/passport/appwhitelist/p;Ljava/lang/String;)Lcom/xiaomi/passport/appwhitelist/m;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/appwhitelist/p;->OG(Ljava/lang/String;)Lcom/xiaomi/passport/appwhitelist/m;

    move-result-object v0

    return-object v0
.end method

.method static synthetic OJ(Lcom/xiaomi/passport/appwhitelist/p;Ljava/lang/String;Lcom/xiaomi/passport/appwhitelist/m;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/appwhitelist/p;->OH(Ljava/lang/String;Lcom/xiaomi/passport/appwhitelist/m;)V

    return-void
.end method
