.class public final Lcom/xiaomi/passport/widget/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem;


# instance fields
.field private wA:Landroid/view/ContextMenu$ContextMenuInfo;

.field private wB:Landroid/view/MenuItem$OnActionExpandListener;

.field private final wC:I

.field private wD:C

.field private wE:C

.field private wF:I

.field private wG:Lcom/xiaomi/passport/widget/q;

.field private wH:Ljava/lang/CharSequence;

.field private wI:Ljava/lang/CharSequence;

.field private wn:Landroid/view/ActionProvider;

.field private wo:Landroid/view/View;

.field private final wp:I

.field private wq:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private wr:I

.field private final ws:I

.field private wt:Landroid/graphics/drawable/Drawable;

.field private wu:I

.field private final wv:I

.field private ww:Landroid/content/Intent;

.field private wx:Z

.field private wy:Ljava/lang/Runnable;

.field private wz:Lcom/xiaomi/passport/widget/i;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/widget/i;IIIILjava/lang/CharSequence;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/xiaomi/passport/widget/g;->wu:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    iput v1, p0, Lcom/xiaomi/passport/widget/g;->wF:I

    iput-boolean v1, p0, Lcom/xiaomi/passport/widget/g;->wx:Z

    iput-object p1, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    iput p3, p0, Lcom/xiaomi/passport/widget/g;->wv:I

    iput p2, p0, Lcom/xiaomi/passport/widget/g;->ws:I

    iput p4, p0, Lcom/xiaomi/passport/widget/g;->wp:I

    iput p5, p0, Lcom/xiaomi/passport/widget/g;->wC:I

    iput-object p6, p0, Lcom/xiaomi/passport/widget/g;->wH:Ljava/lang/CharSequence;

    iput p7, p0, Lcom/xiaomi/passport/widget/g;->wF:I

    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/xiaomi/passport/widget/g;->wF:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/widget/g;->wo:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/passport/widget/g;->wB:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/g;->wB:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/widget/i;->zX(Lcom/xiaomi/passport/widget/g;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public expandActionView()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/xiaomi/passport/widget/g;->wF:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/widget/g;->wo:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/widget/g;->wB:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/g;->wB:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/widget/i;->zW(Lcom/xiaomi/passport/widget/g;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Implementation should use getSupportActionProvider!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wo:Landroid/view/View;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wn:Landroid/view/ActionProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wn:Landroid/view/ActionProvider;

    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/widget/g;->wo:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wo:Landroid/view/View;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    iget-char v0, p0, Lcom/xiaomi/passport/widget/g;->wD:C

    return v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/passport/widget/g;->ws:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wt:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wt:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wu:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/i;->zS()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/passport/widget/g;->wu:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput v2, p0, Lcom/xiaomi/passport/widget/g;->wu:I

    iput-object v0, p0, Lcom/xiaomi/passport/widget/g;->wt:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->ww:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wv:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wA:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    iget-char v0, p0, Lcom/xiaomi/passport/widget/g;->wE:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wp:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wG:Lcom/xiaomi/passport/widget/q;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wH:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wI:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wI:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wH:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public hasSubMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wG:Lcom/xiaomi/passport/widget/q;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/widget/g;->wx:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/g;->wn:Landroid/view/ActionProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/widget/g;->wn:Landroid/view/ActionProvider;

    invoke-virtual {v1}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wn:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    :cond_0
    return v0

    :cond_1
    iget v1, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Implementation should use setSupportActionProvider!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/i;->zQ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/g;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/xiaomi/passport/widget/g;->wo:Landroid/view/View;

    iput-object v0, p0, Lcom/xiaomi/passport/widget/g;->wn:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wv:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/widget/i;->zV(Lcom/xiaomi/passport/widget/g;)V

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2

    iget-char v0, p0, Lcom/xiaomi/passport/widget/g;->wD:C

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/xiaomi/passport/widget/g;->wD:C

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    and-int/lit8 v3, v0, -0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/widget/i;->zT(Landroid/view/MenuItem;)V

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/widget/g;->zI(Z)V

    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    return-object p0

    :cond_0
    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/passport/widget/g;->wt:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/xiaomi/passport/widget/g;->wu:I

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaomi/passport/widget/g;->wu:I

    iput-object p1, p0, Lcom/xiaomi/passport/widget/g;->wt:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/widget/g;->ww:Landroid/content/Intent;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2

    iget-char v0, p0, Lcom/xiaomi/passport/widget/g;->wE:C

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iput-char p1, p0, Lcom/xiaomi/passport/widget/g;->wE:C

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Implementation should use setSupportOnActionExpandListener!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/widget/g;->wq:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2

    iput-char p1, p0, Lcom/xiaomi/passport/widget/g;->wE:C

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/xiaomi/passport/widget/g;->wD:C

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Lcom/xiaomi/passport/widget/g;->wF:I

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/widget/i;->zV(Lcom/xiaomi/passport/widget/g;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/widget/g;->setShowAsAction(I)V

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/i;->zQ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/g;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/passport/widget/g;->wH:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wG:Lcom/xiaomi/passport/widget/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wG:Lcom/xiaomi/passport/widget/q;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/q;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/passport/widget/g;->wI:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/widget/g;->zM(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/widget/i;->zU(Lcom/xiaomi/passport/widget/g;)V

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wH:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zD()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wC:I

    return v0
.end method

.method public zE()Landroid/view/ActionProvider;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wn:Landroid/view/ActionProvider;

    return-object v0
.end method

.method public zF()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/xiaomi/passport/widget/g;->wF:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/g;->wo:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public zG()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wq:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wq:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v1}, Lcom/xiaomi/passport/widget/i;->zO()Lcom/xiaomi/passport/widget/i;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/passport/widget/i;->zP(Lcom/xiaomi/passport/widget/i;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wy:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wy:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->ww:Landroid/content/Intent;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/i;->zQ()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/g;->ww:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MenuItemImpl"

    const-string/jumbo v2, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wn:Landroid/view/ActionProvider;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wn:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zH()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method zI(Z)V
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/g;->wz:Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public zJ(Z)V
    .locals 2

    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method zK(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/widget/g;->wA:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method zL(Lcom/xiaomi/passport/widget/q;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/passport/widget/g;->wG:Lcom/xiaomi/passport/widget/q;

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/g;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/widget/q;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method zM(Z)Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    iget v0, p0, Lcom/xiaomi/passport/widget/g;->wr:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
