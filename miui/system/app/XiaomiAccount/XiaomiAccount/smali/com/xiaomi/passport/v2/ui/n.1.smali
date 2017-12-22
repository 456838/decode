.class public Lcom/xiaomi/passport/v2/ui/n;
.super Lcom/xiaomi/passport/ui/x;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/x;-><init>()V

    return-void
.end method

.method public static Kz(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/passport/v2/ui/n;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "account_password"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/passport/v2/ui/n;

    invoke-direct {v1}, Lcom/xiaomi/passport/v2/ui/n;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/v2/ui/n;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SendSetPwdTicketFragment"

    return-object v0
.end method

.method public gG(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/v2/ui/o;

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/n;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "account_password"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/xiaomi/passport/v2/ui/o;->ah(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public gI(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/v2/ui/o;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/v2/ui/o;->ai(Lcom/xiaomi/passport/v2/ui/p;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/xiaomi/passport/ui/x;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/n;->ry:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/n;->ry:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    return-void
.end method
