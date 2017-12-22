.class final Lcom/xiaomi/passport/ui/I;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic sW:Lcom/xiaomi/passport/ui/e;

.field final synthetic sX:Landroid/view/View;

.field final synthetic sY:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/e;Landroid/view/View;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/I;->sW:Lcom/xiaomi/passport/ui/e;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/I;->sX:Landroid/view/View;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/I;->sY:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/I;->sX:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/I;->sY:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
