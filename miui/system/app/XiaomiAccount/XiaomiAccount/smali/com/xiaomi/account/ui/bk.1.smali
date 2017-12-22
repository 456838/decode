.class final Lcom/xiaomi/account/ui/bk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gs:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bk;->gs:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "list_position_param"

    iget-object v2, p0, Lcom/xiaomi/account/ui/bk;->gs:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    invoke-static {v2}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->dp(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bk;->gs:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/bk;->gs:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->finish()V

    return-void
.end method
