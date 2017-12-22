.class Lcom/xiaomi/finddevice/v2/check/CheckTask$CheckVerifySubTask;
.super Ljava/lang/Object;
.source "CheckTask.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/PersistentAppTaskBuilder$PersistentAppTaskRunnableNoRetry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/check/CheckTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckVerifySubTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/v2/check/CheckTask$CheckVerifySubTask;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/check/CheckTask$CheckVerifySubTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->checkVerify(Landroid/content/Context;)V

    .line 60
    return-void
.end method
