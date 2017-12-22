.class Lcom/xiaomi/account/ui/v;
.super Lcom/xiaomi/account/task/c;
.source ""


# instance fields
.field final synthetic bi:Lcom/xiaomi/account/ui/u;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/ui/u;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/xiaomi/account/ui/v;->bi:Lcom/xiaomi/account/ui/u;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/account/task/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected cK(Lcom/xiaomi/account/task/d;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/account/task/c;->onCancelled(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/v;->bi:Lcom/xiaomi/account/ui/u;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/u;->cG(Lcom/xiaomi/account/ui/u;Lcom/xiaomi/account/ui/v;)Lcom/xiaomi/account/ui/v;

    return-void
.end method

.method protected cL(Lcom/xiaomi/account/task/d;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/v;->bi:Lcom/xiaomi/account/ui/u;

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/u;->cG(Lcom/xiaomi/account/ui/u;Lcom/xiaomi/account/ui/v;)Lcom/xiaomi/account/ui/v;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/xiaomi/account/task/d;->iE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/v;->bi:Lcom/xiaomi/account/ui/u;

    iget-object v1, p1, Lcom/xiaomi/account/task/d;->iE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/u;->cE(Lcom/xiaomi/account/ui/u;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/account/ui/v;->bi:Lcom/xiaomi/account/ui/u;

    iget-object v1, p0, Lcom/xiaomi/account/ui/v;->bi:Lcom/xiaomi/account/ui/u;

    invoke-static {v1}, Lcom/xiaomi/account/ui/u;->cB(Lcom/xiaomi/account/ui/u;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/u;->cH(Lcom/xiaomi/account/ui/u;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/v;->bi:Lcom/xiaomi/account/ui/u;

    invoke-static {v0}, Lcom/xiaomi/account/ui/u;->cA(Lcom/xiaomi/account/ui/u;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/v;->bi:Lcom/xiaomi/account/ui/u;

    invoke-static {v0}, Lcom/xiaomi/account/ui/u;->cA(Lcom/xiaomi/account/ui/u;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/account/data/d;

    iget v1, p1, Lcom/xiaomi/account/task/d;->iF:I

    invoke-direct {v0, v1}, Lcom/xiaomi/account/data/d;-><init>(I)V

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lP()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/account/ui/v;->bi:Lcom/xiaomi/account/ui/u;

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lQ()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/account/ui/u;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/v;->bi:Lcom/xiaomi/account/ui/u;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/xiaomi/account/ui/u;->cJ(Lcom/xiaomi/account/ui/u;ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/account/ui/v;->bi:Lcom/xiaomi/account/ui/u;

    invoke-static {v0}, Lcom/xiaomi/account/ui/u;->cC(Lcom/xiaomi/account/ui/u;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/v;->bi:Lcom/xiaomi/account/ui/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/xiaomi/account/ui/u;->cI(Lcom/xiaomi/account/ui/u;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/xiaomi/account/ui/S;->hv(Ljava/lang/String;)Lcom/xiaomi/account/ui/S;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/account/ui/v;->bi:Lcom/xiaomi/account/ui/u;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/account/ui/v;->bi:Lcom/xiaomi/account/ui/u;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/u;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v2, v1, v4, v0}, Lcom/xiaomi/passport/utils/r;->Ez(Landroid/app/Activity;Landroid/app/Fragment;ZI)V

    goto :goto_0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/task/d;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/v;->cK(Lcom/xiaomi/account/task/d;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/task/d;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/v;->cL(Lcom/xiaomi/account/task/d;)V

    return-void
.end method
