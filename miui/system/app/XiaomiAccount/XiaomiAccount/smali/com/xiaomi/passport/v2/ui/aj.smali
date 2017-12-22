.class final Lcom/xiaomi/passport/v2/ui/aj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic FJ:Lcom/xiaomi/passport/v2/ui/j;

.field final synthetic FK:Landroid/widget/Button;

.field final synthetic FL:Landroid/view/View;

.field final synthetic FM:Landroid/view/View;

.field final synthetic FN:Landroid/view/View;

.field final synthetic FO:Landroid/widget/TextView;

.field final synthetic FP:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/j;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/aj;->FJ:Lcom/xiaomi/passport/v2/ui/j;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/aj;->FK:Landroid/widget/Button;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/aj;->FL:Landroid/view/View;

    iput-object p4, p0, Lcom/xiaomi/passport/v2/ui/aj;->FM:Landroid/view/View;

    iput-object p5, p0, Lcom/xiaomi/passport/v2/ui/aj;->FN:Landroid/view/View;

    iput-object p6, p0, Lcom/xiaomi/passport/v2/ui/aj;->FO:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/xiaomi/passport/v2/ui/aj;->FP:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/aj;->FK:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/aj;->FK:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/aj;->FL:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/aj;->FL:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/aj;->FM:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/aj;->FM:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/aj;->FN:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/aj;->FN:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/aj;->FO:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/aj;->FO:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/aj;->FP:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/aj;->FP:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    return-void
.end method
