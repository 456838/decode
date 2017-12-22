.class public final enum Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum AV:Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

.field public static final enum AW:Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

.field private static final synthetic AX:[Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    const-string/jumbo v1, "RUNTIME_DEVICE_ID_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;->AW:Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    new-instance v0, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    const-string/jumbo v1, "CACHED_THEN_RUNTIME_THEN_PSEUDO"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;->AV:Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    sget-object v1, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;->AW:Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;->AV:Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;->AX:[Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;->AX:[Lcom/xiaomi/passport/utils/HashedDeviceIdUtil$DeviceIdPolicy;

    return-object v0
.end method
