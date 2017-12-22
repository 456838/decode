.class Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;
.super Ljava/lang/Object;
.source "PhoneInfoUpdateTask.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivateSimsIfFindDeviceOpenSubTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;
    }
.end annotation


# static fields
.field private static sSingleTaskControllerMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;",
            "Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mParam:Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    sput-object v0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->sSingleTaskControllerMap:Ljava/util/ArrayList;

    .line 119
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "simIndex"    # I
    .param p2, "activateMethod"    # I

    .prologue
    .line 161
    new-instance v0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;-><init>(Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;)V
    .locals 5
    .param p1, "param"    # Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->mParam:Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;

    .line 156
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "ActivateSimsIfFindDeviceOpenSubTask created: %s. "

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->mParam:Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method private static startActivateSimIfNotVirtualSim(Landroid/content/Context;II)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .param p2, "activateMethod"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 214
    invoke-static {p0, p1}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;->isVirtualSimCard(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Skip virtual SIM at %s. "

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 216
    return-void

    .line 218
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->get(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/ActivateManager;

    move-result-object v0

    .line 219
    .local v0, "cm":Lcom/xiaomi/accountsdk/activate/ActivateManager;
    const/16 v6, 0x8

    move v1, p1

    move v2, p2

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->startActivateSim(IILjava/lang/String;ZLjava/lang/String;I)V

    .line 213
    return-void
.end method


# virtual methods
.method public asTask()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    .locals 7

    .prologue
    .line 168
    sget-object v5, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->sSingleTaskControllerMap:Ljava/util/ArrayList;

    monitor-enter v5

    .line 170
    const/4 v0, 0x0

    .line 173
    .local v0, "controller":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    :try_start_0
    sget-object v4, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->sSingleTaskControllerMap:Ljava/util/ArrayList;

    .line 172
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 174
    .local v2, "i":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;

    iget-object v6, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->mParam:Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;

    invoke-virtual {v4, v6}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    move-object v0, v2

    .local v0, "controller":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    move-object v1, v0

    .line 180
    .end local v0    # "controller":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    .end local v2    # "i":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    .local v1, "controller":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    :goto_0
    if-nez v1, :cond_1

    .line 181
    :try_start_1
    new-instance v0, Landroid/util/Pair;

    .line 182
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->mParam:Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;

    .line 183
    invoke-static {}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->buildSingleTaskController()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    move-result-object v6

    .line 181
    invoke-direct {v0, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 184
    .end local v1    # "controller":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    .restart local v0    # "controller":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    :try_start_2
    sget-object v4, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->sSingleTaskControllerMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :goto_1
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;

    const/4 v6, 0x1

    invoke-static {v6, p0, v4}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder;->build(ZLcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableRetry;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 168
    .end local v0    # "controller":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    .end local v3    # "i$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit v5

    throw v4

    .restart local v1    # "controller":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    .restart local v3    # "i$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "controller":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    .restart local v0    # "controller":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    goto :goto_2

    .end local v0    # "controller":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    .restart local v1    # "controller":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    :cond_1
    move-object v0, v1

    .end local v1    # "controller":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    .restart local v0    # "controller":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    goto :goto_1

    .local v0, "controller":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    :cond_2
    move-object v1, v0

    .restart local v1    # "controller":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;>;"
    goto :goto_0
.end method

.method public run(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$ProvisionInProcessException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 196
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->-wrap0(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Find device not open. "

    aput-object v2, v1, v5

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 198
    return-void

    .line 201
    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Find device is open. Activate sims: %s. "

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->mParam:Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 203
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->mParam:Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;

    iget v1, v1, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;->simIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lmiui/telephony/CloudTelephonyManager;->getMultiSimCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->mParam:Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;

    iget v1, v1, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;->activateMethod:I

    invoke-static {p1, v0, v1}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->startActivateSimIfNotVirtualSim(Landroid/content/Context;II)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->mParam:Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;

    iget v1, v1, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;->simIndex:I

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->mParam:Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;

    iget v2, v2, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask$Param;->activateMethod:I

    invoke-static {p1, v1, v2}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask$ActivateSimsIfFindDeviceOpenSubTask;->startActivateSimIfNotVirtualSim(Landroid/content/Context;II)V

    .line 195
    :cond_2
    return-void
.end method
