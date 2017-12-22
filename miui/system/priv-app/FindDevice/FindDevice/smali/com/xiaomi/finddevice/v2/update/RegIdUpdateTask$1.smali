.class final Lcom/xiaomi/finddevice/v2/update/RegIdUpdateTask$1;
.super Ljava/lang/Object;
.source "RegIdUpdateTask.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/push/PushRegisterManager$IRegIdChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/update/RegIdUpdateTask;->getRedIdChangeListener()Lcom/xiaomi/finddevice/v2/push/PushRegisterManager$IRegIdChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegIdChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "oldRegId"    # Ljava/lang/String;
    .param p2, "newRegId"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/RegIdUpdateTask;->doAll()V

    .line 79
    return-void
.end method
