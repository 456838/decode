.class final Lcom/xiaomi/passport/v2/ui/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic DT:Lcom/xiaomi/passport/v2/ui/b;

.field final synthetic DU:Landroid/widget/Button;

.field final synthetic DV:Landroid/widget/Button;

.field final synthetic DW:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/b;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/u;->DT:Lcom/xiaomi/passport/v2/ui/b;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/u;->DU:Landroid/widget/Button;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/u;->DV:Landroid/widget/Button;

    iput-object p4, p0, Lcom/xiaomi/passport/v2/ui/u;->DW:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/u;->DU:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/u;->DV:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/u;->DW:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
