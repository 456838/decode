.class final Lcom/xiaomi/passport/ui/aU;
.super Lcom/xiaomi/passport/uicontroller/k;
.source ""


# instance fields
.field final synthetic vc:Lcom/xiaomi/passport/ui/NotificationActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/NotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aU;->vc:Lcom/xiaomi/passport/ui/NotificationActivity;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected yF(Lcom/xiaomi/passport/uicontroller/f;)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "notification_auth_end"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aU;->vc:Lcom/xiaomi/passport/ui/NotificationActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/passport/ui/NotificationActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aU;->vc:Lcom/xiaomi/passport/ui/NotificationActivity;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/NotificationActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aU;->vc:Lcom/xiaomi/passport/ui/NotificationActivity;

    invoke-static {v0, v3}, Lcom/xiaomi/passport/ui/NotificationActivity;->wX(Lcom/xiaomi/passport/ui/NotificationActivity;Lcom/xiaomi/passport/uicontroller/f;)Lcom/xiaomi/passport/uicontroller/f;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aU;->vc:Lcom/xiaomi/passport/ui/NotificationActivity;

    invoke-static {v0, v3}, Lcom/xiaomi/passport/ui/NotificationActivity;->wX(Lcom/xiaomi/passport/ui/NotificationActivity;Lcom/xiaomi/passport/uicontroller/f;)Lcom/xiaomi/passport/uicontroller/f;

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aU;->vc:Lcom/xiaomi/passport/ui/NotificationActivity;

    invoke-static {v0, v3}, Lcom/xiaomi/passport/ui/NotificationActivity;->wX(Lcom/xiaomi/passport/ui/NotificationActivity;Lcom/xiaomi/passport/uicontroller/f;)Lcom/xiaomi/passport/uicontroller/f;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aU;->vc:Lcom/xiaomi/passport/ui/NotificationActivity;

    invoke-static {v1, v3}, Lcom/xiaomi/passport/ui/NotificationActivity;->wX(Lcom/xiaomi/passport/ui/NotificationActivity;Lcom/xiaomi/passport/uicontroller/f;)Lcom/xiaomi/passport/uicontroller/f;

    throw v0
.end method
