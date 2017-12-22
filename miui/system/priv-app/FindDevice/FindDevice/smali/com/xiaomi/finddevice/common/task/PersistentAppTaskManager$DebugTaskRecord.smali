.class Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;
.super Ljava/lang/Object;
.source "PersistentAppTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugTaskRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;
    }
.end annotation


# instance fields
.field public stateHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;->stateHistory:Ljava/util/List;

    .line 947
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;-><init>()V

    return-void
.end method
