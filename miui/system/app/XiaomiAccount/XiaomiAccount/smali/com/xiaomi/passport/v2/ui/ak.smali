.class final Lcom/xiaomi/passport/v2/ui/ak;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic FQ:Lcom/xiaomi/passport/v2/ui/j;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/j;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/ak;->FQ:Lcom/xiaomi/passport/v2/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ak;->FQ:Lcom/xiaomi/passport/v2/ui/j;

    invoke-virtual {v0}, Lcom/xiaomi/passport/v2/ui/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/ak;->FQ:Lcom/xiaomi/passport/v2/ui/j;

    invoke-static {v1}, Lcom/xiaomi/passport/v2/ui/j;->Kn(Lcom/xiaomi/passport/v2/ui/j;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/ui/LicenseActivity;->xY(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/ak;->FQ:Lcom/xiaomi/passport/v2/ui/j;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/v2/ui/j;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
