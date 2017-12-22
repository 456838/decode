.class public Lcom/xiaomi/finddevice/v2/ui/FindDeviceSuccessActivity;
.super Landroid/app/Activity;
.source "FindDeviceSuccessActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setupFindDeviceNotice(Landroid/widget/TextView;)V
    .locals 8
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    const/16 v5, 0xa

    .line 61
    const v4, 0x7f070015

    invoke-virtual {p0, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSuccessActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "s1":Ljava/lang/String;
    const v4, 0x7f070016

    invoke-virtual {p0, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSuccessActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "s2":Ljava/lang/String;
    const v4, 0x7f070017

    invoke-virtual {p0, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSuccessActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "s3":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 66
    .local v3, "ss":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 67
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 68
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 69
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 70
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 72
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    const/high16 v5, 0x7f080000

    invoke-direct {v4, p0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    .line 74
    const/16 v7, 0x21

    .line 71
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 75
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09001d

    if-ne v0, v1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSuccessActivity;->finish()V

    .line 24
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->ensureRunAsOwnerUser()V

    .line 34
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "called. "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSuccessActivity;->setContentView(I)V

    .line 39
    const v3, 0x7f09001c

    invoke-virtual {p0, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 40
    .local v1, "noticeView":Landroid/widget/TextView;
    invoke-direct {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSuccessActivity;->setupFindDeviceNotice(Landroid/widget/TextView;)V

    .line 42
    const v3, 0x7f09001d

    invoke-virtual {p0, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 43
    .local v0, "iKnowView":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSuccessActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 46
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x50

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 47
    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 48
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSuccessActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 31
    return-void
.end method
