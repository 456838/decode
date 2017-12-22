.class final Lcom/xiaomi/passport/v2/ui/R;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic EU:Lcom/xiaomi/passport/v2/ui/d;

.field final synthetic EV:Landroid/widget/Button;

.field final synthetic EW:Landroid/view/View;

.field final synthetic EX:Landroid/view/View;

.field final synthetic EY:Landroid/widget/TextView;

.field final synthetic EZ:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/d;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/R;->EU:Lcom/xiaomi/passport/v2/ui/d;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/R;->EV:Landroid/widget/Button;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/R;->EW:Landroid/view/View;

    iput-object p4, p0, Lcom/xiaomi/passport/v2/ui/R;->EX:Landroid/view/View;

    iput-object p5, p0, Lcom/xiaomi/passport/v2/ui/R;->EY:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/xiaomi/passport/v2/ui/R;->EZ:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/R;->EV:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/R;->EV:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/R;->EW:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/R;->EW:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/R;->EX:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/R;->EX:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/R;->EY:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/R;->EY:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/R;->EZ:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/R;->EZ:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    return-void
.end method
