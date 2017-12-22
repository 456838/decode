.class public Lcom/xiaomi/passport/g;
.super Landroid/os/Build;
.source ""


# static fields
.field public static final LC:Z

.field public static final LD:Z

.field public static final LE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "mocha"

    sget-object v1, Lcom/xiaomi/passport/g;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/passport/g;->LD:Z

    const-string/jumbo v0, "flo"

    sget-object v1, Lcom/xiaomi/passport/g;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/passport/g;->LE:Z

    invoke-static {}, Lcom/xiaomi/passport/g;->PD()Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/passport/g;->LC:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Build;-><init>()V

    return-void
.end method

.method private static PD()Z
    .locals 4

    const/4 v0, 0x1

    sget-boolean v1, Lcom/xiaomi/passport/g;->LE:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/xiaomi/passport/g;->LD:Z

    if-eqz v1, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x258

    if-lt v1, v2, :cond_2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
