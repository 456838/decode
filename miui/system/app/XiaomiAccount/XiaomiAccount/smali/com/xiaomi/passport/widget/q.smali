.class public Lcom/xiaomi/passport/widget/q;
.super Lcom/xiaomi/passport/widget/i;
.source ""

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private yn:Lcom/xiaomi/passport/widget/g;

.field private yo:Lcom/xiaomi/passport/widget/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/passport/widget/i;Lcom/xiaomi/passport/widget/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/widget/i;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaomi/passport/widget/q;->yo:Lcom/xiaomi/passport/widget/i;

    iput-object p3, p0, Lcom/xiaomi/passport/widget/q;->yn:Lcom/xiaomi/passport/widget/g;

    return-void
.end method


# virtual methods
.method public Aj()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/q;->yo:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/i;->Aj()Z

    move-result v0

    return v0
.end method

.method public Am(Lcom/xiaomi/passport/widget/j;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/q;->yo:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/i;->Am(Lcom/xiaomi/passport/widget/j;)V

    return-void
.end method

.method public clearHeader()V
    .locals 0

    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/q;->yn:Lcom/xiaomi/passport/widget/g;

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/q;->zQ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/xiaomi/passport/widget/i;->An(Landroid/graphics/drawable/Drawable;)Lcom/xiaomi/passport/widget/i;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lcom/xiaomi/passport/widget/i;->An(Landroid/graphics/drawable/Drawable;)Lcom/xiaomi/passport/widget/i;

    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/q;->zQ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/xiaomi/passport/widget/i;->Ap(Ljava/lang/CharSequence;)Lcom/xiaomi/passport/widget/i;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lcom/xiaomi/passport/widget/i;->Ap(Ljava/lang/CharSequence;)Lcom/xiaomi/passport/widget/i;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lcom/xiaomi/passport/widget/i;->Aq(Landroid/view/View;)Lcom/xiaomi/passport/widget/i;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/q;->yn:Lcom/xiaomi/passport/widget/g;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/g;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/q;->yn:Lcom/xiaomi/passport/widget/g;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/g;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/q;->yo:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/i;->setQwertyMode(Z)V

    return-void
.end method

.method public zO()Lcom/xiaomi/passport/widget/i;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/q;->yo:Lcom/xiaomi/passport/widget/i;

    return-object v0
.end method

.method public zP(Lcom/xiaomi/passport/widget/i;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/xiaomi/passport/widget/i;->zP(Lcom/xiaomi/passport/widget/i;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/q;->yo:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/widget/i;->zP(Lcom/xiaomi/passport/widget/i;Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public zW(Lcom/xiaomi/passport/widget/g;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/q;->yo:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/i;->zW(Lcom/xiaomi/passport/widget/g;)Z

    move-result v0

    return v0
.end method

.method public zX(Lcom/xiaomi/passport/widget/g;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/q;->yo:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/i;->zX(Lcom/xiaomi/passport/widget/g;)Z

    move-result v0

    return v0
.end method
