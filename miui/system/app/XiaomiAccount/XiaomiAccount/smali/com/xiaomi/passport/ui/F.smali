.class final Lcom/xiaomi/passport/ui/F;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic sT:Lcom/xiaomi/passport/ui/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/F;->sT:Lcom/xiaomi/passport/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/F;->sT:Lcom/xiaomi/passport/ui/d;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/d;->oV:Lcom/xiaomi/passport/ui/b;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/b;->sI(Lcom/xiaomi/passport/ui/b;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/F;->sT:Lcom/xiaomi/passport/ui/d;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/d;->oV:Lcom/xiaomi/passport/ui/b;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/b;->sH(Lcom/xiaomi/passport/ui/b;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
