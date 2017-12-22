.class public Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;
.super Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;
.source "StopNoisingWindow.java"


# instance fields
.field private mStopButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 20
    sget v0, Lmiui/R$style;->Theme_Light_Dialog:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;-><init>(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 19
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;->mStopButton:Landroid/widget/Button;

    .line 36
    return-void
.end method

.method private initViews()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method private registerViewListeners()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;->mStopButton:Landroid/widget/Button;

    new-instance v1, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow$1;-><init>(Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected buildRootView()Landroid/view/ViewGroup;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-super {p0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->buildRootView()Landroid/view/ViewGroup;

    move-result-object v2

    .line 81
    .local v2, "root":Landroid/view/ViewGroup;
    const/4 v3, 0x1

    new-array v3, v3, [I

    .line 82
    const v4, 0x1010054

    aput v4, v3, v5

    .line 81
    invoke-virtual {p0, v3}, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "bgAttrs":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 85
    .local v1, "bgRes":I
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 89
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-object v2
.end method

.method protected buildWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-super {p0}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->buildWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 60
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7d3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 62
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 63
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 64
    const/16 v3, 0x50

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 67
    const v3, 0x101021f

    .line 68
    const v4, 0x1010032

    .line 66
    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "dimAttrs":Landroid/content/res/TypedArray;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    :cond_0
    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 70
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/PowerfulKeyguard;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 29
    .local v0, "li":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;->setContentView(Landroid/view/View;)V

    .line 31
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;->findViews()V

    .line 32
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;->registerViewListeners()V

    .line 33
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/StopNoisingWindow;->initViews()V

    .line 24
    return-void
.end method
