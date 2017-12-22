.class public final enum Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/command/command/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VERSION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

.field public static final enum V0:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

.field public static final enum V1:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    const-string/jumbo v1, "V0"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;->V0:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    new-instance v0, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    const-string/jumbo v1, "V1"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;-><init>(Ljava/lang/String;I)V

    .line 58
    sput-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;->V1:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    sget-object v1, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;->V0:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;->V1:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;->$VALUES:[Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;->$VALUES:[Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    return-object v0
.end method
