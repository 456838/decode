.class public Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;
.super Landroid/view/ContextThemeWrapper;
.source "PowerfulKeyguard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard$PowerfulKeyguardRootView;
    }
.end annotation


# instance fields
.field private mData:Landroid/os/Bundle;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mRootView:Landroid/view/ViewGroup;

.field private mVisible:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 23
    sget v0, Lmiui/R$style;->Theme_Light_ActionBar_NoTitle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;-><init>(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 22
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "res"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mData:Landroid/os/Bundle;

    .line 26
    return-void
.end method


# virtual methods
.method protected addContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    return-void
.end method

.method protected buildRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard$PowerfulKeyguardRootView;

    invoke-direct {v0, p0, p0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard$PowerfulKeyguardRootView;-><init>(Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;Landroid/content/Context;)V

    .line 156
    .local v0, "v":Landroid/view/ViewGroup;
    return-object v0
.end method

.method protected buildWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 160
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 163
    const/16 v3, 0x7da

    .line 164
    const/16 v4, 0x100

    .line 165
    const/4 v5, -0x2

    move v2, v1

    .line 160
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 166
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 168
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 169
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 171
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v1, v1, 0x1002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 174
    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->setVisible(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->onDestroy()V

    .line 50
    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 51
    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mRootView:Landroid/view/ViewGroup;

    .line 45
    return-void
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 149
    return-object v1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public notify(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->onNotify(ILandroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method protected onInvisible()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 113
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

.method protected onSetData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 92
    return-void
.end method

.method protected onVisible()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method protected onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 95
    return-void
.end method

.method protected removeContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 139
    return-void
.end method

.method protected setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 126
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->addContentView(Landroid/view/View;)V

    .line 124
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mData:Landroid/os/Bundle;

    .line 33
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mData:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->onSetData(Landroid/os/Bundle;)V

    .line 31
    return-void
.end method

.method public setVisible(Z)V
    .locals 5
    .param p1, "b"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    iget-boolean v1, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mVisible:Z

    if-ne v1, p1, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    iput-boolean p1, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mVisible:Z

    .line 60
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_2

    .line 61
    :cond_1
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Destoryed or not created. "

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 62
    return-void

    .line 66
    :cond_2
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 67
    .local v0, "wm":Landroid/view/WindowManager;
    if-eqz p1, :cond_3

    .line 68
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 70
    const-string/jumbo v2, "screen_buttons_state"

    .line 69
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->onVisible()V

    .line 54
    :goto_0
    return-void

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mRootView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 75
    const-string/jumbo v2, "screen_buttons_state"

    .line 74
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->onInvisible()V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->buildRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mRootView:Landroid/view/ViewGroup;

    .line 38
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->buildWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 40
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->mData:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->setVisible(Z)V

    .line 36
    return-void
.end method
