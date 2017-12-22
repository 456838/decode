.class final enum Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;
.super Ljava/lang/Enum;
.source "QueueTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

.field public static final enum CANCELED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

.field public static final enum COMPLETED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

.field public static final enum NEW:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

.field public static final enum QUEUED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

.field public static final enum RUNNING:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

.field public static final enum SCHEDULED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    new-instance v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    new-instance v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    const-string/jumbo v1, "QUEUED"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->QUEUED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    new-instance v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    const-string/jumbo v1, "SCHEDULED"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->SCHEDULED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    new-instance v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->RUNNING:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    new-instance v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    const-string/jumbo v1, "COMPLETED"

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->COMPLETED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    new-instance v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    const-string/jumbo v1, "CANCELED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->QUEUED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->SCHEDULED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->RUNNING:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->COMPLETED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->$VALUES:[Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const-class v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;->$VALUES:[Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTaskInner$STATE;

    return-object v0
.end method
