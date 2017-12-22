.class public Lcom/xiaomi/phonenum/utils/p;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static acY:Ljava/lang/String;

.field private static volatile acZ:Lcom/xiaomi/phonenum/utils/n;

.field private static volatile ada:Lcom/xiaomi/phonenum/utils/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "phoneNum"

    sput-object v0, Lcom/xiaomi/phonenum/utils/p;->acY:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/phonenum/utils/r;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/utils/r;-><init>()V

    sput-object v0, Lcom/xiaomi/phonenum/utils/p;->acZ:Lcom/xiaomi/phonenum/utils/n;

    new-instance v0, Lcom/xiaomi/phonenum/utils/j;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/utils/j;-><init>()V

    sput-object v0, Lcom/xiaomi/phonenum/utils/p;->ada:Lcom/xiaomi/phonenum/utils/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/phonenum/utils/p;->acY:Ljava/lang/String;

    return-object v0
.end method

.method public static amM()Lcom/xiaomi/phonenum/utils/n;
    .locals 1

    sget-object v0, Lcom/xiaomi/phonenum/utils/p;->ada:Lcom/xiaomi/phonenum/utils/n;

    return-object v0
.end method
