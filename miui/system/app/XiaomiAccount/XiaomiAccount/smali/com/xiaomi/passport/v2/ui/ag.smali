.class final Lcom/xiaomi/passport/v2/ui/ag;
.super Landroid/os/CountDownTimer;
.source ""


# instance fields
.field final synthetic FF:Lcom/xiaomi/passport/v2/ui/h;

.field final synthetic FG:Lcom/xiaomi/passport/ui/C;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/h;JJLcom/xiaomi/passport/ui/C;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/ag;->FF:Lcom/xiaomi/passport/v2/ui/h;

    iput-object p6, p0, Lcom/xiaomi/passport/v2/ui/ag;->FG:Lcom/xiaomi/passport/ui/C;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ag;->FG:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ag;->FG:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ag;->FG:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ag;->FF:Lcom/xiaomi/passport/v2/ui/h;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/h;->Kg(Lcom/xiaomi/passport/v2/ui/h;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ag;->FG:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
