.class final Lcom/xiaomi/account/ui/aO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic fD:Lcom/xiaomi/account/ui/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/m;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aO;->fD:Lcom/xiaomi/account/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/aO;->fD:Lcom/xiaomi/account/ui/m;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "extra_sns_type"

    iget-object v2, p0, Lcom/xiaomi/account/ui/aO;->fD:Lcom/xiaomi/account/ui/m;

    invoke-static {v2}, Lcom/xiaomi/account/ui/m;->bw(Lcom/xiaomi/account/ui/m;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "extra_show_sns_account_after_binding_success"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/xiaomi/account/ui/aO;->fD:Lcom/xiaomi/account/ui/m;

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/ui/m;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
