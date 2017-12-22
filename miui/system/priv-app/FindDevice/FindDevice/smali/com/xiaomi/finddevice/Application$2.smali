.class Lcom/xiaomi/finddevice/Application$2;
.super Landroid/content/BroadcastReceiver;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/Application;->scheduleInitTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/Application;

.field final synthetic val$receiverContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/Application;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/Application;
    .param p2, "val$receiverContext"    # Landroid/content/Context;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/xiaomi/finddevice/Application$2;->this$0:Lcom/xiaomi/finddevice/Application;

    iput-object p2, p0, Lcom/xiaomi/finddevice/Application$2;->val$receiverContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 170
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Boot completed receiver called. doInitTasks(). "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/xiaomi/finddevice/Application$2;->this$0:Lcom/xiaomi/finddevice/Application;

    invoke-static {v0}, Lcom/xiaomi/finddevice/Application;->-wrap0(Lcom/xiaomi/finddevice/Application;)V

    .line 172
    iget-object v0, p0, Lcom/xiaomi/finddevice/Application$2;->val$receiverContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    return-void
.end method
