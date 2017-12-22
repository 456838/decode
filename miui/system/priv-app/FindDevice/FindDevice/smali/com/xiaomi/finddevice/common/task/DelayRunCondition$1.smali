.class Lcom/xiaomi/finddevice/common/task/DelayRunCondition$1;
.super Ljava/lang/Object;
.source "DelayRunCondition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/common/task/DelayRunCondition;->countdown(Landroid/content/Context;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/common/task/DelayRunCondition;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/common/task/DelayRunCondition;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/common/task/DelayRunCondition;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/DelayRunCondition$1;->this$0:Lcom/xiaomi/finddevice/common/task/DelayRunCondition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/DelayRunCondition$1;->this$0:Lcom/xiaomi/finddevice/common/task/DelayRunCondition;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/common/task/DelayRunCondition;->satisfied()V

    .line 14
    return-void
.end method
