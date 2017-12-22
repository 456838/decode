.class public Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;
.super Lcom/xiaomi/finddevice/common/task/EventRunCondition;
.source "BroadcastEventRunCondition.java"


# instance fields
.field private mBroadcast:Ljava/lang/String;

.field private mCtx:Landroid/content/Context;

.field private mPermission:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "broadcast"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/xiaomi/finddevice/common/task/EventRunCondition;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->mCtx:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->mBroadcast:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->mPermission:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method protected onFilterBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method protected startMonitor()V
    .locals 5

    .prologue
    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->mBroadcast:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    new-instance v1, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition$1;-><init>(Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;)V

    iput-object v1, p0, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->mPermission:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 21
    return-void
.end method

.method protected stopMonitor()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/task/BroadcastEventRunCondition;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 43
    return-void
.end method
