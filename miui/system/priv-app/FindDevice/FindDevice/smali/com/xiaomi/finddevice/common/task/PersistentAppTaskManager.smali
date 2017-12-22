.class public Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
.super Ljava/lang/Object;
.source "PersistentAppTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;,
        Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;,
        Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;,
        Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;,
        Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;,
        Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;,
        Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;
    }
.end annotation


# static fields
.field private static sDefaultManager:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

.field private static sNamedManager:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private static sTaskContext:Landroid/content/Context;


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDebugRecordLock:Ljava/lang/Object;

.field private mDebugTaskRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;",
            "Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mQueueTaskManager:Lcom/xiaomi/finddevice/common/task/QueueTaskManager;


# direct methods
.method static synthetic -wrap0(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V
    .locals 0
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->onRetryTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V
    .locals 0
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->onRunTaskConditionSatisfied(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V
    .locals 0
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->onRunTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->sDefaultManager:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    .line 147
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 146
    sput-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->sNamedManager:Ljava/util/Map;

    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mDebugTaskRecordMap:Ljava/util/Map;

    .line 962
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mDebugRecordLock:Ljava/lang/Object;

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lmiui/reflect/IllegalArgumentException;

    const-string/jumbo v1, "Name can\'t be empty. "

    invoke-direct {v0, v1}, Lmiui/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    if-nez p2, :cond_1

    .line 162
    new-instance v0, Lmiui/reflect/IllegalArgumentException;

    const-string/jumbo v1, "ctx == null. "

    invoke-direct {v0, v1}, Lmiui/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    .line 166
    iput-object p2, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mCtx:Landroid/content/Context;

    .line 169
    new-instance v0, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;

    const-string/jumbo v1, "PersistentAppTaskManager[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;-><init>(Ljava/lang/String;)V

    .line 168
    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mQueueTaskManager:Lcom/xiaomi/finddevice/common/task/QueueTaskManager;

    .line 157
    return-void
.end method

.method public static attachContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    sput-object p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->sTaskContext:Landroid/content/Context;

    .line 133
    return-void
.end method

.method public static buildPersistentAppTask(Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "time"    # J
    .param p3, "needWakeLock"    # Z
    .param p4, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;
    .param p5, "controller"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    .prologue
    .line 183
    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;-><init>(Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)V

    return-object v0
.end method

.method public static buildSingleTaskController()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;-><init>(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;)V

    return-object v0
.end method

.method private static buildTaskReplacement(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;J)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    .locals 7
    .param p0, "newTask"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    .param p1, "runTime"    # J

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->getName()Ljava/lang/String;

    move-result-object v1

    .line 822
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->needWakeLock()Z

    move-result v4

    .line 823
    iget-object v5, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskRunnable:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;

    .line 824
    iget-object v6, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;

    move-wide v2, p1

    .line 819
    invoke-static/range {v1 .. v6}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->buildPersistentAppTask(Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .line 825
    .local v0, "replacement":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    return-object v0
.end method

.method private static buildTaskReplacement(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    .locals 7
    .param p0, "newTask"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    .param p1, "oldTask"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->getName()Ljava/lang/String;

    move-result-object v1

    .line 809
    invoke-virtual {p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->getRunTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->getRunTime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 810
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->needWakeLock()Z

    move-result v4

    .line 811
    iget-object v5, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskRunnable:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;

    .line 812
    iget-object v6, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;

    .line 807
    invoke-static/range {v1 .. v6}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->buildPersistentAppTask(Ljava/lang/String;JZLcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .line 813
    .local v0, "replacement":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    return-object v0
.end method

.method private debugDumpTaskRecordDRL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;Z)V
    .locals 10
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    .param p2, "r"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;
    .param p3, "finish"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 911
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 912
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_1

    .line 913
    const-string/jumbo v4, "****** "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 918
    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    iget-object v4, p2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;->stateHistory:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 921
    .local v0, "historySize":I
    const-string/jumbo v4, "state history(%s): "

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 924
    if-eqz v2, :cond_0

    const-string/jumbo v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    :cond_0
    iget-object v4, p2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;->stateHistory:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;

    .line 926
    .local v1, "hr":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;
    const-string/jumbo v4, "%s(%s)"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    aput-object v6, v5, v7

    iget v6, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;->reportCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 915
    .end local v0    # "historySize":I
    .end local v1    # "hr":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;
    .end local v2    # "i":I
    :cond_1
    const-string/jumbo v4, "@@@@@@ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 929
    .restart local v0    # "historySize":I
    .restart local v2    # "i":I
    :cond_2
    if-eqz p3, :cond_3

    .line 930
    const-string/jumbo v4, " ******"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    :goto_2
    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    aput-object v5, v4, v7

    aput-object v3, v4, v8

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 910
    return-void

    .line 932
    :cond_3
    const-string/jumbo v4, " @@@@@@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V
    .locals 9
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    .line 836
    iget-object v4, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mDebugRecordLock:Ljava/lang/Object;

    monitor-enter v4

    .line 838
    const/4 v0, 0x0

    .line 840
    .local v0, "addOrRemove":Z
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mDebugTaskRecordMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;

    .line 843
    .local v2, "r":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;
    if-nez v2, :cond_3

    .line 844
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v5, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v3, v5, :cond_0

    .line 845
    new-instance v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;

    .end local v2    # "r":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;
    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;-><init>(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;)V

    .line 846
    .restart local v2    # "r":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;
    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mDebugTaskRecordMap:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    const/4 v0, 0x1

    .line 849
    new-instance v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;

    invoke-direct {v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;-><init>()V

    .line 850
    .local v1, "hr":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;
    sget-object v3, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    iput-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    .line 851
    const/4 v3, 0x0

    iput v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;->reportCount:I

    .line 852
    iget-object v3, v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;->stateHistory:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    :goto_0
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v5, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v3, v5, :cond_4

    .line 871
    iget-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v5, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-eq v3, v5, :cond_4

    .line 872
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 873
    const-string/jumbo v5, "%s: Task %s changed from non-NEW state %s to NEW state. "

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 874
    iget-object v7, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object p1, v6, v7

    iget-object v7, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 873
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 872
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    .end local v1    # "hr":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;
    .end local v2    # "r":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 854
    .restart local v2    # "r":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;
    :cond_0
    :try_start_1
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v5, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v3, v5, :cond_1

    .line 855
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-string/jumbo v5, "****** %s reporting canceling. ******"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 856
    return-void

    .line 858
    :cond_1
    :try_start_2
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v5, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->COMPLETED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v3, v5, :cond_2

    .line 859
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-string/jumbo v5, "****** %s reporting complete. ******"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 860
    return-void

    .line 862
    :cond_2
    :try_start_3
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 863
    const-string/jumbo v5, "%s: Task %s started from non-NEW state %s. "

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 864
    iget-object v7, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object p1, v6, v7

    iget-object v7, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 863
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 862
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 867
    :cond_3
    iget-object v3, v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;->stateHistory:Ljava/util/List;

    iget-object v5, v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;->stateHistory:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;

    .restart local v1    # "hr":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;
    goto/16 :goto_0

    .line 877
    :cond_4
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    iget-object v5, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v3, v5, :cond_6

    .line 878
    iget v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;->reportCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;->reportCount:I

    .line 888
    :goto_1
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v5, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->DISUSED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-eq v3, v5, :cond_5

    .line 889
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v5, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v3, v5, :cond_7

    .line 891
    :cond_5
    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mDebugTaskRecordMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    .line 892
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 893
    const-string/jumbo v5, "%s: null == mDebugTaskRecordMap.remove(task). "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 892
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 880
    :cond_6
    new-instance v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;

    .end local v1    # "hr":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;
    invoke-direct {v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;-><init>()V

    .line 881
    .restart local v1    # "hr":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    iput-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    .line 882
    const/4 v3, 0x1

    iput v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;->reportCount:I

    .line 883
    iget-object v3, v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;->stateHistory:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 890
    :cond_7
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v5, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->COMPLETED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-eq v3, v5, :cond_5

    .line 899
    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugDumpTaskRecordDRL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;Z)V

    .line 902
    :goto_2
    if-eqz v0, :cond_8

    .line 903
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->dubugDumpAllTaskRecordsDRL()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    monitor-exit v4

    .line 834
    return-void

    .line 895
    :cond_9
    const/4 v0, 0x1

    .line 897
    const/4 v3, 0x1

    :try_start_4
    invoke-direct {p0, p1, v2, v3}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugDumpTaskRecordDRL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private doHandleConditionSatisfied(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V
    .locals 10
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    .line 424
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;

    if-eqz v3, :cond_9

    .line 425
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;

    instance-of v3, v3, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;

    if-eqz v3, :cond_9

    .line 426
    iget-object v1, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;

    check-cast v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;

    .line 428
    .local v1, "singleTaskController":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;
    iget-object v4, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 429
    move-object v2, p1

    .line 431
    .local v2, "taskToRetry":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :try_start_0
    iget-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    if-eqz v3, :cond_4

    .line 432
    iget-object v0, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .line 434
    .local v0, "pendingTask":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-string/jumbo v5, "Cancel passed in to-retry task: %s. "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 435
    iget-object v5, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 436
    :try_start_1
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v6, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v3, v6, :cond_0

    .line 437
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    const-string/jumbo v6, "Already canceled. "

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    .line 438
    return-void

    .line 440
    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performCancelTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 441
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "%s: Passed in to-retry task completed. "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 435
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v5

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 428
    .end local v0    # "pendingTask":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "pendingTask":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :cond_1
    :try_start_5
    monitor-exit v5

    .line 444
    iget-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    if-eq v3, p1, :cond_2

    .line 445
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "%s: singleTaskController.ongoingTask != task"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 447
    :cond_2
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .line 449
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-string/jumbo v5, "Cancel pending task: %s. "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 450
    iget-object v7, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 449
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 451
    iget-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    iget-object v5, v3, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 452
    :try_start_6
    iget-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    invoke-direct {p0, v3}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performCancelTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 453
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "%s: Pending task completed. "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 451
    :catchall_2
    move-exception v3

    :try_start_7
    monitor-exit v5

    throw v3

    :cond_3
    monitor-exit v5

    .line 456
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .line 458
    invoke-virtual {p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->getRunTime()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->buildTaskReplacement(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;J)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    move-result-object v2

    .line 459
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-string/jumbo v5, "Replace the passed in to-retry task with: %s. "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 462
    .end local v0    # "pendingTask":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :cond_4
    iget-object v5, v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 463
    :try_start_8
    invoke-direct {p0, v2}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performQueueTaskForRetryTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 464
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    const-string/jumbo v6, "Task canceled. "

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit v4

    .line 465
    return-void

    :cond_5
    :try_start_a
    monitor-exit v5

    .line 468
    iget-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    if-eqz v3, :cond_6

    .line 469
    iget-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    if-eq v3, v2, :cond_8

    .line 470
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "%s: singleTaskController.ongoingTask != taskToRetry"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 462
    :catchall_3
    move-exception v3

    monitor-exit v5

    throw v3

    .line 473
    :cond_6
    if-ne p1, v2, :cond_7

    .line 474
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "%s: task == taskToRetry"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 476
    :cond_7
    iput-object v2, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_8
    monitor-exit v4

    .line 480
    return-void

    .line 484
    .end local v1    # "singleTaskController":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;
    .end local v2    # "taskToRetry":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :cond_9
    iget-object v4, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 485
    :try_start_b
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performQueueTaskForRetryTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 486
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "Task canceled. "

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    monitor-exit v4

    .line 487
    return-void

    :cond_a
    monitor-exit v4

    .line 422
    return-void

    .line 484
    :catchall_4
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private doRunTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;Z)V
    .locals 10
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    .param p2, "retry"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 365
    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    aput-object v4, v3, v7

    const-string/jumbo v4, "Retry? %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 367
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskRunnable:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;

    iget-object v4, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mCtx:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask$PersistentAppTaskRunnable;->run(Landroid/content/Context;)Lcom/xiaomi/finddevice/common/task/RunCondition;

    move-result-object v1

    .line 369
    .local v1, "runCondition":Lcom/xiaomi/finddevice/common/task/RunCondition;
    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    aput-object v4, v3, v7

    const-string/jumbo v4, "Run completed with condition: %s. "

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 371
    if-eqz v1, :cond_3

    .line 373
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 374
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performWaitConditionTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;Lcom/xiaomi/finddevice/common/task/RunCondition;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "rst":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;
    monitor-exit v3

    .line 376
    sget-object v3, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;->TASK_CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    if-ne v0, v3, :cond_0

    .line 377
    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    aput-object v4, v3, v7

    const-string/jumbo v4, "Task canceled. "

    aput-object v4, v3, v8

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 378
    return-void

    .line 373
    .end local v0    # "rst":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 380
    .restart local v0    # "rst":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;
    :cond_0
    sget-object v3, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;->WAIT_CONDITION:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    if-ne v0, v3, :cond_1

    .line 381
    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    aput-object v4, v3, v7

    const-string/jumbo v4, "Wait condition. "

    aput-object v4, v3, v8

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 382
    return-void

    .line 384
    :cond_1
    sget-object v3, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;->CONDITION_SATISFIED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;

    if-ne v0, v3, :cond_2

    .line 385
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->doHandleConditionSatisfied(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 386
    return-void

    .line 388
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "%s: Bad PWCResult. "

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 390
    .end local v0    # "rst":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;
    :cond_3
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;

    if-eqz v3, :cond_6

    .line 391
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;

    instance-of v3, v3, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;

    if-eqz v3, :cond_6

    .line 392
    iget-object v2, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;

    check-cast v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;

    .line 394
    .local v2, "singleTaskController":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;
    iget-object v4, v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 395
    :try_start_1
    iget-object v5, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 396
    :try_start_2
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performCompleteTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 397
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    const-string/jumbo v6, "Task canceled. "

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v4

    .line 398
    return-void

    :cond_4
    :try_start_4
    monitor-exit v5

    .line 401
    iget-object v3, v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    if-eq v3, p1, :cond_5

    .line 402
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "%s: singleTaskController.ongoingTask != task"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 394
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 395
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v5

    throw v3

    .line 404
    :cond_5
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v4

    .line 407
    return-void

    .line 411
    .end local v2    # "singleTaskController":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;
    :cond_6
    iget-object v4, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 412
    :try_start_6
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performCompleteTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 413
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-string/jumbo v5, "Task canceled. "

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v4

    .line 414
    return-void

    :cond_7
    monitor-exit v4

    .line 364
    return-void

    .line 411
    :catchall_3
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private dubugDumpAllTaskRecordsDRL()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 939
    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string/jumbo v3, "############################## start(%s) #################################"

    new-array v4, v7, [Ljava/lang/Object;

    .line 940
    iget-object v5, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mDebugTaskRecordMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 939
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 941
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mDebugTaskRecordMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "re$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 942
    .local v0, "re":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;

    invoke-direct {p0, v2, v3, v6}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugDumpTaskRecordDRL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;Z)V

    goto :goto_0

    .line 944
    .end local v0    # "re":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;>;"
    :cond_0
    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string/jumbo v3, "############################## end #################################"

    aput-object v3, v2, v7

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 938
    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    monitor-enter v2

    .line 149
    :try_start_0
    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->sNamedManager:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    .line 150
    .local v0, "manager":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    .end local v0    # "manager":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->sTaskContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 152
    .restart local v0    # "manager":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->sNamedManager:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 154
    return-object v0

    .end local v0    # "manager":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private onRetryTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V
    .locals 5
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    const/4 v0, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 352
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, "Retry task: %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 354
    iget-object v1, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performRetryRunTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string/jumbo v2, "Task canceled. "

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 357
    return-void

    :cond_0
    monitor-exit v1

    .line 360
    invoke-direct {p0, p1, v3}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->doRunTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;Z)V

    .line 351
    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onRunTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V
    .locals 9
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 296
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string/jumbo v3, "Run task: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 298
    iget-object v1, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;

    .line 299
    .local v1, "taskController":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;
    if-eqz v1, :cond_4

    .line 300
    instance-of v2, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 301
    check-cast v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;

    .line 303
    .local v0, "singleTaskController":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;
    iget-object v3, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 304
    :try_start_0
    iget-object v4, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :try_start_1
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performRunTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const-string/jumbo v5, "Task canceled. "

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 307
    return-void

    :cond_0
    :try_start_3
    monitor-exit v4

    .line 311
    iget-object v2, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    if-eq v2, p1, :cond_1

    .line 312
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "%s: singleTaskController.pendingTask != task"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 304
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v4

    throw v2

    .line 314
    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .line 316
    iget-object v2, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    if-eqz v2, :cond_3

    .line 317
    iget-object v2, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    iget-object v4, v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 318
    :try_start_5
    iget-object v2, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    invoke-direct {p0, v2}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performCancelTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 319
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "%s: singleTaskController.ongoingTask has complete. "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 317
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v4

    throw v2

    :cond_2
    monitor-exit v4

    .line 322
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .line 324
    :cond_3
    iput-object p1, v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v3

    .line 327
    invoke-direct {p0, p1, v5}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->doRunTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;Z)V

    .line 328
    return-void

    .line 332
    .end local v0    # "singleTaskController":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;
    :cond_4
    iget-object v3, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 333
    :try_start_7
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performRunTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 334
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string/jumbo v4, "Task canceled. "

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit v3

    .line 335
    return-void

    :cond_5
    monitor-exit v3

    .line 338
    invoke-direct {p0, p1, v5}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->doRunTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;Z)V

    .line 295
    return-void

    .line 332
    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private onRunTaskConditionSatisfied(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V
    .locals 5
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 344
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, "Queue task for retry: %s. "

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 346
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->doHandleConditionSatisfied(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 343
    return-void
.end method

.method private performCancelTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z
    .locals 5
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 515
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 518
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 520
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->DISUSED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_0

    .line 521
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: Disused. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    :catchall_0
    move-exception v0

    .line 574
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 572
    throw v0

    .line 523
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_1

    .line 524
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: Not added. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_1
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_2

    .line 527
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: Already canceled. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_2
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->COMPLETED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_3

    .line 530
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "COMPLETE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 531
    return v3

    .line 533
    :cond_3
    :try_start_2
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->QUEUED_FOR_RUN:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_5

    .line 534
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "QUEUED_FOR_RUN"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 535
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->queueTask:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    if-nez v0, :cond_4

    .line 536
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: queueTask == null at state QUEUED_FOR_RUN. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mQueueTaskManager:Lcom/xiaomi/finddevice/common/task/QueueTaskManager;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mCtx:Landroid/content/Context;

    iget-object v2, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->queueTask:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->cancelTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;)Z

    .line 539
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->queueTask:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    .line 562
    :goto_0
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->queueTask:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    if-eqz v0, :cond_c

    .line 563
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: task.queueTask should be null at this point. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_5
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->RUNNING:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_6

    .line 541
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "RUNNING"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 542
    :cond_6
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->WAIT_CONDITION:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_8

    .line 543
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "WATI_CONDITION"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 544
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->runCondition:Lcom/xiaomi/finddevice/common/task/RunCondition;

    if-nez v0, :cond_7

    .line 545
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: task.runCondition == null at state WAIT_CONDITION. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_7
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->runCondition:Lcom/xiaomi/finddevice/common/task/RunCondition;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/RunCondition;->destroy(Landroid/content/Context;)V

    .line 548
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->runCondition:Lcom/xiaomi/finddevice/common/task/RunCondition;

    goto :goto_0

    .line 549
    :cond_8
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->QUEUED_FOR_RETRY:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_a

    .line 550
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "QUEUE_FOR_RETRY"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 551
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->queueTask:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    if-nez v0, :cond_9

    .line 552
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: queueTask == null at state QUEUED_FOR_RETRY. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mQueueTaskManager:Lcom/xiaomi/finddevice/common/task/QueueTaskManager;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mCtx:Landroid/content/Context;

    iget-object v2, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->queueTask:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->cancelTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;)Z

    .line 555
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->queueTask:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    goto/16 :goto_0

    .line 556
    :cond_a
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->RETRY_RUNNING:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_b

    .line 557
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "RETRY_RUNNING"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 559
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: Bad state. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_c
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->runCondition:Lcom/xiaomi/finddevice/common/task/RunCondition;

    if-eqz v0, :cond_d

    .line 566
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: task.runCondition should be null at this point. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_d
    sget-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 574
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 571
    return v4
.end method

.method private performCompleteTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z
    .locals 5
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 777
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 780
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 782
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_0

    .line 783
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "CANCELED. "

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 784
    return v3

    .line 787
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->RUNNING:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_1

    .line 788
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "RUNNING"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 795
    :goto_0
    sget-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->COMPLETED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 796
    return v4

    .line 789
    :cond_1
    :try_start_2
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->RETRY_RUNNING:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_2

    .line 790
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "RETRY_RUNNING"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 797
    :catchall_0
    move-exception v0

    .line 799
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 797
    throw v0

    .line 792
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: Bad state. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private performDisuseTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V
    .locals 5
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 499
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 500
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-eq v0, v1, :cond_0

    .line 501
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: Not a new task. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :catchall_0
    move-exception v0

    .line 506
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 504
    throw v0

    .line 503
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->DISUSED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 494
    return-void
.end method

.method private performQueueTaskForRetryTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z
    .locals 9
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 719
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 722
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 724
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_0

    .line 725
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "CANCELED. "

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 726
    return v3

    .line 728
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->WAIT_CONDITION:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_2

    .line 729
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "WAIT_CONDITION"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 730
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->runCondition:Lcom/xiaomi/finddevice/common/task/RunCondition;

    if-nez v0, :cond_1

    .line 731
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: task.runCondition == null but at the state WAIT_CONDITION"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    :catchall_0
    move-exception v0

    .line 768
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 766
    throw v0

    .line 733
    :cond_1
    :try_start_2
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->runCondition:Lcom/xiaomi/finddevice/common/task/RunCondition;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/RunCondition;->destroy(Landroid/content/Context;)V

    .line 734
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->runCondition:Lcom/xiaomi/finddevice/common/task/RunCondition;

    .line 751
    :goto_0
    iget-object v6, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mQueueTaskManager:Lcom/xiaomi/finddevice/common/task/QueueTaskManager;

    iget-object v7, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mCtx:Landroid/content/Context;

    .line 753
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mCtx:Landroid/content/Context;

    .line 754
    const-string/jumbo v1, "PersistentAppTaskManager[%s]:PersistentAppTaskInner[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 755
    invoke-virtual {p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->getRunTime()J

    move-result-wide v2

    .line 756
    invoke-virtual {p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->needWakeLock()Z

    move-result v4

    .line 757
    new-instance v5, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$3;

    invoke-direct {v5, p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$3;-><init>(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 752
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->buildQueueTask(Landroid/content/Context;Ljava/lang/String;JZLjava/lang/Runnable;)Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    move-result-object v0

    .line 751
    invoke-virtual {v6, v7, v0}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->addTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;)Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->queueTask:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    .line 764
    sget-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->QUEUED_FOR_RETRY:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 768
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 765
    return v8

    .line 735
    :cond_2
    :try_start_3
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->RUNNING:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_3

    .line 738
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "RUNNING"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 739
    :cond_3
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->RETRY_RUNNING:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_4

    .line 742
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "RETRY_RUNNING"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 743
    :cond_4
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_5

    .line 746
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "NEW"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 748
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: Bad state. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private performQueueTaskForRunTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V
    .locals 8
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 584
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 586
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->NEW:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-eq v0, v1, :cond_0

    .line 587
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: Not a new task. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :catchall_0
    move-exception v0

    .line 606
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 604
    throw v0

    .line 590
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mQueueTaskManager:Lcom/xiaomi/finddevice/common/task/QueueTaskManager;

    iget-object v7, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mCtx:Landroid/content/Context;

    .line 592
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mCtx:Landroid/content/Context;

    .line 593
    const-string/jumbo v1, "PersistentAppTaskManager[%s]:PersistentAppTaskInner[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-virtual {p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->getRunTime()J

    move-result-wide v2

    .line 595
    invoke-virtual {p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->needWakeLock()Z

    move-result v4

    .line 596
    new-instance v5, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$1;

    invoke-direct {v5, p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$1;-><init>(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 591
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->buildQueueTask(Landroid/content/Context;Ljava/lang/String;JZLjava/lang/Runnable;)Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    move-result-object v0

    .line 590
    invoke-virtual {v6, v7, v0}, Lcom/xiaomi/finddevice/common/task/QueueTaskManager;->addTask(Landroid/content/Context;Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;)Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->queueTask:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    .line 603
    sget-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->QUEUED_FOR_RUN:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 579
    return-void
.end method

.method private performRetryRunTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z
    .locals 5
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 646
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 649
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 651
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_0

    .line 652
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "CANCELED. "

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 653
    return v3

    .line 655
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->QUEUED_FOR_RETRY:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-eq v0, v1, :cond_1

    .line 656
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: Not at the state queued for retry. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    :catchall_0
    move-exception v0

    .line 667
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 665
    throw v0

    .line 658
    :cond_1
    :try_start_2
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->queueTask:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    if-nez v0, :cond_2

    .line 659
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: task.queueTask == null. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->queueTask:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    .line 663
    sget-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->RETRY_RUNNING:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 667
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 664
    return v4
.end method

.method private performRunTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z
    .locals 5
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 616
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 619
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 621
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v0, v1, :cond_0

    .line 622
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "CANCELED. "

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 623
    return v3

    .line 625
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->QUEUED_FOR_RUN:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-eq v0, v1, :cond_1

    .line 626
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: Not at the state queued for run. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    :catchall_0
    move-exception v0

    .line 637
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 635
    throw v0

    .line 628
    :cond_1
    :try_start_2
    iget-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->queueTask:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    if-nez v0, :cond_2

    .line 629
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "%s: task.queueTask == null. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->queueTask:Lcom/xiaomi/finddevice/common/task/QueueTaskManager$QueueTask;

    .line 633
    sget-object v0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->RUNNING:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    iput-object v0, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 637
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 634
    return v4
.end method

.method private performWaitConditionTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;Lcom/xiaomi/finddevice/common/task/RunCondition;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;
    .locals 6
    .param p1, "task"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    .param p2, "condition"    # Lcom/xiaomi/finddevice/common/task/RunCondition;

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 678
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 680
    iget-object v1, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v1, v2, :cond_0

    .line 681
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "CANCELED. "

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 682
    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mCtx:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/xiaomi/finddevice/common/task/RunCondition;->destroy(Landroid/content/Context;)V

    .line 683
    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;->TASK_CANCELED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 683
    return-object v1

    .line 685
    :cond_0
    :try_start_1
    iget-object v1, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->RUNNING:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v1, v2, :cond_1

    .line 686
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "RUNNING. "

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 693
    :goto_0
    new-instance v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$2;-><init>(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    invoke-virtual {p2, v1}, Lcom/xiaomi/finddevice/common/task/RunCondition;->wait(Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;)Z

    move-result v0

    .line 700
    .local v0, "satisfied":Z
    if-eqz v0, :cond_3

    .line 701
    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mCtx:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/xiaomi/finddevice/common/task/RunCondition;->destroy(Landroid/content/Context;)V

    .line 702
    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;->CONDITION_SATISFIED:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 702
    return-object v1

    .line 687
    .end local v0    # "satisfied":Z
    :cond_1
    :try_start_2
    iget-object v1, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    sget-object v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->RETRY_RUNNING:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    if-ne v1, v2, :cond_2

    .line 688
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "RETRY RUNNING. "

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 708
    :catchall_0
    move-exception v1

    .line 710
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 708
    throw v1

    .line 690
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "%s: Bad state. "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 705
    .restart local v0    # "satisfied":Z
    :cond_3
    iput-object p2, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->runCondition:Lcom/xiaomi/finddevice/common/task/RunCondition;

    .line 706
    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;->WAIT_CONDITION:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    iput-object v1, p1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;

    .line 707
    sget-object v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;->WAIT_CONDITION:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PWCResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 710
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->debugReportTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V

    .line 707
    return-object v1
.end method


# virtual methods
.method public addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    .locals 12
    .param p1, "t"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    .line 197
    check-cast v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .line 199
    .local v2, "task":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    aput-object v6, v5, v8

    const-string/jumbo v6, "Add task: %s. "

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 201
    iget-object v3, v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;

    .line 202
    .local v3, "taskController":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;
    if-eqz v3, :cond_2

    .line 203
    instance-of v5, v3, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;

    if-eqz v5, :cond_2

    move-object v1, v3

    .line 204
    check-cast v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;

    .line 206
    .local v1, "singleTaskController":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;
    iget-object v6, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 207
    move-object v4, v2

    .line 209
    .local v4, "taskToAdd":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :try_start_0
    iget-object v5, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    if-eqz v5, :cond_1

    .line 210
    iget-object v0, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .line 212
    .local v0, "pendingTask":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v5, v8

    const-string/jumbo v7, "Cancel pendingTask: %s. "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 213
    iget-object v9, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 212
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 214
    iget-object v5, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    iget-object v7, v5, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 215
    :try_start_1
    iget-object v5, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    invoke-direct {p0, v5}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performCancelTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 216
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "%s: Pending task completed. "

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 206
    .end local v0    # "pendingTask":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v0    # "pendingTask":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :cond_0
    :try_start_3
    monitor-exit v7

    .line 219
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .line 221
    iget-object v5, v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    :try_start_4
    invoke-direct {p0, v2}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performDisuseTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v5

    .line 225
    invoke-static {v2, v0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->buildTaskReplacement(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    move-result-object v4

    .line 226
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v5, v8

    const-string/jumbo v7, "Replace the passed in task with: %s. "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 229
    .end local v0    # "pendingTask":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :cond_1
    iget-object v5, v4, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 230
    :try_start_6
    invoke-direct {p0, v4}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performQueueTaskForRunTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    monitor-exit v5

    .line 232
    iput-object v4, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit v6

    .line 235
    return-object v2

    .line 221
    .restart local v0    # "pendingTask":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :catchall_2
    move-exception v7

    :try_start_8
    monitor-exit v5

    throw v7

    .line 229
    .end local v0    # "pendingTask":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :catchall_3
    move-exception v7

    monitor-exit v5

    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 239
    .end local v1    # "singleTaskController":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;
    .end local v4    # "taskToAdd":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :cond_2
    iget-object v5, v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 240
    :try_start_9
    invoke-direct {p0, v2}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performQueueTaskForRunTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    monitor-exit v5

    .line 242
    return-object v2

    .line 239
    :catchall_4
    move-exception v6

    monitor-exit v5

    throw v6
.end method

.method public cancelTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Z
    .locals 10
    .param p1, "t"    # Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    move-object v2, p1

    .line 253
    check-cast v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .line 255
    .local v2, "task":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    aput-object v4, v3, v6

    const-string/jumbo v4, "Cancel task: %s. "

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 257
    iget-object v3, v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;

    if-eqz v3, :cond_4

    .line 258
    iget-object v3, v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;

    instance-of v3, v3, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;

    if-eqz v3, :cond_4

    .line 259
    iget-object v1, v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->taskController:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;

    check-cast v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;

    .line 261
    .local v1, "singleTaskController":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;
    const/4 v0, 0x0

    .line 263
    .local v0, "haveTask":Z
    iget-object v4, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 264
    :try_start_0
    iget-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    if-eqz v3, :cond_1

    .line 265
    const/4 v0, 0x1

    .line 266
    iget-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    iget-object v5, v3, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 267
    :try_start_1
    iget-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    invoke-direct {p0, v3}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performCancelTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "%s: Pending task has completed. "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v5

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 263
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    :try_start_3
    monitor-exit v5

    .line 271
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    .line 273
    :cond_1
    iget-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    if-eqz v3, :cond_3

    .line 274
    const/4 v0, 0x1

    .line 275
    iget-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    iget-object v5, v3, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 276
    :try_start_4
    iget-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

    invoke-direct {p0, v3}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performCancelTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 277
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "%s: ongint task has completed. "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->mName:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 275
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v5

    throw v3

    :cond_2
    monitor-exit v5

    .line 280
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;->ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    monitor-exit v4

    .line 284
    return v0

    .line 288
    .end local v0    # "haveTask":Z
    .end local v1    # "singleTaskController":Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;
    :cond_4
    iget-object v3, v2, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 289
    :try_start_6
    invoke-direct {p0, v2}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->performCancelTaskTL(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result v4

    monitor-exit v3

    return v4

    .line 288
    :catchall_3
    move-exception v4

    monitor-exit v3

    throw v4
.end method
