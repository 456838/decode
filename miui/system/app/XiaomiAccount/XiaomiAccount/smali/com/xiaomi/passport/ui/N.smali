.class final Lcom/xiaomi/passport/ui/N;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic th:Lcom/xiaomi/passport/ui/e;

.field final synthetic ti:Landroid/view/View;

.field final synthetic tj:Landroid/view/View;

.field final synthetic tk:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/e;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/N;->th:Lcom/xiaomi/passport/ui/e;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/N;->ti:Landroid/view/View;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/N;->tj:Landroid/view/View;

    iput-object p4, p0, Lcom/xiaomi/passport/ui/N;->tk:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/N;->ti:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/N;->tj:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/N;->tk:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/N;->tk:Landroid/widget/Button;

    new-instance v1, Lcom/xiaomi/passport/ui/O;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/O;-><init>(Lcom/xiaomi/passport/ui/N;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
