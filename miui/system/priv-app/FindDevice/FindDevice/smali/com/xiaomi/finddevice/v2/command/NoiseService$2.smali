.class Lcom/xiaomi/finddevice/v2/command/NoiseService$2;
.super Ljava/lang/Object;
.source "NoiseService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/command/NoiseService;->startToNoise()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/command/NoiseService;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/command/NoiseService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/command/NoiseService;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/NoiseService$2;->this$0:Lcom/xiaomi/finddevice/v2/command/NoiseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Complete playing noise. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 153
    return-void
.end method
