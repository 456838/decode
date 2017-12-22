.class public Lcom/xiaomi/passport/widget/k;
.super Lcom/xiaomi/passport/widget/c;
.source ""


# instance fields
.field xi:Lcom/xiaomi/passport/widget/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/passport/widget/c;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    new-instance v0, Lcom/xiaomi/passport/widget/r;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaomi/passport/widget/r;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/k;->xi:Lcom/xiaomi/passport/widget/r;

    return-void
.end method


# virtual methods
.method public Av()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/k;->xi:Lcom/xiaomi/passport/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/r;->Bj()V

    return-void
.end method

.method public Aw(I)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/k;->xi:Lcom/xiaomi/passport/widget/r;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/r;->Bo(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public Ax()Lcom/xiaomi/passport/widget/r;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/k;->xi:Lcom/xiaomi/passport/widget/r;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/k;->xi:Lcom/xiaomi/passport/widget/r;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/widget/r;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/k;->xi:Lcom/xiaomi/passport/widget/r;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/widget/r;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setIcon(I)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/k;->xi:Lcom/xiaomi/passport/widget/r;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/r;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public zl(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/k;->xi:Lcom/xiaomi/passport/widget/r;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/passport/widget/r;->Bn(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public zm(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/k;->xi:Lcom/xiaomi/passport/widget/r;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/r;->Bk(Landroid/view/View;)V

    return-void
.end method

.method public zn(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/k;->xi:Lcom/xiaomi/passport/widget/r;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/r;->Bl(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public zo(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/k;->xi:Lcom/xiaomi/passport/widget/r;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/r;->Bm(Landroid/view/View;)V

    return-void
.end method
