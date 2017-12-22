.class final Lcom/xiaomi/passport/ui/ae;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic tR:Lcom/xiaomi/passport/ui/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/k;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/ae;->tR:Lcom/xiaomi/passport/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.account.action.XIAOMI_ACCOUNT_LOGIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/ae;->tR:Lcom/xiaomi/passport/ui/k;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/ae;->tR:Lcom/xiaomi/passport/ui/k;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/ae;->tR:Lcom/xiaomi/passport/ui/k;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
