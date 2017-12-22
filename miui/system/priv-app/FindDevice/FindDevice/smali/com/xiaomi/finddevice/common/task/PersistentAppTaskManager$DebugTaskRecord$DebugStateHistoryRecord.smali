.class public Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord$DebugStateHistoryRecord;
.super Ljava/lang/Object;
.source "PersistentAppTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$DebugTaskRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugStateHistoryRecord"
.end annotation


# instance fields
.field public reportCount:I

.field public state:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskInner$STATE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
