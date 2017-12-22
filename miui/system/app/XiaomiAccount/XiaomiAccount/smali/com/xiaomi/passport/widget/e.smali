.class public Lcom/xiaomi/passport/widget/e;
.super Landroid/app/Dialog;
.source ""

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private wk:Lcom/xiaomi/passport/widget/k;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/passport/widget/e;->zq(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/passport/widget/e;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p1, p2}, Lcom/xiaomi/passport/widget/e;->zq(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/xiaomi/passport/widget/k;

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/e;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/xiaomi/passport/widget/k;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/e;->wk:Lcom/xiaomi/passport/widget/k;

    return-void
.end method

.method static zq(Landroid/content/Context;I)I
    .locals 4

    packed-switch p1, :pswitch_data_0

    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    :goto_0
    return p1

    :pswitch_0
    const p1, 0x7f0d0065

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zs(Lcom/xiaomi/passport/widget/e;)Lcom/xiaomi/passport/widget/k;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/e;->wk:Lcom/xiaomi/passport/widget/k;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/e;->wk:Lcom/xiaomi/passport/widget/k;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/k;->Av()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/e;->wk:Lcom/xiaomi/passport/widget/k;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/widget/k;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/e;->wk:Lcom/xiaomi/passport/widget/k;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/widget/k;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/e;->wk:Lcom/xiaomi/passport/widget/k;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/k;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public zp(I)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/e;->wk:Lcom/xiaomi/passport/widget/k;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/k;->Aw(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public zr(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/e;->wk:Lcom/xiaomi/passport/widget/k;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/k;->zo(Landroid/view/View;)V

    return-void
.end method
