.class Lcom/xiaomi/passport/appwhitelist/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KD:Lcom/xiaomi/passport/appwhitelist/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/appwhitelist/a;-><init>(Lcom/xiaomi/passport/appwhitelist/a;)V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/c;->KD:Lcom/xiaomi/passport/appwhitelist/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic Oa()Lcom/xiaomi/passport/appwhitelist/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/appwhitelist/c;->KD:Lcom/xiaomi/passport/appwhitelist/a;

    return-object v0
.end method
