.class final enum Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;
.super Ljava/lang/Enum;
.source "PersistentAppTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PWCResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

.field public static final enum CONDITION_SATISFIED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

.field public static final enum TASK_CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

.field public static final enum WAIT_CONDITION:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 672
    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    const-string/jumbo v1, "TASK_CANCELED"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;->TASK_CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    const-string/jumbo v1, "CONDITION_SATISFIED"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;->CONDITION_SATISFIED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    const-string/jumbo v1, "WAIT_CONDITION"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;->WAIT_CONDITION:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;->TASK_CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;->CONDITION_SATISFIED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;->WAIT_CONDITION:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;->$VALUES:[Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 672
    const-class v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;
    .locals 1

    .prologue
    .line 672
    sget-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;->$VALUES:[Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    return-object v0
.end method
