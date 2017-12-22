.class Lcom/xiaomi/accountsdk/hasheddeviceidlib/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile XD:Lcom/xiaomi/accountsdk/hasheddeviceidlib/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/d;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/d;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/c;->XD:Lcom/xiaomi/accountsdk/hasheddeviceidlib/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ada()Lcom/xiaomi/accountsdk/hasheddeviceidlib/b;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/c;->XD:Lcom/xiaomi/accountsdk/hasheddeviceidlib/b;

    return-object v0
.end method

.method static synthetic adb(Lcom/xiaomi/accountsdk/hasheddeviceidlib/b;)Lcom/xiaomi/accountsdk/hasheddeviceidlib/b;
    .locals 0

    sput-object p0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/c;->XD:Lcom/xiaomi/accountsdk/hasheddeviceidlib/b;

    return-object p0
.end method
