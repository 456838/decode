.class public Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;
.super Landroid/content/ContextWrapper;
.source "FindDeviceKeyguardPage.java"


# instance fields
.field private mData:Landroid/os/Bundle;

.field private mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

.field private mPageView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "keyguard"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    .line 18
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mData:Landroid/os/Bundle;

    .line 15
    return-void
.end method


# virtual methods
.method public create()V
    .locals 2

    .prologue
    .line 22
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mData:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 26
    .local v0, "li":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onCreateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mPageView:Landroid/view/View;

    .line 27
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mPageView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onViewCreated(Landroid/view/View;)V

    .line 21
    return-void
.end method

.method public createEnterAnimation()Landroid/view/ViewPropertyAnimator;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mPageView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onCreateEnterAnimation(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public createLeaveAnimation()Landroid/view/ViewPropertyAnimator;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mPageView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onCreateLeaveAnimation(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mPageView:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mPageView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onDestroyView(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onDestroy()V

    .line 43
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mPageView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyguard()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mKeyguard:Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    return-object v0
.end method

.method public getPageView()Landroid/view/View;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mPageView:Landroid/view/View;

    return-object v0
.end method

.method public notify(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onNotify(ILandroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method public notifyPageViewAttached()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mPageView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onPageViewAttached(Landroid/view/View;)V

    .line 35
    return-void
.end method

.method public notifyPageViewDetached()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mPageView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onPageViewDetached(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public notifySwitchInto(ILjava/lang/Object;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onSwitchInto(ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 77
    return-void
.end method

.method protected onCreateEnterAnimation(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateLeaveAnimation(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "li"    # Landroid/view/LayoutInflater;

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method protected onDestroyView(Landroid/view/View;)V
    .locals 0
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 99
    return-void
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method protected onNotify(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 116
    return-void
.end method

.method protected onPageViewAttached(Landroid/view/View;)V
    .locals 0
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 90
    return-void
.end method

.method protected onPageViewDetached(Landroid/view/View;)V
    .locals 0
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 93
    return-void
.end method

.method protected onScreenOff()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method protected onSetData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 80
    return-void
.end method

.method protected onSwitchInto(ILjava/lang/Object;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 113
    return-void
.end method

.method protected onViewCreated(Landroid/view/View;)V
    .locals 0
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 83
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mData:Landroid/os/Bundle;

    .line 32
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->mData:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onSetData(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method
