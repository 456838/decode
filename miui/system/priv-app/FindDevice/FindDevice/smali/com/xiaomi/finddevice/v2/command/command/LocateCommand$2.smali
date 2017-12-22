.class Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$2;
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


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$2;->this$0:Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Get location durationg end. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$2;->this$0:Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->-wrap0(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;)V

    .line 146
    return-void
.end method
