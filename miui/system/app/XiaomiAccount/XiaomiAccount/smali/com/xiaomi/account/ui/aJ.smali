.class final Lcom/xiaomi/account/ui/aJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/i;


# instance fields
.field final synthetic fy:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aJ;->fy:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iC(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/aJ;->fy:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->be(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;Lcom/xiaomi/account/task/h;)Lcom/xiaomi/account/task/h;

    iget-object v0, p0, Lcom/xiaomi/account/ui/aJ;->fy:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public iD()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/aJ;->fy:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->be(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;Lcom/xiaomi/account/task/h;)Lcom/xiaomi/account/task/h;

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-string/jumbo v1, "user_detail_info"

    const-string/jumbo v2, "delete_phone_success"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/aJ;->fy:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    invoke-static {v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qr(Landroid/content/Context;)V

    return-void
.end method
