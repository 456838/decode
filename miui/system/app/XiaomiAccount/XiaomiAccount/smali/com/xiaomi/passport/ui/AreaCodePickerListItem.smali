.class public Lcom/xiaomi/passport/ui/AreaCodePickerListItem;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private rP:Landroid/widget/TextView;

.field private rQ:Landroid/widget/TextView;

.field private rR:Landroid/view/View;

.field private rS:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f10005c

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;->rQ:Landroid/widget/TextView;

    const v0, 0x7f10005d

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;->rP:Landroid/widget/TextView;

    const v0, 0x7f10005b

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;->rS:Landroid/widget/TextView;

    const v0, 0x7f10005a

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;->rR:Landroid/view/View;

    return-void
.end method

.method public xc(Lcom/xiaomi/passport/utils/k;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;->rQ:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/xiaomi/passport/utils/k;->zW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;->rP:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/xiaomi/passport/utils/k;->zX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;->rS:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;->rR:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;->rR:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
