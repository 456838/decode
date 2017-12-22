.class Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;
.super Ljava/lang/Object;
.source "PersistentAppTaskManagerTestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskRecord"
.end annotation


# instance fields
.field canceled:Z

.field intent:Landroid/content/Intent;

.field task:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TaskRecord{intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;->intent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService;->-wrap0(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    const-string/jumbo v1, ", task="

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;->task:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 316
    const-string/jumbo v1, ", canceled="

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 316
    iget-boolean v1, p0, Lcom/xiaomi/finddevice/test/PersistentAppTaskManagerTestService$TaskRecord;->canceled:Z

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 317
    const/16 v1, 0x7d

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
