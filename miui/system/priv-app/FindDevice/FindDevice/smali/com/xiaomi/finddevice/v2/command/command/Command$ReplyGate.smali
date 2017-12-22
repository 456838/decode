.class public final enum Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/command/command/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ReplyGate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

.field public static final enum MEMORY:Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

.field public static final enum NETWORK:Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

.field public static final enum SMS:Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    new-instance v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    const-string/jumbo v1, "NETWORK"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;->NETWORK:Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    .line 124
    new-instance v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    const-string/jumbo v1, "SMS"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;->SMS:Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    .line 125
    new-instance v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    const-string/jumbo v1, "MEMORY"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;->MEMORY:Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    .line 122
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    sget-object v1, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;->NETWORK:Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;->SMS:Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;->MEMORY:Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;->$VALUES:[Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    const-class v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;->$VALUES:[Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    return-object v0
.end method
