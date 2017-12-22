.class final Lcom/xiaomi/passport/ui/aQ;
.super Lcom/xiaomi/passport/ui/z;
.source ""


# instance fields
.field final synthetic uX:Lcom/xiaomi/passport/ui/x;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/x;Lcom/xiaomi/passport/ui/x;JJ)V
    .locals 7

    iput-object p2, p0, Lcom/xiaomi/passport/ui/aQ;->uX:Lcom/xiaomi/passport/ui/x;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/ui/z;-><init>(Lcom/xiaomi/passport/ui/x;JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aQ;->uX:Lcom/xiaomi/passport/ui/x;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/x;->wE(Lcom/xiaomi/passport/ui/x;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aQ;->uX:Lcom/xiaomi/passport/ui/x;

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/ui/x;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aQ;->uX:Lcom/xiaomi/passport/ui/x;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/x;->wE(Lcom/xiaomi/passport/ui/x;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aQ;->uX:Lcom/xiaomi/passport/ui/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/passport/ui/x;->wH(Lcom/xiaomi/passport/ui/x;Lcom/xiaomi/passport/ui/z;)Lcom/xiaomi/passport/ui/z;

    return-void
.end method

.method public onTick(J)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aQ;->uX:Lcom/xiaomi/passport/ui/x;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/x;->wE(Lcom/xiaomi/passport/ui/x;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/passport/ui/aQ;->uX:Lcom/xiaomi/passport/ui/x;

    const v3, 0x7f0c001d

    invoke-virtual {v2, v3}, Lcom/xiaomi/passport/ui/x;->getString(I)Ljava/lang/String;

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

.method public wL()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/passport/ui/z;->wL()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aQ;->uX:Lcom/xiaomi/passport/ui/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/passport/ui/x;->wH(Lcom/xiaomi/passport/ui/x;Lcom/xiaomi/passport/ui/z;)Lcom/xiaomi/passport/ui/z;

    return-void
.end method
