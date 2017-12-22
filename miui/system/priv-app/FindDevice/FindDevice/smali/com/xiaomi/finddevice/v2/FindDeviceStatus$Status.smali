.class public final enum Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
.super Ljava/lang/Enum;
.source "FindDeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

.field public static final enum CLOSED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

.field public static final enum LOCKED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

.field public static final enum LOST:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

.field public static final enum OPENED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;


# instance fields
.field private mServerTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    const-string/jumbo v1, "OPENED"

    const-string/jumbo v2, "on"

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->OPENED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .line 11
    new-instance v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    const-string/jumbo v1, "CLOSED"

    const-string/jumbo v2, "off"

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->CLOSED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .line 12
    new-instance v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    const-string/jumbo v1, "LOCKED"

    const-string/jumbo v2, "locked"

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOCKED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .line 13
    new-instance v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    const-string/jumbo v1, "LOST"

    .line 14
    const-string/jumbo v2, "lost"

    .line 13
    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    sput-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOST:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    sget-object v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->OPENED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->CLOSED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOCKED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOST:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->$VALUES:[Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "serverTag"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->mServerTag:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static getFromServerMark(Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->values()[Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 43
    .local v0, "value":Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->getServerTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    return-object v0

    .line 42
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "value":Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isLockStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)Z
    .locals 2
    .param p0, "status"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .prologue
    const/4 v0, 0x1

    .line 23
    sget-object v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOCKED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    if-eq p0, v1, :cond_0

    .line 24
    sget-object v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOST:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    if-ne p0, v1, :cond_1

    .line 23
    :cond_0
    :goto_0
    return v0

    .line 24
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLostStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)Z
    .locals 1
    .param p0, "status"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .prologue
    .line 28
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOST:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)Z
    .locals 2
    .param p0, "status"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .prologue
    const/4 v0, 0x1

    .line 17
    sget-object v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->OPENED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    if-eq p0, v1, :cond_0

    .line 18
    sget-object v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOCKED:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    if-ne p0, v1, :cond_1

    .line 17
    :cond_0
    :goto_0
    return v0

    .line 19
    :cond_1
    sget-object v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->LOST:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->$VALUES:[Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    return-object v0
.end method


# virtual methods
.method public getServerTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->mServerTag:Ljava/lang/String;

    return-object v0
.end method
