.class Lcom/xiaomi/passport/widget/n;
.super Ljava/lang/Object;
.source ""


# instance fields
.field xF:I

.field xG:Landroid/animation/ValueAnimator;

.field xH:Landroid/graphics/drawable/BitmapDrawable;

.field xI:Landroid/graphics/Bitmap;

.field xJ:Landroid/graphics/Canvas;

.field xK:Landroid/graphics/Xfermode;

.field xL:Landroid/graphics/Xfermode;

.field xM:I

.field xN:[Ljava/lang/String;

.field xO:I

.field xP:Landroid/graphics/Paint;

.field xQ:Landroid/graphics/Rect;

.field xR:Landroid/graphics/Rect;

.field xS:Landroid/graphics/Rect;

.field xT:F

.field xU:F


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/passport/widget/n;->xP:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/passport/widget/n;->xR:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/passport/widget/n;->xQ:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v1, v4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/passport/widget/n;->xN:[Ljava/lang/String;

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    iget-object v7, p0, Lcom/xiaomi/passport/widget/n;->xN:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7f070000

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/widget/n;->xN:[Ljava/lang/String;

    :cond_1
    const v0, 0x7f08001f

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/widget/n;->xO:I

    const v0, 0x7f080020

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/widget/n;->xF:I

    const v0, 0x7f080021

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/widget/n;->xM:I

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xP:Landroid/graphics/Paint;

    const v1, 0x7f0a002c

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p2, v8, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xP:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xP:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xP:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    const v0, 0x7f02002d

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/xiaomi/passport/widget/n;->xH:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xH:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/widget/n;->xI:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/n;->xI:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/n;->xJ:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/n;->xS:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/n;->xK:Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/n;->xL:Landroid/graphics/Xfermode;

    :cond_3
    invoke-virtual {p0, v9, v9}, Lcom/xiaomi/passport/widget/n;->AT(FF)V

    return-void
.end method


# virtual methods
.method AP()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xP:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/widget/n;->xK:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, p0, Lcom/xiaomi/passport/widget/n;->xJ:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xH:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/n;->xR:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/passport/widget/n;->xR:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xH:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/n;->xJ:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xS:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/n;->xR:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method AQ(Landroid/graphics/Canvas;ZIFF)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/xiaomi/passport/widget/n;->xP:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xN:[Ljava/lang/String;

    aget-object v0, v0, p3

    const-string/jumbo v1, "!"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u2605"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, p0, Lcom/xiaomi/passport/widget/n;->xQ:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/n;->xQ:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, p0, Lcom/xiaomi/passport/widget/n;->xQ:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v4, v1

    if-eqz p2, :cond_2

    iget v1, p0, Lcom/xiaomi/passport/widget/n;->xF:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/n;->xQ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/xiaomi/passport/widget/n;->xQ:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    div-float/2addr v1, v7

    sub-float v1, p5, v1

    invoke-virtual {p1, v0, p4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/n;->xS:Landroid/graphics/Rect;

    div-float v5, v3, v7

    sub-float v5, p4, v5

    float-to-int v5, v5

    div-float v6, v4, v7

    sub-float v6, p5, v6

    float-to-int v6, v6

    div-float/2addr v3, v7

    add-float/2addr v3, p4

    float-to-int v3, v3

    div-float/2addr v4, v7

    add-float/2addr v4, p5

    float-to-int v4, v4

    invoke-virtual {v1, v5, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/n;->xR:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float v1, p4, v1

    iget-object v3, p0, Lcom/xiaomi/passport/widget/n;->xR:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, p5, v3

    iget v4, p0, Lcom/xiaomi/passport/widget/n;->xM:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/xiaomi/passport/widget/n;->xJ:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/xiaomi/passport/widget/n;->xQ:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/xiaomi/passport/widget/n;->xQ:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v3, v5

    invoke-virtual {v4, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xS:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/n;->xR:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xN:[Ljava/lang/String;

    aget-object v0, v0, p3

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/xiaomi/passport/widget/n;->xO:I

    goto :goto_1
.end method

.method AR(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xH:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/widget/n;->xL:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, p0, Lcom/xiaomi/passport/widget/n;->xH:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/xiaomi/passport/widget/n;->xJ:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xI:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/n;->xR:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v4, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method AS(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xG:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xG:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xR:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    move v0, p1

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/widget/n;->xG:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xG:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xG:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xG:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xR:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/xiaomi/passport/widget/n;->xR:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method AT(FF)V
    .locals 7

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/xiaomi/passport/widget/n;->xT:F

    iput p2, p0, Lcom/xiaomi/passport/widget/n;->xU:F

    iget-object v0, p0, Lcom/xiaomi/passport/widget/n;->xH:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/xiaomi/passport/widget/n;->xH:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/passport/widget/n;->xR:Landroid/graphics/Rect;

    iget v3, p0, Lcom/xiaomi/passport/widget/n;->xT:F

    sub-float/2addr v3, v0

    add-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, p0, Lcom/xiaomi/passport/widget/n;->xU:F

    sub-float/2addr v4, v1

    float-to-int v4, v4

    iget v5, p0, Lcom/xiaomi/passport/widget/n;->xT:F

    add-float/2addr v0, v5

    add-float/2addr v0, v6

    float-to-int v0, v0

    iget v5, p0, Lcom/xiaomi/passport/widget/n;->xU:F

    add-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
