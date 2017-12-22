.class Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;
.super Ljava/lang/Object;
.source "CommandService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/command/CommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleCommandTask"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mMainThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/command/CommandService;


# direct methods
.method static synthetic -get0(Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public constructor <init>(Lcom/xiaomi/finddevice/v2/command/CommandService;Landroid/content/Intent;)V
    .locals 2
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/command/CommandService;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;->this$0:Lcom/xiaomi/finddevice/v2/command/CommandService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;->mIntent:Landroid/content/Intent;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;->mMainThreadHandler:Landroid/os/Handler;

    .line 116
    return-void
.end method

.method private invokeOnBuildCommandFailedInMainThread(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask$2;-><init>(Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 124
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "inprocess"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 126
    .local v2, "inProcessCommand":Z
    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "Inprocess command? %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;->this$0:Lcom/xiaomi/finddevice/v2/command/CommandService;

    invoke-static {v3}, Lcom/xiaomi/finddevice/v2/command/CommandService;->-get0(Lcom/xiaomi/finddevice/v2/command/CommandService;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    move-result-object v3

    .line 131
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;->this$0:Lcom/xiaomi/finddevice/v2/command/CommandService;

    iget-object v5, p0, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 130
    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->buildCommand(Landroid/content/Context;Landroid/os/Bundle;)Lcom/xiaomi/finddevice/v2/command/command/Command;

    move-result-object v0

    .line 132
    .local v0, "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Building command succeed. "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    new-instance v3, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask$1;

    invoke-direct {v3, p0}, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask$1;-><init>(Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;)V

    invoke-virtual {v0, v3}, Lcom/xiaomi/finddevice/v2/command/command/Command;->execute(Lcom/xiaomi/finddevice/v2/command/command/Command$IExecutionCompleteHandler;)V

    .line 122
    return-void

    .line 133
    .end local v0    # "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_0

    .line 135
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "e":Ljava/lang/Exception;
    throw v1

    .line 137
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "Building command failed. "

    aput-object v4, v3, v7

    aput-object v1, v3, v8

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 138
    invoke-direct {p0, v1}, Lcom/xiaomi/finddevice/v2/command/CommandService$HandleCommandTask;->invokeOnBuildCommandFailedInMainThread(Ljava/lang/Exception;)V

    .line 139
    return-void
.end method
