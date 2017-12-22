.class public Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageDebt;
.super Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;
.source "FindDeviceKeyguardPageDebt.java"


# direct methods
.method public constructor <init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "keyguard"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;-><init>(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguard;Landroid/os/Bundle;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onGetActivateButtonVisibility()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x8

    return v0
.end method

.method protected onGetBackgroundColor()I
    .locals 2

    .prologue
    const/16 v1, 0x1f

    .line 21
    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method protected onGetLockIconImageResId()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f020001

    return v0
.end method

.method protected onGetLockTitleResId()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f070042

    return v0
.end method

.method protected onGetLockViewMarginTopDip()F
    .locals 1

    .prologue
    .line 26
    const v0, 0x437ab333    # 250.7f

    return v0
.end method

.method protected onUpdateMessageView(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "msg"    # Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;
    .param p2, "wordsView"    # Landroid/widget/TextView;
    .param p3, "phoneView"    # Landroid/widget/TextView;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardPageMsg;->onUpdateMessageView(Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 51
    iget-object v0, p1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceKeyguardMsg;->words:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const v0, 0x7f070046

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 55
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    return-void
.end method
