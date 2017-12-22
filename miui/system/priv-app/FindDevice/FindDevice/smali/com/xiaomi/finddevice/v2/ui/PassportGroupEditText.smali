.class public Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;
.super Landroid/widget/EditText;
.source "PassportGroupEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;
    }
.end annotation


# static fields
.field static sNormalBackgroundMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sWarnBackgroundMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStyle:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

.field private mWarning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->sNormalBackgroundMap:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->sWarnBackgroundMap:Ljava/util/Map;

    .line 24
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->sNormalBackgroundMap:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->FirstItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    const v2, 0x7f02000f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->sNormalBackgroundMap:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->MiddleItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    const v2, 0x7f020013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->sNormalBackgroundMap:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->LastItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    const v2, 0x7f020011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->sNormalBackgroundMap:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->SingleItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    const v2, 0x7f020015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->sWarnBackgroundMap:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->FirstItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    const v2, 0x7f020010

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->sWarnBackgroundMap:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->MiddleItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    const v2, 0x7f020014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->sWarnBackgroundMap:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->LastItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    const v2, 0x7f020012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->sWarnBackgroundMap:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->SingleItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    const v2, 0x7f020016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method private getBackgroundMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->mWarning:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->sWarnBackgroundMap:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->sNormalBackgroundMap:Ljava/util/Map;

    goto :goto_0
.end method

.method private getBackgroundResource()I
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->getBackgroundMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->mStyle:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getTextColor()I
    .locals 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->mWarning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    return v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private refreshViewState()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->getTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->setTextColor(I)V

    .line 66
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->getBackgroundResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->setBackgroundResource(I)V

    .line 64
    return-void
.end method


# virtual methods
.method public setBackgroundResource(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->getPaddingLeft()I

    move-result v1

    .line 72
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->getPaddingRight()I

    move-result v2

    .line 73
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->getPaddingTop()I

    move-result v3

    .line 74
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->getPaddingBottom()I

    move-result v0

    .line 75
    .local v0, "bottom":I
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 76
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->setPadding(IIII)V

    .line 70
    return-void
.end method

.method public setStyle(Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;)V
    .locals 0
    .param p1, "style"    # Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->mStyle:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    .line 56
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;->refreshViewState()V

    .line 54
    return-void
.end method
