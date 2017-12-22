.class final Lcom/xiaomi/account/ui/ao;
.super Lcom/xiaomi/passport/uicontroller/l;
.source ""


# instance fields
.field final synthetic eU:Lcom/xiaomi/account/ui/an;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/an;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ao;->eU:Lcom/xiaomi/account/ui/an;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected ir(Lcom/xiaomi/passport/uicontroller/g;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/xiaomi/account/ui/ao;->eU:Lcom/xiaomi/account/ui/an;

    iget-object v0, v0, Lcom/xiaomi/account/ui/an;->eS:Lcom/xiaomi/account/ui/SetPasswordActivity;

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/SetPasswordActivity;->setResult(I)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/ao;->eU:Lcom/xiaomi/account/ui/an;

    iget-object v0, v0, Lcom/xiaomi/account/ui/an;->eS:Lcom/xiaomi/account/ui/SetPasswordActivity;

    invoke-static {v1, v2, v2}, Lcom/xiaomi/passport/utils/x;->FF(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/SetPasswordActivity;->em(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/ao;->eU:Lcom/xiaomi/account/ui/an;

    iget-object v0, v0, Lcom/xiaomi/account/ui/an;->eS:Lcom/xiaomi/account/ui/SetPasswordActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->finish()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/ao;->eU:Lcom/xiaomi/account/ui/an;

    iget-object v0, v0, Lcom/xiaomi/account/ui/an;->eS:Lcom/xiaomi/account/ui/SetPasswordActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->at(Lcom/xiaomi/account/ui/SetPasswordActivity;)V

    return-void
.end method
