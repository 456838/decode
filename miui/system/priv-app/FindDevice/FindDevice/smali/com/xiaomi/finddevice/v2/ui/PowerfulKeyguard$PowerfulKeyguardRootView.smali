.class Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard$PowerfulKeyguardRootView;
.super Landroid/widget/FrameLayout;
.source "PowerfulKeyguard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerfulKeyguardRootView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;


# direct methods
.method public constructor <init>(Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard$PowerfulKeyguardRootView;->this$0:Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;

    .line 186
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 185
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 204
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    return v1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard$PowerfulKeyguardRootView;->this$0:Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;

    invoke-virtual {v0, p1}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    return v1

    .line 210
    :cond_1
    return v1
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x1

    return v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard$PowerfulKeyguardRootView;->this$0:Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;

    invoke-virtual {v0, p1}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->onKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 191
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard$PowerfulKeyguardRootView;->this$0:Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;

    invoke-virtual {v0, p1}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->onWindowFocusChanged(Z)V

    .line 189
    return-void
.end method
