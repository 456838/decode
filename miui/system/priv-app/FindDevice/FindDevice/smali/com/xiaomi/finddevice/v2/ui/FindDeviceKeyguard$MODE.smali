.class final enum Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;
.super Ljava/lang/Enum;
.source "FindDeviceKeyguard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

.field public static final enum DEBT:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

.field public static final enum NORMAL:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 305
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;->NORMAL:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    .line 306
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    const-string/jumbo v1, "DEBT"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;->DEBT:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    .line 304
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;->NORMAL:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;->DEBT:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;->$VALUES:[Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 304
    const-class v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;
    .locals 1

    .prologue
    .line 304
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;->$VALUES:[Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$MODE;

    return-object v0
.end method
