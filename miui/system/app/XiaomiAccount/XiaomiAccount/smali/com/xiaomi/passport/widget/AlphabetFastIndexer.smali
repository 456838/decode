.class public Lcom/xiaomi/passport/widget/AlphabetFastIndexer;
.super Landroid/widget/ImageView;
.source ""


# instance fields
.field private xA:Ljava/lang/Runnable;

.field private xB:I

.field private xC:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private xD:Lcom/xiaomi/passport/widget/n;

.field private xE:I

.field private xq:Landroid/os/Handler;

.field private xr:I

.field private xs:I

.field private xt:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private xu:Landroid/widget/TextView;

.field private xv:Landroid/graphics/drawable/Drawable;

.field private xw:I

.field private xx:I

.field private xy:I

.field private xz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/xiaomi/passport/widget/u;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/widget/u;-><init>(Lcom/xiaomi/passport/widget/AlphabetFastIndexer;)V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xC:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput v2, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xs:I

    iput v2, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xB:I

    new-instance v0, Lcom/xiaomi/passport/widget/v;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/widget/v;-><init>(Lcom/xiaomi/passport/widget/AlphabetFastIndexer;)V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xA:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/passport/widget/w;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/widget/w;-><init>(Lcom/xiaomi/passport/widget/AlphabetFastIndexer;)V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xq:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    sget-object v0, Lcom/xiaomi/passport/e;->Ls:[I

    invoke-virtual {p1, p2, v0, v2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    new-instance v0, Lcom/xiaomi/passport/widget/n;

    invoke-direct {v0, p1, v2}, Lcom/xiaomi/passport/widget/n;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    const v0, 0x7f0a002b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xw:I

    const v0, 0x7f0a002a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xz:I

    const v0, 0x7f0a0029

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xy:I

    const v0, 0x7f08001e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xx:I

    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xv:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xv:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const v0, 0x7f02002c

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xv:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f02002b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xE:I

    return-void

    :cond_2
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private AD(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "!"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p1, "\u2605"

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xu:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xq:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xq:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xq:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method private AE()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private AF(FLandroid/widget/SectionIndexer;)I
    .locals 6

    const/4 v5, -0x1

    const/4 v0, 0x0

    invoke-interface {p2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v5

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int v3, v4, v3

    if-gtz v3, :cond_1

    return v5

    :cond_1
    int-to-float v2, v2

    sub-float v2, p1, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    iget-object v3, v3, Lcom/xiaomi/passport/widget/n;->xN:[Ljava/lang/String;

    array-length v3, v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-gez v2, :cond_2

    return v5

    :cond_2
    iget-object v3, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    iget-object v3, v3, Lcom/xiaomi/passport/widget/n;->xN:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_3

    array-length v0, v1

    return v0

    :cond_3
    iget-object v3, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    iget-object v3, v3, Lcom/xiaomi/passport/widget/n;->xN:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_4

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x2

    :cond_4
    if-gez v1, :cond_5

    :goto_0
    return v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private AG()Landroid/widget/SectionIndexer;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    :goto_0
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-nez v2, :cond_1

    instance-of v2, v0, Landroid/widget/WrapperListAdapter;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/widget/WrapperListAdapter;

    invoke-interface {v0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/widget/SectionIndexer;

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private AH()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AG()Landroid/widget/SectionIndexer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    invoke-direct {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AE()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    iget-object v1, v1, Lcom/xiaomi/passport/widget/n;->xN:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xr:I

    if-eq v1, v0, :cond_2

    iput v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xr:I

    iget v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xB:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xr:I

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AJ(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->invalidate()V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private AI(Landroid/widget/SectionIndexer;I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AE()I

    move-result v10

    int-to-float v2, v9

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    const/high16 v3, 0x41000000    # 8.0f

    div-float v11, v2, v3

    invoke-interface/range {p1 .. p1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_7

    array-length v2, v12

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    array-length v13, v12

    move/from16 v0, p2

    if-lt v0, v13, :cond_e

    add-int/lit8 v2, v13, -0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v4

    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v3, v13, -0x1

    if-ge v2, v3, :cond_d

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v3

    move v8, v3

    :goto_1
    if-ne v8, v4, :cond_c

    move v3, v4

    move v5, v2

    :goto_2
    if-lez v5, :cond_b

    add-int/lit8 v3, v5, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    if-eq v5, v4, :cond_0

    move v4, v5

    move v5, v3

    :goto_3
    add-int/lit8 v6, v7, 0x1

    :goto_4
    if-ge v6, v13, :cond_2

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v14

    if-ne v14, v8, :cond_2

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_0
    if-nez v3, :cond_1

    const/4 v3, 0x0

    move v4, v5

    move v5, v3

    move v3, v2

    goto :goto_3

    :cond_1
    move v15, v5

    move v5, v3

    move v3, v15

    goto :goto_2

    :cond_2
    int-to-float v6, v3

    int-to-float v14, v13

    div-float/2addr v6, v14

    int-to-float v7, v7

    int-to-float v14, v13

    div-float/2addr v7, v14

    move/from16 v0, p2

    int-to-float v14, v0

    int-to-float v13, v13

    div-float v13, v14, v13

    if-ne v3, v2, :cond_4

    sub-float v2, v13, v6

    cmpg-float v2, v2, v11

    if-gez v2, :cond_4

    move v2, v4

    :goto_5
    add-int/lit8 v3, v9, -0x1

    if-le v2, v3, :cond_a

    add-int/lit8 v2, v9, -0x1

    move v3, v2

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    instance-of v2, v2, Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    check-cast v2, Landroid/widget/ExpandableListView;

    add-int/2addr v3, v10

    invoke-static {v3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    :goto_7
    if-ltz v5, :cond_3

    if-eqz v12, :cond_3

    aget-object v2, v12, v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AD(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    sub-int v2, v8, v4

    int-to-float v2, v2

    sub-float v3, v13, v6

    mul-float/2addr v2, v3

    sub-float v3, v7, v6

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v4

    goto :goto_5

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    check-cast v2, Landroid/widget/ListView;

    add-int/2addr v3, v10

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    add-int/2addr v3, v10

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_7

    :cond_7
    mul-int v2, p2, v9

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    instance-of v2, v2, Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    check-cast v2, Landroid/widget/ExpandableListView;

    add-int/2addr v3, v10

    invoke-static {v3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    :goto_8
    const/4 v5, -0x1

    goto :goto_7

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    check-cast v2, Landroid/widget/ListView;

    add-int/2addr v3, v10

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_8

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    add-int/2addr v3, v10

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_8

    :cond_a
    move v3, v2

    goto/16 :goto_6

    :cond_b
    move v4, v3

    move v5, v2

    move v3, v2

    goto/16 :goto_3

    :cond_c
    move v3, v2

    move v5, v2

    goto/16 :goto_3

    :cond_d
    move v8, v9

    goto/16 :goto_1

    :cond_e
    move/from16 v2, p2

    goto/16 :goto_0
.end method

.method private AJ(I)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    iget-object v2, v2, Lcom/xiaomi/passport/widget/n;->xN:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v2, v1

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    iget-object v2, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xC:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/passport/widget/n;->AS(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic AL(Lcom/xiaomi/passport/widget/AlphabetFastIndexer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xu:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic AM(Lcom/xiaomi/passport/widget/AlphabetFastIndexer;)Lcom/xiaomi/passport/widget/n;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    return-object v0
.end method

.method static synthetic AN(Lcom/xiaomi/passport/widget/AlphabetFastIndexer;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xs:I

    return p1
.end method

.method static synthetic AO(Lcom/xiaomi/passport/widget/AlphabetFastIndexer;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AH()V

    return-void
.end method


# virtual methods
.method public AA(Ljava/lang/CharSequence;)V
    .locals 2

    iget v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xB:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xs:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AD(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public AB(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/widget/o;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/widget/o;-><init>(Lcom/xiaomi/passport/widget/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V

    return-object v0
.end method

.method public AC()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AK(I)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->setVisibility(I)V

    iput-object v2, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    :cond_0
    return-void
.end method

.method AK(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->setPressed(Z)V

    iput v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xB:I

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->postInvalidate()V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xq:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-gtz p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xu:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xu:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xq:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xq:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public Az(Landroid/widget/AdapterView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    const/16 v5, 0x11

    const/4 v4, -0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AC()V

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xr:I

    iput-object p1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xu:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget v2, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xw:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xz:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xu:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xu:Landroid/widget/TextView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xu:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xu:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xu:Landroid/widget/TextView;

    iget v2, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xy:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xu:Landroid/widget/TextView;

    iget v2, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xx:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xu:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xE:I

    or-int/lit8 v1, v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AH()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xu:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    iget-object v6, v2, Lcom/xiaomi/passport/widget/n;->xN:[Ljava/lang/String;

    int-to-float v1, v1

    array-length v2, v6

    int-to-float v2, v2

    div-float v7, v1, v2

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v5

    iget-object v1, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    invoke-virtual {v1}, Lcom/xiaomi/passport/widget/n;->AP()V

    int-to-float v0, v0

    div-float v1, v7, v5

    add-float v5, v0, v1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    iget v0, v0, Lcom/xiaomi/passport/widget/n;->xT:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    iget v0, v0, Lcom/xiaomi/passport/widget/n;->xU:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/passport/widget/n;->AT(FF)V

    :cond_2
    :goto_0
    array-length v0, v6

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->isPressed()Z

    move-result v2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/passport/widget/n;->AQ(Landroid/graphics/Canvas;ZIFF)V

    add-float/2addr v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/widget/n;->AR(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xr:I

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xA:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AK(I)V

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AG()Landroid/widget/SectionIndexer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AK(I)V

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AK(I)V

    :cond_2
    :goto_1
    return v3

    :pswitch_0
    iput v3, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xB:I

    invoke-virtual {p0, v3}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->setPressed(Z)V

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AF(FLandroid/widget/SectionIndexer;)I

    move-result v1

    if-gez v1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xt:Landroid/widget/AdapterView;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AI(Landroid/widget/SectionIndexer;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xD:Lcom/xiaomi/passport/widget/n;

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/widget/n;->AT(FF)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->postInvalidate()V

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->xr:I

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AJ(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
