.class final enum Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;
.super Ljava/lang/Enum;
.source "PersistentAppTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

.field public static final enum CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

.field public static final enum COMPLETED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

.field public static final enum DISUSED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

.field public static final enum NEW:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

.field public static final enum QUEUED_FOR_RETRY:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

.field public static final enum QUEUED_FOR_RUN:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

.field public static final enum RETRY_RUNNING:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

.field public static final enum RUNNING:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

.field public static final enum WAIT_CONDITION:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    .line 116
    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    const-string/jumbo v1, "QUEUED_FOR_RUN"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->QUEUED_FOR_RUN:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    .line 117
    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->RUNNING:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    .line 118
    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    const-string/jumbo v1, "WAIT_CONDITION"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->WAIT_CONDITION:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    .line 119
    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    const-string/jumbo v1, "QUEUED_FOR_RETRY"

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->QUEUED_FOR_RETRY:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    .line 120
    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    const-string/jumbo v1, "RETRY_RUNNING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->RETRY_RUNNING:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    .line 121
    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    const-string/jumbo v1, "COMPLETED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->COMPLETED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    .line 122
    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    const-string/jumbo v1, "CANCELED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    .line 123
    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    const-string/jumbo v1, "DISUSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->DISUSED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    .line 114
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->QUEUED_FOR_RUN:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->RUNNING:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->WAIT_CONDITION:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->QUEUED_FOR_RETRY:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->RETRY_RUNNING:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->COMPLETED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->DISUSED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->$VALUES:[Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const-class v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->$VALUES:[Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    return-object v0
.end method
