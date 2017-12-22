.class final Lcom/xiaomi/passport/widget/x;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic yY:Lcom/xiaomi/passport/widget/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/widget/p;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/widget/x;->yY:Lcom/xiaomi/passport/widget/p;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/x;->yY:Lcom/xiaomi/passport/widget/p;

    invoke-static {v0}, Lcom/xiaomi/passport/widget/p;->Bg(Lcom/xiaomi/passport/widget/p;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/x;->yY:Lcom/xiaomi/passport/widget/p;

    invoke-static {v1}, Lcom/xiaomi/passport/widget/p;->Bg(Lcom/xiaomi/passport/widget/p;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/passport/widget/x;->yY:Lcom/xiaomi/passport/widget/p;

    invoke-static {v2}, Lcom/xiaomi/passport/widget/p;->Bh(Lcom/xiaomi/passport/widget/p;)Ljava/text/NumberFormat;

    move-result-object v2

    if-eqz v2, :cond_1

    int-to-double v2, v0

    int-to-double v0, v1

    div-double/2addr v2, v0

    const/4 v0, 0x0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/passport/widget/x;->yY:Lcom/xiaomi/passport/widget/p;

    invoke-static {v4}, Lcom/xiaomi/passport/widget/p;->Bf(Lcom/xiaomi/passport/widget/p;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/x;->yY:Lcom/xiaomi/passport/widget/p;

    invoke-static {v0}, Lcom/xiaomi/passport/widget/p;->Bf(Lcom/xiaomi/passport/widget/p;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v4, p0, Lcom/xiaomi/passport/widget/x;->yY:Lcom/xiaomi/passport/widget/p;

    invoke-static {v4}, Lcom/xiaomi/passport/widget/p;->Bf(Lcom/xiaomi/passport/widget/p;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    iget-object v4, p0, Lcom/xiaomi/passport/widget/x;->yY:Lcom/xiaomi/passport/widget/p;

    invoke-static {v4}, Lcom/xiaomi/passport/widget/p;->Bh(Lcom/xiaomi/passport/widget/p;)Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/xiaomi/passport/widget/x;->yY:Lcom/xiaomi/passport/widget/p;

    invoke-virtual {v4}, Lcom/xiaomi/passport/widget/p;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    const/16 v4, 0x22

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/x;->yY:Lcom/xiaomi/passport/widget/p;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/p;->Bb(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
