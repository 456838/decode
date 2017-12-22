.class Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity$2;
.super Ljava/lang/Object;
.source "StopNoiseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity$2;->this$0:Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity$2;->this$0:Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->-get2(Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity$2;->this$0:Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->-get0(Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity$2;->this$0:Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/command/NoiseService;->stop(Landroid/content/Context;)V

    .line 48
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity$2;->this$0:Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->-wrap0(Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;Z)V

    .line 49
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity$2;->this$0:Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->finish()V

    .line 45
    return-void
.end method
