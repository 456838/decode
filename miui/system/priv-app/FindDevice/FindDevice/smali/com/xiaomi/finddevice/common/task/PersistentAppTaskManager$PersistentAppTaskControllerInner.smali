.class abstract Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;
.super Ljava/lang/Object;
.source "PersistentAppTaskManager.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PersistentAppTaskControllerInner"
.end annotation


# instance fields
.field public final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTaskControllerInner;->lock:Ljava/lang/Object;

    .line 38
    return-void
.end method
