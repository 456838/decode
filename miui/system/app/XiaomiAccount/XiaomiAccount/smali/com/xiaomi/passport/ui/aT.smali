.class final Lcom/xiaomi/passport/ui/aT;
.super Lcom/xiaomi/passport/uicontroller/l;
.source ""


# instance fields
.field final synthetic va:Lcom/xiaomi/passport/ui/NotificationActivity;

.field final synthetic vb:Lcom/xiaomi/accountsdk/account/data/AccountInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/NotificationActivity;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aT;->va:Lcom/xiaomi/passport/ui/NotificationActivity;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/aT;->vb:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected ir(Lcom/xiaomi/passport/uicontroller/g;)V
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aT;->vb:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->VA()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aT;->vb:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vy()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/account/data/u;->Ya(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/u;->Yb()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aT;->va:Lcom/xiaomi/passport/ui/NotificationActivity;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/aT;->vb:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Lcom/xiaomi/passport/utils/x;->FF(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/passport/ui/NotificationActivity;->wZ(Lcom/xiaomi/passport/ui/NotificationActivity;Landroid/os/Bundle;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "extra_user_id"

    iget-object v3, p0, Lcom/xiaomi/passport/ui/aT;->vb:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "extra_authtoken"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aT;->va:Lcom/xiaomi/passport/ui/NotificationActivity;

    invoke-virtual {v0, v4, v1}, Lcom/xiaomi/passport/ui/NotificationActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aT;->va:Lcom/xiaomi/passport/ui/NotificationActivity;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/NotificationActivity;->finish()V

    return-void
.end method
