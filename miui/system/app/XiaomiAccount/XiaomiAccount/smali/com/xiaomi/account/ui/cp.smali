.class final Lcom/xiaomi/account/ui/cp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/t;


# instance fields
.field final synthetic hP:Lcom/xiaomi/account/ui/U;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/U;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/cp;->hP:Lcom/xiaomi/account/ui/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iA(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/cp;->hP:Lcom/xiaomi/account/ui/U;

    invoke-static {v0, v3}, Lcom/xiaomi/account/ui/U;->hX(Lcom/xiaomi/account/ui/U;Lcom/xiaomi/account/task/s;)Lcom/xiaomi/account/task/s;

    iget-object v0, p0, Lcom/xiaomi/account/ui/cp;->hP:Lcom/xiaomi/account/ui/U;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "passportapi"

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcom/xiaomi/passport/utils/o;->Ek(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/cp;->hP:Lcom/xiaomi/account/ui/U;

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/account/ui/U;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public iB()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/cp;->hP:Lcom/xiaomi/account/ui/U;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/U;->hX(Lcom/xiaomi/account/ui/U;Lcom/xiaomi/account/task/s;)Lcom/xiaomi/account/task/s;

    iget-object v0, p0, Lcom/xiaomi/account/ui/cp;->hP:Lcom/xiaomi/account/ui/U;

    iget-object v1, p0, Lcom/xiaomi/account/ui/cp;->hP:Lcom/xiaomi/account/ui/U;

    invoke-static {v1}, Lcom/xiaomi/account/ui/U;->hW(Lcom/xiaomi/account/ui/U;)Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/U;->ia(Lcom/xiaomi/account/ui/U;Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V

    return-void
.end method

.method public iz(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/cp;->hP:Lcom/xiaomi/account/ui/U;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/U;->hX(Lcom/xiaomi/account/ui/U;Lcom/xiaomi/account/task/s;)Lcom/xiaomi/account/task/s;

    iget-object v0, p0, Lcom/xiaomi/account/ui/cp;->hP:Lcom/xiaomi/account/ui/U;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
