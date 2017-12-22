.class final Lcom/xiaomi/passport/ui/H;
.super Landroid/os/CountDownTimer;
.source ""


# instance fields
.field final synthetic sV:Lcom/xiaomi/passport/ui/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/b;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/H;->sV:Lcom/xiaomi/passport/ui/b;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/H;->sV:Lcom/xiaomi/passport/ui/b;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/b;->sG(Lcom/xiaomi/passport/ui/b;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c003b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/H;->sV:Lcom/xiaomi/passport/ui/b;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/b;->sG(Lcom/xiaomi/passport/ui/b;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/passport/ui/H;->sV:Lcom/xiaomi/passport/ui/b;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/b;->sG(Lcom/xiaomi/passport/ui/b;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/passport/ui/H;->sV:Lcom/xiaomi/passport/ui/b;

    const v3, 0x7f0c003b

    invoke-virtual {v2, v3}, Lcom/xiaomi/passport/ui/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
