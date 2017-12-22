.class Lcom/xiaomi/finddevice/v2/track/Locator$1;
.super Ljava/lang/Object;
.source "Locator.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/command/command/Command$IExecutionCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/track/Locator;->locate()[Lcom/xiaomi/finddevice/v2/track/LocationRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/track/Locator;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/track/Locator;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/track/Locator;
    .param p2, "val$latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/track/Locator$1;->this$0:Lcom/xiaomi/finddevice/v2/track/Locator;

    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/track/Locator$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutionComplete(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/Locator$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 46
    return-void
.end method
