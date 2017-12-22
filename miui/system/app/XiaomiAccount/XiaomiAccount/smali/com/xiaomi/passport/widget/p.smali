.class public Lcom/xiaomi/passport/widget/p;
.super Lcom/xiaomi/passport/widget/e;
.source ""


# instance fields
.field private xX:Z

.field private xY:I

.field private xZ:I

.field private ya:Z

.field private yb:Landroid/graphics/drawable/Drawable;

.field private yc:I

.field private yd:Ljava/lang/CharSequence;

.field private ye:Landroid/widget/TextView;

.field private yf:Landroid/widget/ProgressBar;

.field private yg:Landroid/graphics/drawable/Drawable;

.field private yh:Ljava/lang/String;

.field private yi:Ljava/text/NumberFormat;

.field private yj:I

.field private yk:I

.field private yl:I

.field private ym:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/widget/e;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/passport/widget/p;->yj:I

    invoke-direct {p0}, Lcom/xiaomi/passport/widget/p;->AW()V

    return-void
.end method

.method private AW()V
    .locals 2

    const-string/jumbo v0, "%1d/%2d"

    iput-object v0, p0, Lcom/xiaomi/passport/widget/p;->yh:Ljava/lang/String;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/widget/p;->yi:Ljava/text/NumberFormat;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yi:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method private AX()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/xiaomi/passport/widget/p;->yj:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->ym:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->ym:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->ym:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic Bf(Lcom/xiaomi/passport/widget/p;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yd:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic Bg(Lcom/xiaomi/passport/widget/p;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic Bh(Lcom/xiaomi/passport/widget/p;)Ljava/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yi:Ljava/text/NumberFormat;

    return-object v0
.end method


# virtual methods
.method public AU(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    invoke-direct {p0}, Lcom/xiaomi/passport/widget/p;->AX()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/xiaomi/passport/widget/p;->xY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xiaomi/passport/widget/p;->xY:I

    goto :goto_0
.end method

.method public AV(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    invoke-direct {p0}, Lcom/xiaomi/passport/widget/p;->AX()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/xiaomi/passport/widget/p;->xZ:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xiaomi/passport/widget/p;->xZ:I

    goto :goto_0
.end method

.method public AY(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/xiaomi/passport/widget/p;->ya:Z

    goto :goto_0
.end method

.method public AZ(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/passport/widget/p;->yb:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public Ba(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-direct {p0}, Lcom/xiaomi/passport/widget/p;->AX()V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/xiaomi/passport/widget/p;->yc:I

    goto :goto_0
.end method

.method public Bb(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaomi/passport/widget/p;->yj:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/passport/widget/p;->yd:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->ye:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/xiaomi/passport/widget/p;->yd:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public Bc(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/widget/p;->xX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/xiaomi/passport/widget/p;->AX()V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/xiaomi/passport/widget/p;->yk:I

    goto :goto_0
.end method

.method public Bd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/passport/widget/p;->yg:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public Be(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-direct {p0}, Lcom/xiaomi/passport/widget/p;->AX()V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/xiaomi/passport/widget/p;->yl:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/p;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/passport/e;->Lt:[I

    const v3, 0x101005d

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    iget v1, p0, Lcom/xiaomi/passport/widget/p;->yj:I

    if-ne v1, v6, :cond_8

    new-instance v1, Lcom/xiaomi/passport/widget/x;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/widget/x;-><init>(Lcom/xiaomi/passport/widget/p;)V

    iput-object v1, p0, Lcom/xiaomi/passport/widget/p;->ym:Landroid/os/Handler;

    const/4 v1, 0x2

    const v3, 0x7f030019

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const v0, 0x102000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xiaomi/passport/widget/p;->yf:Landroid/widget/ProgressBar;

    const v0, 0x7f100057

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/widget/p;->ye:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/widget/p;->zr(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Lcom/xiaomi/passport/widget/p;->yc:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/passport/widget/p;->yc:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/p;->Ba(I)V

    :cond_0
    iget v0, p0, Lcom/xiaomi/passport/widget/p;->yk:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/xiaomi/passport/widget/p;->yk:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/p;->Bc(I)V

    :cond_1
    iget v0, p0, Lcom/xiaomi/passport/widget/p;->yl:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/xiaomi/passport/widget/p;->yl:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/p;->Be(I)V

    :cond_2
    iget v0, p0, Lcom/xiaomi/passport/widget/p;->xY:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/xiaomi/passport/widget/p;->xY:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/p;->AU(I)V

    :cond_3
    iget v0, p0, Lcom/xiaomi/passport/widget/p;->xZ:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/xiaomi/passport/widget/p;->xZ:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/p;->AV(I)V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/p;->Bd(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/p;->AZ(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yd:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/passport/widget/p;->yd:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/p;->Bb(Ljava/lang/CharSequence;)V

    :cond_7
    iget-boolean v0, p0, Lcom/xiaomi/passport/widget/p;->ya:Z

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/p;->AY(Z)V

    invoke-direct {p0}, Lcom/xiaomi/passport/widget/p;->AX()V

    invoke-super {p0, p1}, Lcom/xiaomi/passport/widget/e;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_8
    const v1, 0x7f030049

    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/passport/widget/e;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/passport/widget/p;->xX:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/passport/widget/e;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/passport/widget/p;->xX:Z

    return-void
.end method
