.class public Lcom/xiaomi/passport/utils/n;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final Ak:I

.field private final Al:Z

.field private final Am:Z

.field private final An:I

.field private final Ao:I

.field private final Ap:F

.field private final Aq:I

.field private final Ar:Z

.field private final As:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/passport/utils/n;->Am:Z

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/utils/n;->Ee(Landroid/app/Activity;)F

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/utils/n;->Ap:F

    const-string/jumbo v0, "status_bar_height"

    invoke-direct {p0, v3, v0}, Lcom/xiaomi/passport/utils/n;->DY(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/utils/n;->Aq:I

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/utils/n;->DX(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/utils/n;->Ak:I

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/utils/n;->Ea(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/utils/n;->An:I

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/utils/n;->Ec(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/utils/n;->Ao:I

    iget v0, p0, Lcom/xiaomi/passport/utils/n;->An:I

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/xiaomi/passport/utils/n;->Al:Z

    iput-boolean p2, p0, Lcom/xiaomi/passport/utils/n;->As:Z

    iput-boolean p3, p0, Lcom/xiaomi/passport/utils/n;->Ar:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/app/Activity;ZZLcom/xiaomi/passport/utils/n;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/passport/utils/n;-><init>(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method private DX(Landroid/content/Context;)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private DY(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "dimen"

    const-string/jumbo v2, "android"

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private Ea(Landroid/content/Context;)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/utils/n;->Eg(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/passport/utils/n;->Am:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "navigation_bar_height"

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/xiaomi/passport/utils/n;->DY(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "navigation_bar_height_landscape"

    goto :goto_0

    :cond_1
    return v0
.end method

.method private Ec(Landroid/content/Context;)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/utils/n;->Eg(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "navigation_bar_width"

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/passport/utils/n;->DY(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method private Ee(Landroid/app/Activity;)F
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :goto_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method private Eg(Landroid/content/Context;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "config_showNavigationBar"

    const-string/jumbo v4, "bool"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const-string/jumbo v3, "1"

    invoke-static {}, Lcom/xiaomi/passport/utils/m;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "0"

    invoke-static {}, Lcom/xiaomi/passport/utils/m;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public DZ()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/passport/utils/n;->An:I

    return v0
.end method

.method public Eb()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/passport/utils/n;->Ao:I

    return v0
.end method

.method public Ed(Z)I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/xiaomi/passport/utils/n;->As:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xiaomi/passport/utils/n;->Aq:I

    :goto_0
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/xiaomi/passport/utils/n;->Ak:I

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public Ef()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/passport/utils/n;->Aq:I

    return v0
.end method

.method public Eh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/utils/n;->Al:Z

    return v0
.end method

.method public Ei()Z
    .locals 2

    iget v0, p0, Lcom/xiaomi/passport/utils/n;->Ap:F

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/passport/utils/n;->Am:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
