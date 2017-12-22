.class public Lcom/xiaomi/finddevice/common/task/NetworkReadyRunCondition;
.super Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;
.source "NetworkReadyRunCondition.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 14
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected onFilterBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isNetworkConnected()Z

    move-result v0

    return v0
.end method
