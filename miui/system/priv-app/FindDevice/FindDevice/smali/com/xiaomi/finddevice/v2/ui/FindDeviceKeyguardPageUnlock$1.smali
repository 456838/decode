.class Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$1;
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
    .line 176
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$1;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$1;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock;->getKeyguard()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    move-result-object v0

    const-string/jumbo v1, "MESSAGE"

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->switchToPage(Ljava/lang/String;)V

    .line 178
    return-void
.end method
