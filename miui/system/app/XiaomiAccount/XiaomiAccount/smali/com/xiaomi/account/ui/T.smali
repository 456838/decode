.class Lcom/xiaomi/account/ui/T;
.super Lcom/xiaomi/account/task/c;
.source ""


# instance fields
.field final synthetic ef:Lcom/xiaomi/account/ui/S;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/ui/S;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/xiaomi/account/ui/T;->ef:Lcom/xiaomi/account/ui/S;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/account/task/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected hG(Lcom/xiaomi/account/task/d;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/account/task/c;->onCancelled(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/T;->ef:Lcom/xiaomi/account/ui/S;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/S;->hC(Lcom/xiaomi/account/ui/S;Lcom/xiaomi/account/ui/T;)Lcom/xiaomi/account/ui/T;

    return-void
.end method

.method protected hH(Lcom/xiaomi/account/task/d;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/T;->ef:Lcom/xiaomi/account/ui/S;

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/S;->hC(Lcom/xiaomi/account/ui/S;Lcom/xiaomi/account/ui/T;)Lcom/xiaomi/account/ui/T;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/xiaomi/account/task/d;->iE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/T;->ef:Lcom/xiaomi/account/ui/S;

    invoke-static {v0}, Lcom/xiaomi/account/ui/S;->hA(Lcom/xiaomi/account/ui/S;)Lcom/xiaomi/passport/ui/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/accountsdk/account/c;->VQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaomi/account/task/d;->iE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/h;->tn(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/T;->ef:Lcom/xiaomi/account/ui/S;

    invoke-static {v0}, Lcom/xiaomi/account/ui/S;->hA(Lcom/xiaomi/account/ui/S;)Lcom/xiaomi/passport/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/h;->dismiss()V

    iget v0, p1, Lcom/xiaomi/account/task/d;->iF:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/T;->ef:Lcom/xiaomi/account/ui/S;

    invoke-static {v0}, Lcom/xiaomi/account/ui/S;->hF(Lcom/xiaomi/account/ui/S;)V

    return-void

    :cond_2
    new-instance v0, Lcom/xiaomi/account/data/d;

    iget v1, p1, Lcom/xiaomi/account/task/d;->iF:I

    invoke-direct {v0, v1}, Lcom/xiaomi/account/data/d;-><init>(I)V

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lP()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lQ()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/account/ui/T;->ef:Lcom/xiaomi/account/ui/S;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/S;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    const v0, 0x7f0c0133

    iget-object v1, p0, Lcom/xiaomi/account/ui/T;->ef:Lcom/xiaomi/account/ui/S;

    iget-object v2, p0, Lcom/xiaomi/account/ui/T;->ef:Lcom/xiaomi/account/ui/S;

    invoke-static {v2}, Lcom/xiaomi/account/ui/S;->hB(Lcom/xiaomi/account/ui/S;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaomi/account/ui/S;->hE(Lcom/xiaomi/account/ui/S;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/task/d;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/T;->hG(Lcom/xiaomi/account/task/d;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/task/d;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/T;->hH(Lcom/xiaomi/account/task/d;)V

    return-void
.end method
