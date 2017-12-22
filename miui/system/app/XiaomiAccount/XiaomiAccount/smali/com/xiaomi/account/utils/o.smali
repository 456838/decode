.class Lcom/xiaomi/account/utils/o;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final md:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/account/utils/n;->oj()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "userTable"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/utils/o;->md:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ok()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/utils/o;->md:Landroid/net/Uri;

    return-object v0
.end method
