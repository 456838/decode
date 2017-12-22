.class public Lcom/xiaomi/passport/ui/PassportGroupEditText;
.super Landroid/widget/EditText;
.source ""


# static fields
.field static sy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private sw:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

.field private sx:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x10800aa

    const/4 v1, 0x4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sy:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sz:Ljava/util/Map;

    sget-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sy:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sE:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sy:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sA:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    const v2, 0x7f020057

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sy:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sD:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    const v2, 0x7f02005d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sy:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sB:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    const v2, 0x7f02005b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sy:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sC:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    const v2, 0x7f02005f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sz:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sE:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sz:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sA:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    const v2, 0x7f020058

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sz:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sD:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    const v2, 0x7f02005e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sz:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sB:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    const v2, 0x7f02005c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sz:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sC:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    const v2, 0x7f020060

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private xU()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sx:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sz:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sy:Ljava/util/Map;

    goto :goto_0
.end method

.method private xV()I
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xU()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sw:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private xW()I
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sx:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private xX()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xW()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setTextColor(I)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xV()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public setBackgroundResource(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getPaddingBottom()I

    move-result v1

    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setPaddingRelative(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->requestFocus()Z

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public xS(Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sw:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xX()V

    return-void
.end method

.method public xT(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/passport/ui/PassportGroupEditText;->sx:Z

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xX()V

    return-void
.end method
