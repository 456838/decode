.class final Lcom/xiaomi/passport/v2/ui/ah;
.super Landroid/os/CountDownTimer;
.source ""


# instance fields
.field final synthetic FH:Lcom/xiaomi/passport/v2/ui/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/h;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/ah;->FH:Lcom/xiaomi/passport/v2/ui/h;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ah;->FH:Lcom/xiaomi/passport/v2/ui/h;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/h;->Kf(Lcom/xiaomi/passport/v2/ui/h;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/ah;->FH:Lcom/xiaomi/passport/v2/ui/h;

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/v2/ui/h;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ah;->FH:Lcom/xiaomi/passport/v2/ui/h;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/h;->Kf(Lcom/xiaomi/passport/v2/ui/h;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ah;->FH:Lcom/xiaomi/passport/v2/ui/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/h;->Ki(Lcom/xiaomi/passport/v2/ui/h;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    return-void
.end method

.method public onTick(J)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ah;->FH:Lcom/xiaomi/passport/v2/ui/h;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/h;->Kf(Lcom/xiaomi/passport/v2/ui/h;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/ah;->FH:Lcom/xiaomi/passport/v2/ui/h;

    const v3, 0x7f0c001d

    invoke-virtual {v2, v3}, Lcom/xiaomi/passport/v2/ui/h;->getString(I)Ljava/lang/String;

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

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
