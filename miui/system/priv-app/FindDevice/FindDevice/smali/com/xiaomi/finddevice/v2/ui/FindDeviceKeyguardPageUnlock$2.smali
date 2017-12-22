.class Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$2;
.super Ljava/lang/Object;
.source "FindDeviceKeyguardPageUnlock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->registerViewListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$2;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$2;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-get5(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$2;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->-wrap0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;)V

    .line 186
    return-void
.end method
