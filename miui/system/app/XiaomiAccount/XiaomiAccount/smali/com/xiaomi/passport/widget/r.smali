.class public Lcom/xiaomi/passport/widget/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/widget/j;


# instance fields
.field private yA:Landroid/os/Message;

.field private yB:Ljava/lang/CharSequence;

.field private yC:I

.field private yD:Landroid/content/Context;

.field private yE:Landroid/view/View;

.field private yF:Landroid/content/DialogInterface;

.field private yG:Landroid/os/Handler;

.field private final yH:Ljava/lang/Runnable;

.field private yI:Lcom/xiaomi/passport/widget/i;

.field private yJ:Lcom/xiaomi/passport/widget/b;

.field private yK:Ljava/lang/CharSequence;

.field private yL:Landroid/widget/TextView;

.field private yM:Landroid/content/DialogInterface$OnClickListener;

.field private yN:Landroid/widget/ScrollView;

.field private yO:Ljava/lang/CharSequence;

.field private yP:Landroid/widget/TextView;

.field private yQ:Landroid/view/View;

.field private final yR:Landroid/view/Window;

.field private yp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/passport/widget/m;",
            ">;"
        }
    .end annotation
.end field

.field private final yq:I

.field private yr:Landroid/view/ViewGroup;

.field private ys:Landroid/view/View$OnClickListener;

.field private yt:Landroid/widget/Button;

.field private yu:Landroid/os/Message;

.field private yv:Ljava/lang/CharSequence;

.field private yw:Landroid/widget/Button;

.field private yx:Landroid/os/Message;

.field private yy:Ljava/lang/CharSequence;

.field private yz:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/passport/widget/y;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/widget/y;-><init>(Lcom/xiaomi/passport/widget/r;)V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/r;->ys:Landroid/view/View$OnClickListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/passport/widget/r;->yC:I

    new-instance v0, Lcom/xiaomi/passport/widget/z;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/widget/z;-><init>(Lcom/xiaomi/passport/widget/r;)V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/r;->yH:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/passport/widget/A;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/widget/A;-><init>(Lcom/xiaomi/passport/widget/r;)V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/r;->yJ:Lcom/xiaomi/passport/widget/b;

    iput-object p1, p0, Lcom/xiaomi/passport/widget/r;->yD:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/passport/widget/r;->yF:Landroid/content/DialogInterface;

    iput-object p3, p0, Lcom/xiaomi/passport/widget/r;->yR:Landroid/view/Window;

    new-instance v0, Lcom/xiaomi/passport/widget/s;

    invoke-direct {v0, p2}, Lcom/xiaomi/passport/widget/s;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/r;->yG:Landroid/os/Handler;

    sget-object v0, Lcom/xiaomi/passport/e;->Lt:[I

    const/4 v1, 0x0

    const v2, 0x101005d

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0x7f030018

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/passport/widget/r;->yq:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic BA(Lcom/xiaomi/passport/widget/r;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yt:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic BB(Lcom/xiaomi/passport/widget/r;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yu:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic BC(Lcom/xiaomi/passport/widget/r;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yw:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic BD(Lcom/xiaomi/passport/widget/r;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yx:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic BE(Lcom/xiaomi/passport/widget/r;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yz:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic BF(Lcom/xiaomi/passport/widget/r;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yA:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic BG(Lcom/xiaomi/passport/widget/r;)Landroid/content/DialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yF:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic BH(Lcom/xiaomi/passport/widget/r;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yG:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic BI(Lcom/xiaomi/passport/widget/r;Lcom/xiaomi/passport/widget/i;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/widget/r;->Bs(Lcom/xiaomi/passport/widget/i;)Z

    move-result v0

    return v0
.end method

.method static synthetic BJ(Lcom/xiaomi/passport/widget/r;Lcom/xiaomi/passport/widget/i;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/widget/r;->Bt(Lcom/xiaomi/passport/widget/i;)Z

    move-result v0

    return v0
.end method

.method static synthetic BK(Lcom/xiaomi/passport/widget/r;Lcom/xiaomi/passport/widget/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/widget/r;->Bu(Lcom/xiaomi/passport/widget/i;)V

    return-void
.end method

.method static Bp(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/passport/widget/r;->Bp(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_3
    return v2
.end method

.method private Br()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yR:Landroid/view/Window;

    iget v1, p0, Lcom/xiaomi/passport/widget/r;->yq:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    sget-boolean v0, Lcom/xiaomi/passport/g;->LC:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yR:Landroid/view/Window;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yR:Landroid/view/Window;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method private Bs(Lcom/xiaomi/passport/widget/i;)Z
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/m;

    iget v3, v0, Lcom/xiaomi/passport/widget/m;->id:I

    iget-object v4, v0, Lcom/xiaomi/passport/widget/m;->xp:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v3, v2, v4}, Lcom/xiaomi/passport/widget/i;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, v0, Lcom/xiaomi/passport/widget/m;->xo:I

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private Bt(Lcom/xiaomi/passport/widget/i;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private Bu(Lcom/xiaomi/passport/widget/i;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yI:Lcom/xiaomi/passport/widget/i;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/passport/widget/r;->yI:Lcom/xiaomi/passport/widget/i;

    return-void
.end method

.method private Bv(Landroid/view/ViewGroup;)V
    .locals 6

    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/widget/r;->yz:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yz:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yz:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->ys:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yB:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yz:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v2

    :goto_0
    const v0, 0x102001a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/widget/r;->yt:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yt:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yt:Landroid/widget/Button;

    iget-object v4, p0, Lcom/xiaomi/passport/widget/r;->ys:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yv:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yt:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    :goto_1
    const v0, 0x102001b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/widget/r;->yw:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yw:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yw:Landroid/widget/Button;

    iget-object v4, p0, Lcom/xiaomi/passport/widget/r;->ys:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yy:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yw:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    :goto_2
    if-nez v1, :cond_2

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yz:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yB:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yz:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yt:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yv:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yt:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yw:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yy:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yw:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method private Bw(Landroid/view/ViewGroup;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yr:Landroid/view/ViewGroup;

    const v1, 0x7f100056

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/xiaomi/passport/widget/r;->yN:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yN:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yr:Landroid/view/ViewGroup;

    const v1, 0x7f100057

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/widget/r;->yL:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yL:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yK:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yL:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yK:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yL:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yN:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yL:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private Bx(Landroid/widget/FrameLayout;)V
    .locals 6

    const/4 v3, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yQ:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yr:Landroid/view/ViewGroup;

    const v1, 0x102002b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yQ:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yQ:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yQ:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yD:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/passport/widget/r;->yD:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v2, v4, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yr:Landroid/view/ViewGroup;

    const v1, 0x7f100058

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private By(Landroid/view/ViewGroup;)V
    .locals 6

    const v5, 0x7f100054

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yE:Landroid/view/View;

    if-eqz v0, :cond_6

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yE:Landroid/view/View;

    invoke-virtual {p1, v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yD:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yE:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yE:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yD:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v1, v4, :cond_3

    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yE:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yE:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    :goto_0
    iget-object v4, p0, Lcom/xiaomi/passport/widget/r;->yE:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/xiaomi/passport/widget/r;->yE:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    :cond_1
    iget-object v4, p0, Lcom/xiaomi/passport/widget/r;->yE:Landroid/view/View;

    invoke-virtual {v4, v1, v0, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yr:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_2
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yE:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yE:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    :goto_3
    iget-object v4, p0, Lcom/xiaomi/passport/widget/r;->yE:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/xiaomi/passport/widget/r;->yE:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    :cond_4
    iget-object v4, p0, Lcom/xiaomi/passport/widget/r;->yE:Landroid/view/View;

    invoke-virtual {v4, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yO:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/widget/r;->yP:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yP:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yO:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2
.end method

.method private Bz()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yr:Landroid/view/ViewGroup;

    const v1, 0x7f100053

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/widget/r;->By(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yr:Landroid/view/ViewGroup;

    const v1, 0x7f100055

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/widget/r;->Bw(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yr:Landroid/view/ViewGroup;

    const v1, 0x7f100058

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/widget/r;->Bx(Landroid/widget/FrameLayout;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yr:Landroid/view/ViewGroup;

    const v1, 0x7f100059

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/widget/r;->Bv(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public Au(Lcom/xiaomi/passport/widget/i;Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yM:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yM:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yF:Landroid/content/DialogInterface;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public Bi(Ljava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/passport/widget/m;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/passport/widget/r;->yp:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/xiaomi/passport/widget/r;->yM:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public Bj()V
    .locals 3

    const/high16 v2, 0x20000

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yR:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yQ:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yQ:Landroid/view/View;

    invoke-static {v0}, Lcom/xiaomi/passport/widget/r;->Bp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/passport/widget/r;->Br()V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yR:Landroid/view/Window;

    const v1, 0x7f100052

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaomi/passport/widget/r;->yr:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/xiaomi/passport/widget/r;->Bz()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yR:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public Bk(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/widget/r;->yE:Landroid/view/View;

    return-void
.end method

.method public Bl(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/passport/widget/r;->yK:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yL:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yL:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public Bm(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/widget/r;->yQ:Landroid/view/View;

    return-void
.end method

.method public Bn(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yG:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput-object p2, p0, Lcom/xiaomi/passport/widget/r;->yB:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/xiaomi/passport/widget/r;->yA:Landroid/os/Message;

    :goto_0
    return-void

    :pswitch_1
    iput-object p2, p0, Lcom/xiaomi/passport/widget/r;->yv:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/xiaomi/passport/widget/r;->yu:Landroid/os/Message;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Lcom/xiaomi/passport/widget/r;->yy:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/xiaomi/passport/widget/r;->yx:Landroid/os/Message;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Bo(I)Landroid/widget/Button;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yz:Landroid/widget/Button;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yt:Landroid/widget/Button;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yw:Landroid/widget/Button;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method Bq()Lcom/xiaomi/passport/widget/i;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/widget/i;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/r;->yD:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/widget/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/widget/i;->Am(Lcom/xiaomi/passport/widget/j;)V

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yN:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yN:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yN:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yN:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/passport/widget/r;->yO:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yP:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/r;->yP:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
