.class public Lcom/xiaomi/passport/widget/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private wl:Lcom/xiaomi/passport/widget/l;

.field private wm:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/passport/widget/e;->zq(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/passport/widget/f;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/passport/widget/l;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lcom/xiaomi/passport/widget/e;->zq(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/widget/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/xiaomi/passport/widget/l;->xj:Z

    iput p2, p0, Lcom/xiaomi/passport/widget/f;->wm:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setTitle(I)Lcom/xiaomi/passport/widget/f;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, v1, Lcom/xiaomi/passport/widget/l;->vU:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/passport/widget/l;->wi:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/xiaomi/passport/widget/f;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iput-object p1, v0, Lcom/xiaomi/passport/widget/l;->wi:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public zA(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/passport/widget/f;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, v1, Lcom/xiaomi/passport/widget/l;->vU:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/passport/widget/l;->wh:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iput-object p2, v0, Lcom/xiaomi/passport/widget/l;->wg:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public zB(Landroid/view/View;)Lcom/xiaomi/passport/widget/f;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iput-object p1, v0, Lcom/xiaomi/passport/widget/l;->wj:Landroid/view/View;

    return-object p0
.end method

.method public zC()Lcom/xiaomi/passport/widget/e;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/f;->zt()Lcom/xiaomi/passport/widget/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->show()V

    return-object v0
.end method

.method public zt()Lcom/xiaomi/passport/widget/e;
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/widget/e;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, v1, Lcom/xiaomi/passport/widget/l;->vU:Landroid/content/Context;

    iget v2, p0, Lcom/xiaomi/passport/widget/f;->wm:I

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/widget/e;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    invoke-static {v0}, Lcom/xiaomi/passport/widget/e;->zs(Lcom/xiaomi/passport/widget/e;)Lcom/xiaomi/passport/widget/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/widget/l;->Ay(Lcom/xiaomi/passport/widget/c;)V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, v1, Lcom/xiaomi/passport/widget/l;->we:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/e;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, v1, Lcom/xiaomi/passport/widget/l;->xk:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/e;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, v1, Lcom/xiaomi/passport/widget/l;->xl:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/e;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, v1, Lcom/xiaomi/passport/widget/l;->wf:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, v1, Lcom/xiaomi/passport/widget/l;->wf:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/e;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    return-object v0
.end method

.method public zu(Z)Lcom/xiaomi/passport/widget/f;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iput-boolean p1, v0, Lcom/xiaomi/passport/widget/l;->vS:Z

    return-object p0
.end method

.method public zv(I)Lcom/xiaomi/passport/widget/f;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, v1, Lcom/xiaomi/passport/widget/l;->vU:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/passport/widget/l;->vZ:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public zw(Ljava/lang/CharSequence;)Lcom/xiaomi/passport/widget/f;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iput-object p1, v0, Lcom/xiaomi/passport/widget/l;->vZ:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public zx(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/passport/widget/f;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, v1, Lcom/xiaomi/passport/widget/l;->vU:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/passport/widget/l;->wb:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iput-object p2, v0, Lcom/xiaomi/passport/widget/l;->wa:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public zy(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/passport/widget/f;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iget-object v1, v1, Lcom/xiaomi/passport/widget/l;->vU:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/passport/widget/l;->wd:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iput-object p2, v0, Lcom/xiaomi/passport/widget/l;->wc:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public zz(Landroid/content/DialogInterface$OnCancelListener;)Lcom/xiaomi/passport/widget/f;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/f;->wl:Lcom/xiaomi/passport/widget/l;

    iput-object p1, v0, Lcom/xiaomi/passport/widget/l;->we:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method
