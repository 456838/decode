.class Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow$1;
.super Ljava/lang/Object;
.source "StopNoisingWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;->registerViewListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow$1;->this$0:Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow$1;->this$0:Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 45
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    return-void

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow$1;->this$0:Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->stop(Landroid/content/Context;)V

    .line 43
    return-void
.end method
