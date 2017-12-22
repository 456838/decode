.class public Lcom/xiaomi/passport/utils/z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static AY:Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final AZ:Lcom/xiaomi/passport/utils/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;->AW:Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    sput-object v0, Lcom/xiaomi/passport/utils/z;->AY:Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    new-instance v0, Lcom/xiaomi/passport/utils/z;

    invoke-direct {v0}, Lcom/xiaomi/passport/utils/z;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/utils/z;->AZ:Lcom/xiaomi/passport/utils/z;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Gd()Lcom/xiaomi/passport/utils/z;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/xiaomi/passport/utils/z;->AZ:Lcom/xiaomi/passport/utils/z;

    return-object v0
.end method


# virtual methods
.method public Ge(Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    invoke-static {}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;->adn()Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/f;->ado(Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;)V

    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;->AW:Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;->XH:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;->AV:Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;->XG:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
