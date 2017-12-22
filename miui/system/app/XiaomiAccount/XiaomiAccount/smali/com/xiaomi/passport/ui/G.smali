.class final Lcom/xiaomi/passport/ui/G;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic sU:Lcom/xiaomi/passport/ui/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/G;->sU:Lcom/xiaomi/passport/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/passport/data/e;->yY(Lcom/xiaomi/passport/data/f;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/G;->sU:Lcom/xiaomi/passport/ui/b;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/G;->sU:Lcom/xiaomi/passport/ui/b;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.xiaomi.account.action.XIAOMI_ACCOUNT_LOGIN"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/r;->EB(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/G;->sU:Lcom/xiaomi/passport/ui/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/b;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/G;->sU:Lcom/xiaomi/passport/ui/b;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
