.class public Lcom/xiaomi/passport/widget/l;
.super Lcom/xiaomi/passport/widget/d;
.source ""


# instance fields
.field public xj:Z

.field public xk:Landroid/content/DialogInterface$OnDismissListener;

.field public xl:Landroid/content/DialogInterface$OnShowListener;

.field public xm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/passport/widget/m;",
            ">;"
        }
    .end annotation
.end field

.field public xn:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/widget/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public Ay(Lcom/xiaomi/passport/widget/c;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->vW:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->vW:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/widget/c;->zm(Landroid/view/View;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->vZ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->vZ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/widget/c;->zn(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->wh:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->wh:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/l;->wg:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/xiaomi/passport/widget/c;->zl(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->wb:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->wb:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/l;->wa:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x2

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/xiaomi/passport/widget/c;->zl(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->wd:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->wd:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/l;->wc:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x3

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/xiaomi/passport/widget/c;->zl(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->vY:[Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->vV:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->wj:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->wj:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/widget/c;->zo(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->xm:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/xiaomi/passport/widget/k;

    invoke-virtual {p1}, Lcom/xiaomi/passport/widget/k;->Ax()Lcom/xiaomi/passport/widget/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/l;->xm:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaomi/passport/widget/l;->xn:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/widget/r;->Bi(Ljava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->wi:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->wi:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/widget/c;->setTitle(Ljava/lang/CharSequence;)V

    :cond_9
    iget v0, p0, Lcom/xiaomi/passport/widget/l;->vX:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/passport/widget/l;->vX:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/widget/c;->setIcon(I)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/passport/widget/l;->vR:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_5

    goto :goto_1
.end method
