.class final Lcom/xiaomi/passport/ui/aa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic tJ:Lcom/xiaomi/passport/ui/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/k;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aa;->tJ:Lcom/xiaomi/passport/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aa;->tJ:Lcom/xiaomi/passport/ui/k;

    const-string/jumbo v1, "email_reg_success_but_unactivated"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/k;->tP(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.xiaomi.account.action.XIAOMI_ACCOUNT_UNACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aa;->tJ:Lcom/xiaomi/passport/ui/k;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/k;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aa;->tJ:Lcom/xiaomi/passport/ui/k;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aa;->tJ:Lcom/xiaomi/passport/ui/k;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/k;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aa;->tJ:Lcom/xiaomi/passport/ui/k;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/k;->tF()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aa;->tJ:Lcom/xiaomi/passport/ui/k;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
