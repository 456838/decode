.class final Lcom/xiaomi/passport/ui/Y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic tF:Lcom/xiaomi/passport/ui/j;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/j;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/Y;->tF:Lcom/xiaomi/passport/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/Y;->tF:Lcom/xiaomi/passport/ui/j;

    invoke-virtual {v0, p3}, Lcom/xiaomi/passport/ui/j;->getItem(I)Lcom/xiaomi/passport/utils/k;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "country_iso"

    iget-object v0, v0, Lcom/xiaomi/passport/utils/k;->zY:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/Y;->tF:Lcom/xiaomi/passport/ui/j;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/j;->ph:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/Y;->tF:Lcom/xiaomi/passport/ui/j;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/j;->ph:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
