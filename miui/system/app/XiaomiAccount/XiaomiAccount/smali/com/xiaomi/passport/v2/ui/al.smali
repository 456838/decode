.class final Lcom/xiaomi/passport/v2/ui/al;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic FR:Lcom/xiaomi/passport/v2/ui/k;

.field final synthetic FS:Landroid/widget/Button;

.field final synthetic FT:Landroid/widget/Button;

.field final synthetic FU:Landroid/view/View;

.field final synthetic FV:Landroid/view/View;

.field final synthetic FW:Landroid/widget/TextView;

.field final synthetic FX:Landroid/view/View;

.field final synthetic FY:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/k;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/al;->FR:Lcom/xiaomi/passport/v2/ui/k;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/al;->FS:Landroid/widget/Button;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/al;->FT:Landroid/widget/Button;

    iput-object p4, p0, Lcom/xiaomi/passport/v2/ui/al;->FU:Landroid/view/View;

    iput-object p5, p0, Lcom/xiaomi/passport/v2/ui/al;->FV:Landroid/view/View;

    iput-object p6, p0, Lcom/xiaomi/passport/v2/ui/al;->FW:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/xiaomi/passport/v2/ui/al;->FX:Landroid/view/View;

    iput-object p8, p0, Lcom/xiaomi/passport/v2/ui/al;->FY:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/al;->FS:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/al;->FS:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/al;->FT:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/al;->FT:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/al;->FU:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/al;->FU:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/al;->FV:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/al;->FV:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/al;->FW:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/al;->FW:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/al;->FX:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/al;->FX:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/al;->FY:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/al;->FY:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_6
    return-void
.end method
