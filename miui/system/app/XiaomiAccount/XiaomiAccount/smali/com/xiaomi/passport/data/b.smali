.class Lcom/xiaomi/passport/data/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final vn:Lcom/xiaomi/passport/data/a;

.field static final vo:Lcom/xiaomi/passport/utils/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/utils/l;

    invoke-static {}, Lcom/xiaomi/accountsdk/account/e;->acG()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "PassportAppConfig"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/utils/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/data/b;->vo:Lcom/xiaomi/passport/utils/l;

    new-instance v0, Lcom/xiaomi/passport/data/a;

    invoke-direct {v0}, Lcom/xiaomi/passport/data/a;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/data/b;->vn:Lcom/xiaomi/passport/data/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
