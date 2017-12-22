.class Lcom/xiaomi/finddevice/common/task/AnyRunCondition$1;
.super Ljava/lang/Object;
.source "AnyRunCondition.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/common/task/AnyRunCondition;-><init>([Lcom/xiaomi/finddevice/common/task/RunCondition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/common/task/AnyRunCondition;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/common/task/AnyRunCondition;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/common/task/AnyRunCondition;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/AnyRunCondition$1;->this$0:Lcom/xiaomi/finddevice/common/task/AnyRunCondition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConditionSatisfied()V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/AnyRunCondition$1;->this$0:Lcom/xiaomi/finddevice/common/task/AnyRunCondition;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/common/task/AnyRunCondition;->satisfied()V

    .line 13
    return-void
.end method
