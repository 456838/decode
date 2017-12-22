.class public Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static XJ:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

.field private static final XL:Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;


# instance fields
.field private XK:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;->XH:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    sput-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;->XJ:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;->XL:Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;->XJ:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;->XK:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    return-void
.end method

.method public static adn()Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;->XL:Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;

    return-object v0
.end method

.method static synthetic adp(Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;)Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;->XK:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    return-object v0
.end method


# virtual methods
.method public ado(Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;->XK:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    return-void
.end method
