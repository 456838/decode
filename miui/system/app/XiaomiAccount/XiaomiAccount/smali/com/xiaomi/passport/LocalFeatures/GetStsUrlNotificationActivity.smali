.class public Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;
.super Lcom/xiaomi/passport/ui/NotificationActivity;
.source ""


# instance fields
.field private Cw:Lcom/xiaomi/passport/ui/E;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/NotificationActivity;-><init>()V

    return-void
.end method

.method public static HA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/S;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/xiaomi/passport/uicontroller/S;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lcom/xiaomi/passport/uicontroller/R;->NG(Landroid/content/Intent;Lcom/xiaomi/passport/uicontroller/S;)V

    const-string/jumbo v1, "service_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/F;->ajd()Lcom/xiaomi/accountsdk/utils/F;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/accountsdk/utils/F;->ajg(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public HB(Lcom/xiaomi/passport/data/d;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/data/d;->yR()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "sts_url"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->finish()V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->finish()V

    return-void
.end method

.method protected Hz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->Cw:Lcom/xiaomi/passport/ui/E;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->Cw:Lcom/xiaomi/passport/ui/E;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/E;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/LocalFeatures/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/passport/LocalFeatures/a;-><init>(Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->Cw:Lcom/xiaomi/passport/ui/E;

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->Cw:Lcom/xiaomi/passport/ui/E;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/E;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->Cw:Lcom/xiaomi/passport/ui/E;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->Cw:Lcom/xiaomi/passport/ui/E;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/E;->cancel(Z)Z

    iput-object v2, p0, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->Cw:Lcom/xiaomi/passport/ui/E;

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/passport/ui/NotificationActivity;->onDestroy()V

    return-void
.end method

.method protected wT(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "service_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->Hz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected wV()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->finish()V

    return-void
.end method
