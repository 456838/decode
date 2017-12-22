.class public Lcom/xiaomi/account/ui/ButtonPreference;
.super Lmiui/preference/ButtonPreference;
.source ""


# instance fields
.field private br:I

.field private bs:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/preference/ButtonPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/preference/ButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiui/preference/ButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dw(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/xiaomi/account/ui/ButtonPreference;->bs:I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/ButtonPreference;->notifyChanged()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lmiui/preference/ButtonPreference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/xiaomi/account/ui/ButtonPreference;->bs:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/xiaomi/account/ui/ButtonPreference;->bs:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    iget v1, p0, Lcom/xiaomi/account/ui/ButtonPreference;->br:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xiaomi/account/ui/ButtonPreference;->br:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/account/ui/ButtonPreference;->br:I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/ButtonPreference;->notifyChanged()V

    return-void
.end method
