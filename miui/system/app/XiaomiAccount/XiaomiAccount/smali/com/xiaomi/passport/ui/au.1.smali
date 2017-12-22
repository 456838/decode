.class final Lcom/xiaomi/passport/ui/au;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic un:Lcom/xiaomi/passport/ui/v;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/v;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/au;->un:Lcom/xiaomi/passport/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.account.action.XIAOMI_ACCOUNT_REG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/au;->un:Lcom/xiaomi/passport/ui/v;

    iget-object v1, v1, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/au;->un:Lcom/xiaomi/passport/ui/v;

    iget-object v1, v1, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/au;->un:Lcom/xiaomi/passport/ui/v;

    iget-object v1, v1, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/u;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/au;->un:Lcom/xiaomi/passport/ui/v;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/v;->rd:Lcom/xiaomi/passport/ui/u;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
