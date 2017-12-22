.class Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity$1;
.super Landroid/os/Handler;
.source "StopNoiseActivity.java"


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
    .line 30
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity$1;->this$0:Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity$1;->this$0:Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;->-get1(Lcom/xiaomi/finddevice/v2/command/StopNoiseActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 32
    return-void
.end method
