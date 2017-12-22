.class Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskComparator;
.super Ljava/lang/Object;
.source "AlarmTaskManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/common/task/AlarmTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlarmTaskComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskComparator;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;)I
    .locals 4
    .param p1, "lhs"    # Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;
    .param p2, "rhs"    # Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .prologue
    .line 112
    invoke-interface {p1}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;->getRunTime()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;->getRunTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 111
    check-cast p1, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTaskComparator;->compare(Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;Lcom/xiaomi/finddevice/common/task/AlarmTaskManager$AlarmTask;)I

    move-result v0

    return v0
.end method
