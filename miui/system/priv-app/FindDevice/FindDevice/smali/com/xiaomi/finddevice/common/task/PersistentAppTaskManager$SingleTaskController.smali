.class Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;
.super Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;
.source "PersistentAppTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTaskController"
.end annotation


# instance fields
.field ongoingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;

.field pendingTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$SingleTaskController;-><init>()V

    return-void
.end method
