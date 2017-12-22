.class public Lcom/xiaomi/passport/utils/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Aj:Ljava/lang/String;


# instance fields
.field private final Ac:Lcom/xiaomi/passport/utils/n;

.field private Ad:Z

.field private Ae:Z

.field private Af:Landroid/view/View;

.field private Ag:Z

.field private Ah:Z

.field private Ai:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "qemu.hw.mainkeys"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/passport/utils/m;->Aj:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v5, Lcom/xiaomi/passport/utils/m;->Aj:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    const v2, 0x10103ef

    const v3, 0x10103f0

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/xiaomi/passport/utils/m;->Ag:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/xiaomi/passport/utils/m;->Ad:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iput-boolean v6, p0, Lcom/xiaomi/passport/utils/m;->Ag:Z

    :cond_0
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iput-boolean v6, p0, Lcom/xiaomi/passport/utils/m;->Ad:Z

    :cond_1
    new-instance v1, Lcom/xiaomi/passport/utils/n;

    iget-boolean v2, p0, Lcom/xiaomi/passport/utils/m;->Ag:Z

    iget-boolean v3, p0, Lcom/xiaomi/passport/utils/m;->Ad:Z

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/xiaomi/passport/utils/n;-><init>(Landroid/app/Activity;ZZLcom/xiaomi/passport/utils/n;)V

    iput-object v1, p0, Lcom/xiaomi/passport/utils/m;->Ac:Lcom/xiaomi/passport/utils/n;

    iget-object v1, p0, Lcom/xiaomi/passport/utils/m;->Ac:Lcom/xiaomi/passport/utils/n;

    invoke-virtual {v1}, Lcom/xiaomi/passport/utils/n;->Eh()Z

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v5, p0, Lcom/xiaomi/passport/utils/m;->Ad:Z

    :cond_2
    iget-boolean v1, p0, Lcom/xiaomi/passport/utils/m;->Ag:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/passport/utils/m;->DV(Landroid/content/Context;Landroid/view/ViewGroup;)V

    :cond_3
    iget-boolean v1, p0, Lcom/xiaomi/passport/utils/m;->Ad:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/passport/utils/m;->DU(Landroid/content/Context;Landroid/view/ViewGroup;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private DU(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/passport/utils/m;->Af:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/passport/utils/m;->Ac:Lcom/xiaomi/passport/utils/n;

    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/n;->Ei()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/xiaomi/passport/utils/m;->Ac:Lcom/xiaomi/passport/utils/n;

    invoke-virtual {v1}, Lcom/xiaomi/passport/utils/n;->DZ()I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/passport/utils/m;->Af:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xiaomi/passport/utils/m;->Af:Landroid/view/View;

    const/high16 v1, -0x67000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/utils/m;->Af:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/utils/m;->Af:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/xiaomi/passport/utils/m;->Ac:Lcom/xiaomi/passport/utils/n;

    invoke-virtual {v1}, Lcom/xiaomi/passport/utils/n;->Eb()I

    move-result v1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private DV(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/passport/utils/m;->Ai:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/xiaomi/passport/utils/m;->Ac:Lcom/xiaomi/passport/utils/n;

    invoke-virtual {v1}, Lcom/xiaomi/passport/utils/n;->Ef()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v1, p0, Lcom/xiaomi/passport/utils/m;->Ad:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/utils/m;->Ac:Lcom/xiaomi/passport/utils/n;

    invoke-virtual {v1}, Lcom/xiaomi/passport/utils/n;->Ei()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/passport/utils/m;->Ai:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xiaomi/passport/utils/m;->Ai:Landroid/view/View;

    const/high16 v1, -0x67000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/utils/m;->Ai:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/utils/m;->Ai:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/passport/utils/m;->Ac:Lcom/xiaomi/passport/utils/n;

    invoke-virtual {v1}, Lcom/xiaomi/passport/utils/n;->Eb()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method static synthetic DW()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/utils/m;->Aj:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public DO(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/xiaomi/passport/utils/m;->Ah:Z

    iget-boolean v0, p0, Lcom/xiaomi/passport/utils/m;->Ag:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/utils/m;->Ai:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public DP(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/xiaomi/passport/utils/m;->Ae:Z

    iget-boolean v0, p0, Lcom/xiaomi/passport/utils/m;->Ad:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/utils/m;->Af:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public DQ(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/utils/m;->DT(I)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/utils/m;->DS(I)V

    return-void
.end method

.method public DR()Lcom/xiaomi/passport/utils/n;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/m;->Ac:Lcom/xiaomi/passport/utils/n;

    return-object v0
.end method

.method public DS(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/utils/m;->Ad:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/utils/m;->Af:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public DT(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/utils/m;->Ag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/utils/m;->Ai:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
