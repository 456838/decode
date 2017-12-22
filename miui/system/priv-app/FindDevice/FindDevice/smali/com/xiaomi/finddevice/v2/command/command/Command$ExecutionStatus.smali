.class public final enum Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/command/command/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ExecutionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

.field public static final enum CONTINUE:Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

.field public static final enum FINISHED:Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-instance v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    const-string/jumbo v1, "FINISHED"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;->FINISHED:Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    .line 119
    new-instance v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    const-string/jumbo v1, "CONTINUE"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;->CONTINUE:Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    sget-object v1, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;->FINISHED:Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;->CONTINUE:Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;->$VALUES:[Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    const-class v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;->$VALUES:[Lcom/xiaomi/finddevice/v2/command/command/Command$ExecutionStatus;

    return-object v0
.end method
