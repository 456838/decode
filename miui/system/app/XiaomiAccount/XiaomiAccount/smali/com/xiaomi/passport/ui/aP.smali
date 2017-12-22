.class final Lcom/xiaomi/passport/ui/aP;
.super Lcom/xiaomi/passport/ui/z;
.source ""


# instance fields
.field final synthetic uV:Lcom/xiaomi/passport/ui/x;

.field final synthetic uW:Lcom/xiaomi/passport/ui/C;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/x;Lcom/xiaomi/passport/ui/x;JJLcom/xiaomi/passport/ui/C;)V
    .locals 7

    iput-object p2, p0, Lcom/xiaomi/passport/ui/aP;->uV:Lcom/xiaomi/passport/ui/x;

    iput-object p7, p0, Lcom/xiaomi/passport/ui/aP;->uW:Lcom/xiaomi/passport/ui/C;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/ui/z;-><init>(Lcom/xiaomi/passport/ui/x;JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aP;->uW:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aP;->uW:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aP;->uW:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/aP;->uV:Lcom/xiaomi/passport/ui/x;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/ui/x;->wG(Lcom/xiaomi/passport/ui/x;Lcom/xiaomi/passport/ui/z;)Lcom/xiaomi/passport/ui/z;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/aP;->uW:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method

.method public wL()V
    .locals 0

    invoke-super {p0}, Lcom/xiaomi/passport/ui/z;->wL()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/aP;->onFinish()V

    return-void
.end method
