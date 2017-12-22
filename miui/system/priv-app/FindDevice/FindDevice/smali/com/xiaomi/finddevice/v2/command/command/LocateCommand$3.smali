.class Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$3;
.super Ljava/lang/Object;
.source "LocateCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->startToGetAndReportLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

.field final synthetic val$looper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;
    .param p2, "val$looper"    # Landroid/os/Looper;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$3;->this$0:Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$3;->val$looper:Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$3;->val$looper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$3$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$3$1;-><init>(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method
