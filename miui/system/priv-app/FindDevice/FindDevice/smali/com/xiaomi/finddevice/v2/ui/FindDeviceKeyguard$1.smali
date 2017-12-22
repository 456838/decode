.class Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$1;
.super Ljava/lang/Object;
.source "FindDeviceKeyguard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->tearDownOldActivePage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

.field final synthetic val$oldActivePageRecord:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
    .param p2, "val$oldActivePageRecord"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$1;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$1;->val$oldActivePageRecord:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$1;->this$0:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$1;->val$oldActivePageRecord:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    iget-object v1, v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->getPageView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->removeContentView(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$1;->val$oldActivePageRecord:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->page:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->notifyPageViewDetached()V

    .line 225
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$1;->val$oldActivePageRecord:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard$PageRecord;->viewAttached:Z

    .line 222
    return-void
.end method
