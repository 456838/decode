.class public abstract enum Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum kZ:Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

.field public static final enum la:Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

.field public static final enum lb:Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

.field private static final synthetic lc:[Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo$1;

    const-string/jumbo v1, "DEVICE"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lb:Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    new-instance v0, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo$2;

    const-string/jumbo v1, "APP"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->kZ:Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    new-instance v0, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo$3;

    const-string/jumbo v1, "BROWSER"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->la:Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    sget-object v1, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lb:Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->kZ:Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->la:Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lc:[Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/xiaomi/account/data/LockedDeviceUIMetaInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static lJ(Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;)Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;
    .locals 2

    sget-object v0, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->ll:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lb:Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->lm:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->kZ:Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    return-object v0

    :cond_1
    sget-object v0, Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;->lk:Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->la:Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this is not expected type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;
    .locals 1

    const-class v0, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;->lc:[Lcom/xiaomi/account/data/LockedDeviceUIMetaInfo;

    return-object v0
.end method


# virtual methods
.method public abstract lK()I
.end method

.method public abstract lL()I
.end method

.method public abstract lM()Ljava/lang/String;
.end method

.method public abstract lN()I
.end method

.method public abstract lO()I
.end method
