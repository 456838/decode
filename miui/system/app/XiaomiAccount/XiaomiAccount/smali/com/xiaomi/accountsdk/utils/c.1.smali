.class Lcom/xiaomi/accountsdk/utils/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile Zj:Lcom/xiaomi/accountsdk/utils/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/utils/d;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/d;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/c;->Zj:Lcom/xiaomi/accountsdk/utils/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ahc()Lcom/xiaomi/accountsdk/utils/b;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/c;->Zj:Lcom/xiaomi/accountsdk/utils/b;

    return-object v0
.end method

.method static synthetic ahd(Lcom/xiaomi/accountsdk/utils/b;)Lcom/xiaomi/accountsdk/utils/b;
    .locals 0

    sput-object p0, Lcom/xiaomi/accountsdk/utils/c;->Zj:Lcom/xiaomi/accountsdk/utils/b;

    return-object p0
.end method
