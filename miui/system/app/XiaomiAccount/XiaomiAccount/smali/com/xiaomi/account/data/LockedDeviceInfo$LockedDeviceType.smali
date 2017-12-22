.class public final enum Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum lk:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

.field public static final enum ll:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

.field public static final enum lm:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

.field private static final synthetic ln:[Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    const-string/jumbo v1, "DEVICE"

    const-string/jumbo v2, "device"

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->ll:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    new-instance v0, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    const-string/jumbo v1, "APP"

    const-string/jumbo v2, "app"

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->lm:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    new-instance v0, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    const-string/jumbo v1, "BROWSER"

    const-string/jumbo v2, "browser"

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->lk:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    sget-object v1, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->ll:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->lm:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->lk:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->ln:[Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->value:Ljava/lang/String;

    return-void
.end method

.method public static ml(Ljava/lang/String;)Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;
    .locals 5

    invoke-static {}, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->values()[Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, v3, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;
    .locals 1

    const-class v0, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->ln:[Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    return-object v0
.end method
