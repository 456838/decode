.class public abstract Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;
.super Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;
.source "FindDeviceKeyguardPageExtraLoginSteps.java"


# instance fields
.field private mScreenWidth:I

.field private mViewBack:Landroid/view/View;

.field private mViewExtraContentContainer:Landroid/view/ViewGroup;

.field private mViewStatus:Landroid/widget/TextView;


# direct methods
.method static synthetic -wrap0(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->abort()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "keyguard"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method private abort()V
    .locals 4

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->onAbort()V

    .line 124
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->getKeyguard()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    move-result-object v0

    .line 125
    const-string/jumbo v1, "UNLOCK"

    .line 127
    new-instance v2, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;

    .line 128
    const v3, 0x7f070024

    invoke-virtual {p0, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-direct {v2, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageUnlock$LoginResult;-><init>(Ljava/lang/String;)V

    .line 126
    const/16 v3, 0x10

    .line 124
    invoke-virtual {v0, v1, v3, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->switchToPage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 122
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 107
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->mViewBack:Landroid/view/View;

    .line 108
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->mViewStatus:Landroid/widget/TextView;

    .line 106
    return-void
.end method

.method private initViews()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method private registerViewListeners()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->mViewBack:Landroid/view/View;

    new-instance v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps$1;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method


# virtual methods
.method protected onAbort()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->mScreenWidth:I

    .line 24
    return-void
.end method

.method protected onCreateEnterAnimation(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateExtraContentView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "li"    # Landroid/view/LayoutInflater;

    .prologue
    .line 40
    return-void
.end method

.method protected onCreateLeaveAnimation(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->mScreenWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "li"    # Landroid/view/LayoutInflater;

    .prologue
    .line 31
    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "v":Landroid/view/View;
    iget v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->mScreenWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 34
    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->mViewExtraContentContainer:Landroid/view/ViewGroup;

    .line 35
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->mViewExtraContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->onCreateExtraContentView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 37
    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onDestroy()V

    .line 103
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->onAbort()V

    .line 101
    return-void
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->abort()V

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onScreenOff()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onScreenOff()V

    .line 76
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->abort()V

    .line 77
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->getKeyguard()Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;

    move-result-object v0

    const-string/jumbo v1, "MESSAGE"

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;->switchToPage(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method protected onSwitchInto(ILjava/lang/Object;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onSwitchInto(ILjava/lang/Object;)V

    .line 66
    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown switch-page-code. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->setStatusMessage(Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method protected onViewCreated(Landroid/view/View;)V
    .locals 0
    .param p1, "pageView"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPage;->onViewCreated(Landroid/view/View;)V

    .line 56
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->findViews()V

    .line 57
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->registerViewListeners()V

    .line 59
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->initViews()V

    .line 53
    return-void
.end method

.method protected removeExtraContentView()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->mViewExtraContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 48
    return-void
.end method

.method protected setExtraContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->removeExtraContentView()V

    .line 45
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->mViewExtraContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method protected setStatusMessage(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "warn"    # Z

    .prologue
    const v2, 0x7f05000c

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->mViewStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->mViewStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->mViewStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->mViewStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->mViewStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->mViewStatus:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 143
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageExtraLoginSteps;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method
