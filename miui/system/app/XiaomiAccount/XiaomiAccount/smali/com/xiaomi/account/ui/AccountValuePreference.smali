.class public Lcom/xiaomi/account/ui/AccountValuePreference;
.super Landroid/preference/Preference;
.source ""


# instance fields
.field private bm:Z

.field private bn:Ljava/lang/CharSequence;

.field private bo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/account/ui/AccountValuePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/account/ui/AccountValuePreference;->bm:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/account/ui/AccountValuePreference;->bo:I

    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/AccountValuePreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/account/ui/AccountValuePreference;->bm:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/account/ui/AccountValuePreference;->bo:I

    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/AccountValuePreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public dc(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/AccountValuePreference;->bn:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/xiaomi/account/ui/AccountValuePreference;->bn:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountValuePreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public dd(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountValuePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/AccountValuePreference;->dc(Ljava/lang/String;)V

    return-void
.end method

.method public de()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/AccountValuePreference;->bn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public df()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/AccountValuePreference;->bm:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f1000ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountValuePreference;->de()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    const v0, 0x7f1000aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountValuePreference;->df()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/xiaomi/account/ui/AccountValuePreference;->bo:I

    if-ltz v1, :cond_4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string/jumbo v1, "Lv%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/xiaomi/account/ui/AccountValuePreference;->bo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
