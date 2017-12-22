.class final Lcom/xiaomi/passport/widget/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic yZ:Lcom/xiaomi/passport/widget/r;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/widget/r;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/widget/y;->yZ:Lcom/xiaomi/passport/widget/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/y;->yZ:Lcom/xiaomi/passport/widget/r;

    invoke-static {v1}, Lcom/xiaomi/passport/widget/r;->BE(Lcom/xiaomi/passport/widget/r;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/passport/widget/y;->yZ:Lcom/xiaomi/passport/widget/r;

    invoke-static {v1}, Lcom/xiaomi/passport/widget/r;->BF(Lcom/xiaomi/passport/widget/r;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/y;->yZ:Lcom/xiaomi/passport/widget/r;

    invoke-static {v0}, Lcom/xiaomi/passport/widget/r;->BF(Lcom/xiaomi/passport/widget/r;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/widget/y;->yZ:Lcom/xiaomi/passport/widget/r;

    invoke-static {v0}, Lcom/xiaomi/passport/widget/r;->BH(Lcom/xiaomi/passport/widget/r;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/y;->yZ:Lcom/xiaomi/passport/widget/r;

    invoke-static {v1}, Lcom/xiaomi/passport/widget/r;->BG(Lcom/xiaomi/passport/widget/r;)Landroid/content/DialogInterface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/passport/widget/y;->yZ:Lcom/xiaomi/passport/widget/r;

    invoke-static {v1}, Lcom/xiaomi/passport/widget/r;->BA(Lcom/xiaomi/passport/widget/r;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/passport/widget/y;->yZ:Lcom/xiaomi/passport/widget/r;

    invoke-static {v1}, Lcom/xiaomi/passport/widget/r;->BB(Lcom/xiaomi/passport/widget/r;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/widget/y;->yZ:Lcom/xiaomi/passport/widget/r;

    invoke-static {v0}, Lcom/xiaomi/passport/widget/r;->BB(Lcom/xiaomi/passport/widget/r;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/passport/widget/y;->yZ:Lcom/xiaomi/passport/widget/r;

    invoke-static {v1}, Lcom/xiaomi/passport/widget/r;->BC(Lcom/xiaomi/passport/widget/r;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/y;->yZ:Lcom/xiaomi/passport/widget/r;

    invoke-static {v1}, Lcom/xiaomi/passport/widget/r;->BD(Lcom/xiaomi/passport/widget/r;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/y;->yZ:Lcom/xiaomi/passport/widget/r;

    invoke-static {v0}, Lcom/xiaomi/passport/widget/r;->BD(Lcom/xiaomi/passport/widget/r;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
