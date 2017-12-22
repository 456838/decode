.class public final Lcom/xiaomi/finddevice/common/task/AnyRunCondition;
.super Lcom/xiaomi/finddevice/common/task/RunCondition;
.source "AnyRunCondition.java"


# instance fields
.field private final mRunConditions:[Lcom/xiaomi/finddevice/common/task/RunCondition;


# direct methods
.method public constructor <init>([Lcom/xiaomi/finddevice/common/task/RunCondition;)V
    .locals 6
    .param p1, "conditions"    # [Lcom/xiaomi/finddevice/common/task/RunCondition;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/RunCondition;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/AnyRunCondition;->mRunConditions:[Lcom/xiaomi/finddevice/common/task/RunCondition;

    .line 11
    new-instance v1, Lcom/xiaomi/finddevice/common/task/AnyRunCondition$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/common/task/AnyRunCondition$1;-><init>(Lcom/xiaomi/finddevice/common/task/AnyRunCondition;)V

    .line 19
    .local v1, "callback":Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;
    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/AnyRunCondition;->mRunConditions:[Lcom/xiaomi/finddevice/common/task/RunCondition;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 20
    .local v0, "c":Lcom/xiaomi/finddevice/common/task/RunCondition;
    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/RunCondition;->wait(Lcom/xiaomi/finddevice/common/task/RunCondition$IConditionSatisfiedCallback;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/task/AnyRunCondition;->satisfied()V

    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    .end local v0    # "c":Lcom/xiaomi/finddevice/common/task/RunCondition;
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/AnyRunCondition;->mRunConditions:[Lcom/xiaomi/finddevice/common/task/RunCondition;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 29
    .local v0, "c":Lcom/xiaomi/finddevice/common/task/RunCondition;
    invoke-virtual {v0, p1}, Lcom/xiaomi/finddevice/common/task/RunCondition;->destroy(Landroid/content/Context;)V

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "c":Lcom/xiaomi/finddevice/common/task/RunCondition;
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/common/task/RunCondition;->destroy(Landroid/content/Context;)V

    .line 27
    return-void
.end method
