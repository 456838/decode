.class final Lcom/xiaomi/account/ui/aI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/t;


# instance fields
.field final synthetic fx:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aI;->fx:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iA(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/aI;->fx:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    invoke-static {v0, v3}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->bf(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;Lcom/xiaomi/account/task/s;)Lcom/xiaomi/account/task/s;

    iget-object v0, p0, Lcom/xiaomi/account/ui/aI;->fx:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    const-string/jumbo v1, "passportapi"

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcom/xiaomi/passport/utils/o;->Ek(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/aI;->fx:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    const/16 v2, 0x2711

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public iB()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/aI;->fx:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->bf(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;Lcom/xiaomi/account/task/s;)Lcom/xiaomi/account/task/s;

    iget-object v0, p0, Lcom/xiaomi/account/ui/aI;->fx:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->bi(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;)V

    return-void
.end method

.method public iz(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/aI;->fx:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->bf(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;Lcom/xiaomi/account/task/s;)Lcom/xiaomi/account/task/s;

    iget-object v0, p0, Lcom/xiaomi/account/ui/aI;->fx:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
