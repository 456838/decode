.class final Lcom/xiaomi/passport/v2/ui/am;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic FZ:Lcom/xiaomi/passport/v2/ui/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/k;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/am;->FZ:Lcom/xiaomi/passport/v2/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/am;->FZ:Lcom/xiaomi/passport/v2/ui/k;

    invoke-virtual {v0}, Lcom/xiaomi/passport/v2/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/am;->FZ:Lcom/xiaomi/passport/v2/ui/k;

    invoke-static {v1}, Lcom/xiaomi/passport/v2/ui/k;->Kt(Lcom/xiaomi/passport/v2/ui/k;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/ui/LicenseActivity;->xY(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/am;->FZ:Lcom/xiaomi/passport/v2/ui/k;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/v2/ui/k;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
